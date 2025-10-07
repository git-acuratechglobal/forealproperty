import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_provider.dart';
import 'package:intl/intl.dart';

import '../../../../../common/common_widgets.dart';
import '../../../../../core/utils/appbutton.dart';
import '../../../../home_features/pages/home/openhouse/addopenhomes.dart';
import '../../../model/inspection_details_model.dart';
import '../../../provider/inspection_details_provider.dart';

class AdditionalScreen extends ConsumerStatefulWidget {
  const AdditionalScreen(
      {super.key, required this.utilitiesDetails, required this.inspectionId});
  final InspectionComplianceUtilitiesDetails? utilitiesDetails;
  final int inspectionId;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AdditionalScreenState();
}

class _AdditionalScreenState extends ConsumerState<AdditionalScreen> {
  @override
  Widget build(BuildContext context) {
    final params = ref.read(inspectionComplianceParamProvider.notifier);
    final additional = widget.utilitiesDetails;
    return PopScope(
      onPopInvokedWithResult: (result, obj) {
        ref.invalidate(
            getInspectionDetailsProvider(inspectionId: widget.inspectionId));
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Additional'),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        backgroundColor: const Color(0xFFEBF3F5),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Agent Additional Comments on Minimum Standard, Health Issues, smoke alarms, other safety issues, communication facilities, water usage charging and efficiency devices',
                style: TextStyle(
                  color: const Color(0xFF1A1B28),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              12.verticalSpace,
              CommonTextField(
                initialValue: additional?.additionalComments,
                label: 'Write additional comment...',
                maxLines: 4,
                onChanged: (val) {
                  params.update(
                    (p) => p.copyWith(AdditionalComments: val),
                  );
                },
              ),
              24.verticalSpace,
              Text(
                'WORK LAST DONE',
                style: TextStyle(
                  color: const Color(0xFF164C63),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              16.verticalSpace,
              Text(
                'Date of Installation, repair or maintenance of smoke alarm',
                style: TextStyle(
                  color: const Color(0xFF1A1B28),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              12.verticalSpace,
              DatePickerDropdown2(
                  validator: (value) => value == null || value.trim().isEmpty
                      ? 'This field is required'
                      : null,
                  selectedDate: additional?.smokeAlaramLastDate,
                  onDateSelected: (date) {
                    params.update(
                      (p) => p.copyWith(LastDateInstalledSmokeAlarms: date),
                    );
                  }),
              16.verticalSpace,
              Text(
                'Date of painting of premises (external)',
                style: TextStyle(
                  color: const Color(0xFF1A1B28),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              12.verticalSpace,
              DatePickerDropdown2(
                  validator: (value) => value == null || value.trim().isEmpty
                      ? 'This field is required'
                      : null,
                  selectedDate: additional?.lastDatePaintingExternalDate,
                  onDateSelected: (date) {
                    params.update(
                      (p) => p.copyWith(LastDatePaintingExternal: date),
                    );
                  }),
              16.verticalSpace,
              Text(
                'Date of painting of premises (Internal)',
                style: TextStyle(
                  color: const Color(0xFF1A1B28),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              12.verticalSpace,
              DatePickerDropdown2(
                  validator: (value) => value == null || value.trim().isEmpty
                      ? 'This field is required'
                      : null,
                  selectedDate: additional?.lastDatePaintingInternalDate,
                  onDateSelected: (date) {
                    params.update(
                      (p) => p.copyWith(LastDatePaintingInternal: date),
                    );
                  }),
              16.verticalSpace,
              Text(
                'Date of flooring laid/replaced/cleaned',
                style: TextStyle(
                  color: const Color(0xFF1A1B28),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              12.verticalSpace,
              DatePickerDropdown2(
                  validator: (value) => value == null || value.trim().isEmpty
                      ? 'This field is required'
                      : null,
                  selectedDate: additional?.lastDateFloorCleanedDate,
                  onDateSelected: (date) {
                    params.update(
                      (p) => p.copyWith(LastDateFloorCleaned: date),
                    );
                  }),
              16.verticalSpace,
              Text(
                'Landlord’s promise to undertake work',
                style: TextStyle(
                  color: const Color(0xFF1A1B28),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              12.verticalSpace,
              CommonTextField(
                initialValue:
                    additional?.landLordWorkDoneNote?.isNotEmpty == true
                        ? additional!.landLordWorkDoneNote![0]
                        : '',
                label: 'Write promise...',
                maxLines: 4,
                onChanged: (val) {
                  params.update(
                    (p) => p.copyWith(LandLordWorkDoneNote: [val]),
                  );
                },
              ),
              16.verticalSpace,
              Text(
                'Landlord agrees to complete that work by',
                style: TextStyle(
                  color: const Color(0xFF1A1B28),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              12.verticalSpace,
              DatePickerDropdown2(
                  validator: (value) => value == null || value.trim().isEmpty
                      ? 'This field is required'
                      : null,
                  selectedDate: additional?.tenantReceivedOnDate,
                  onDateSelected: (date) {
                    final value = DateFormat('dd-MM-yyyy').format(date!);
                    params.update(
                      (p) => p.copyWith(LandLordWorkDoneBy: [value]),
                    );
                  }),
              24.verticalSpace,
              PrimaryButton(
                isLoading: ref.watch(inspectionNotifierProvider).isLoading,
                title: 'Update',
                onClick: () {
                  ref
                      .read(inspectionNotifierProvider.notifier)
                      .updateCompliance();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DatePickerDropdown extends StatefulWidget {
  final String? selectedDate; // Format: yyyy-MM-dd
  final void Function(String?) onDateSelected;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String hintText;
  final String? Function(String?)? validator;

  const DatePickerDropdown({
    Key? key,
    this.selectedDate,
    required this.onDateSelected,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.hintText = 'Choose Date',
  }) : super(key: key);

  @override
  State<DatePickerDropdown> createState() => _DatePickerDropdownState();
}

class _DatePickerDropdownState extends State<DatePickerDropdown> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.selectedDate != null
          ? DateFormat('MM-dd-yyyy')
              .format(DateFormat('yyyy-MM-dd').parse(widget.selectedDate!))
          : '',
    );
  }

  @override
  void didUpdateWidget(covariant DatePickerDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedDate != widget.selectedDate) {
      // 👇 FIX: Update text after current build completes
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        _controller.text = widget.selectedDate != null
            ? DateFormat('MM-dd-yyyy')
                .format(DateFormat('yyyy-MM-dd').parse(widget.selectedDate!))
            : '';
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      readOnly: true,
      onTap: () async {
        DateTime now = DateTime.now();
        DateTime initialDate = widget.selectedDate != null
            ? DateFormat('yyyy-MM-dd').parse(widget.selectedDate!)
            : now;

        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: initialDate,
          firstDate: DateTime(now.year, now.month, now.day),
          lastDate: DateTime(2100),
        );

        if (pickedDate != null) {
          final formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          widget.onDateSelected(formattedDate);
          widget.onChanged?.call(formattedDate);
        }
      },
      controller: _controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: const Color(0xFFB9B9B9),
            ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      ),
      style: TextStyle(
          color: widget.selectedDate == null ? Colors.grey : Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w400),
      onSaved: widget.onSaved,
    );
  }
}
