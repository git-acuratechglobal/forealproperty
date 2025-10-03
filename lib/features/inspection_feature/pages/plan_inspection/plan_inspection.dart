import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/utils/appsnackbar.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:foreal_property/features/home_features/models/get_property_listing_model.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/addopenhomes.dart';
import 'package:foreal_property/features/inspection_feature/pages/plan_inspection/plan_inspection_time_duration.dart';
import 'package:foreal_property/features/inspection_feature/provider/get_property_for_plan_inspection.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_details_provider.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_provider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../model/active_agent_model.dart';
import '../../model/property_address_model.dart';

class PlanInspection extends ConsumerStatefulWidget {
  const PlanInspection({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PlanInspectionState();
}

class _PlanInspectionState extends ConsumerState<PlanInspection> {
  PropertyListingList? selectedProperty;

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-33.8688, 151.2093),
    zoom: 10.4746,
  );

  final List<String> propertyOptions = ['Routine', 'Entry', 'Exit'];

  String? startDate;
  String? endDate;
  String? startDate1;
  String? endDate1;
  String? selectedValue;
  ActiveAgentModel? selectedAgent;
  String? selectedDate;
  late GoogleMapController mapController;
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  List<PlanInspectionModel> addedProperty = [];
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final propertyList = ref.watch(getPropertyForInspectionProvider);
    final updateParam = ref.read(planInspectionParamProvider.notifier);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Plan Inspection'),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        backgroundColor: const Color(0XFFf2f6f7),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: AsyncWidget(
                value: propertyList,
                data: (data) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SubHeadingText(
                        text: 'Report Type',
                      ),
                      12.verticalSpace,
                      WidgetDropdown(
                        propertyOptions: propertyOptions,
                        selectedValue: selectedValue,
                        onChanged: (String? value) {
                          if (value != null) {
                            final index = propertyOptions.indexOf(value);
                            if (index != -1) {
                              // setState(() {
                              selectedValue = value;
                              // });
                              updateParam.updateParam(
                                  (e) => e.copyWith(InspectionType: index + 1));
                            }
                          }
                        },
                        hintText: 'Select Report Type',
                        validator: (val){
                          if(val==null||val.isEmpty){
                            return 'Field is required';
                          }
                          return null;
                        },
                      ),
                      16.verticalSpace,
                      const SubHeadingText(
                        text: 'Ispection Due Between',
                      ),
                      12.verticalSpace,
                      DatePickerDropdown(
                        validator: (value) =>
                            value == null || value.trim().isEmpty
                                ? 'Field is required'
                                : null,
                        selectedDate: selectedDate,
                        onDateSelected: (date) {
                          selectedDate = date;
                          print("Selected Date: $date");
                          if (selectedDate != null) {
                            DateFormat format = DateFormat("dd-MM-yyyy");
                            final dateTime = format.parse(selectedDate!);
                            updateParam.updateParam(
                                (e) => e.copyWith(InspectionDate: dateTime));
                          }
                        },
                        hintText: 'mm-dd-yyyy',
                      ),
                      16.verticalSpace,
                      const SubHeadingText(
                        text: 'Property Manager or Team',
                      ),
                      12.verticalSpace,
                      AsyncWidget(
                          value: ref.watch(
                              getActiveAgentProvider(agencyId: "ba137a8612994")),
                          data: (agentList) {
                            return DynamicWidgetDropdown<ActiveAgentModel>(
                              propertyOptions: agentList,
                              selectedValue: selectedAgent,
                              onChanged: (ActiveAgentModel? value) {
                                if (value != null) {
                                  selectedAgent = value;
                                  updateParam.updateParam((e) => e.copyWith(
                                      AssignedAgent:
                                          int.parse(value.value ?? '')));
                                }
                              },
                              hintText: 'Assigned To',
                              displayText: (ActiveAgentModel value) =>
                                  value.text ?? '',
                              validator: (val){
                                if(val==null){
                                  return 'Field is required';
                                }
                                return null;
                              },
                            );
                          }),
                      16.verticalSpace,
                      const SubHeadingText(
                        text: 'Inspection Due Between',
                      ),
                      12.verticalSpace,
                      DateRangePicker(
                        startDate: startDate,
                        endDate: endDate,
                        onRangeSelected: (start, end) {
                          setState(() {
                            startDate = start;
                            endDate = end;
                          });
                        },
                        // validator: (val){
                        //   if(val==null||val.isEmpty){
                        //     return 'Field is required';
                        //   }
                        //   return null;
                        // },
                      ),
                      16.verticalSpace,
                      const SubHeadingText(
                        text: 'Aggrement Ending Between',
                      ),
                      12.verticalSpace,
                      DateRangePicker(
                        startDate: startDate1,
                        endDate: endDate1,
                        onRangeSelected: (start, end) {
                          setState(() {
                            startDate1 = start;
                            endDate1 = end;
                          });
                        },
                        // validator: (val){
                        //   if(val==null||val.isEmpty){
                        //     return 'Field is required';
                        //   }
                        //   return null;
                        // },
                      ),
                      16.verticalSpace,
                      Text(
                        'Click Properties on map to select them',
                        style: TextStyle(
                            color: const Color(0XFF7d8089),
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      12.verticalSpace,
                      SizedBox(
                        height: 500,
                        child: GoogleMap(
                      myLocationButtonEnabled: false,
                          initialCameraPosition: _kGooglePlex,
                          mapType: MapType.normal,
                          onMapCreated: _onMapCreated,
                          markers: data
                              .where((p) => p.lat != null && p.lng != null)
                              .map(
                                (p) => Marker(
                                    markerId: MarkerId(p.id.toString()),
                                    position: LatLng(p.lat!, p.lng!),
                                    infoWindow: InfoWindow(title: p.address),
                                    onTap: () {
                                      if (!addedProperty.contains(p)) {
                                       setState(() {
                                         addedProperty.add(p);
                                       });
                                      }
                                    }),
                              )
                              .toSet(),
                          gestureRecognizers: <Factory<
                              OneSequenceGestureRecognizer>>{
                            Factory<PanGestureRecognizer>(
                                () => PanGestureRecognizer()),
                            Factory<VerticalDragGestureRecognizer>(
                                () => VerticalDragGestureRecognizer()),
                            Factory<HorizontalDragGestureRecognizer>(
                                () => HorizontalDragGestureRecognizer()),
                            Factory<ScaleGestureRecognizer>(
                                () => ScaleGestureRecognizer()),
                          },
                        ),
                      ),
                      16.verticalSpace,
                      const SubHeadingText(
                        text: 'Selected Properties',
                      ),
                      AppTextFiled(
                        isEditable: false,
                          initialValue:
                              addedProperty.map((e) => e.address).join(', '),
                          hintText: 'Selected Properties',
                        onSaved: (val){
                          print(val);
                        },
                        // validator: (val){
                        //   if(val==null||val.isEmpty){
                        //     return 'Field is required';
                        //   }
                        //   return null;
                        // },
                      ),
                      12.verticalSpace,
                      24.verticalSpace,
                      PrimaryButton(
                          title: 'Start Planing',
                          onClick: () {
                            if(_formKey.currentState!.validate()){
                              _formKey.currentState!.save();
                              if(addedProperty.isEmpty){
                                Utils.showSnackBar(context, "Please select property");
                                return;
                              }
                              context.navPush(PlanInspectionTimeDuration(
                                planInspectionList: addedProperty,
                              ));
                            }

                          }),
                      60.verticalSpace,
                    ],
                  );
                }),
          ),
        ));
  }
}

class DateRangePicker extends StatefulWidget {
  final String? startDate; // Format: yyyy-MM-dd
  final String? endDate; // Format: yyyy-MM-dd
  final void Function(String? start, String? end) onRangeSelected;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final String hintText;

  const DateRangePicker({
    Key? key,
    this.startDate,
    this.endDate,
    required this.onRangeSelected,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.hintText = 'Choose Date Range',
  }) : super(key: key);

  @override
  State<DateRangePicker> createState() => _DateRangePickerState();
}

class _DateRangePickerState extends State<DateRangePicker> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: _formatRange());
  }

  @override
  void didUpdateWidget(covariant DateRangePicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.startDate != widget.startDate ||
        oldWidget.endDate != widget.endDate) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        _controller.text = _formatRange();
      });
    }
  }

  String _formatRange() {
    if (widget.startDate == null || widget.endDate == null) return '';
    final start = DateFormat('MM-dd-yyyy')
        .format(DateFormat('yyyy-MM-dd').parse(widget.startDate!));
    final end = DateFormat('MM-dd-yyyy')
        .format(DateFormat('yyyy-MM-dd').parse(widget.endDate!));
    return '$start         To          $end';
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _openDateRangePicker() async {
    PickerDateRange? selectedRange;

    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Text(
                  'Select Date Range',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    SfDateRangePicker(
                      monthViewSettings: DateRangePickerMonthViewSettings(
                        viewHeaderStyle: DateRangePickerViewHeaderStyle(
                          textStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF164C63),
                          ),
                        ),
                      ),
                      monthCellStyle: DateRangePickerMonthCellStyle(
                        todayTextStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        disabledDatesTextStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 178, 177, 177),
                        ),
                      ),
                      //  showActionButtons: true,
                      todayHighlightColor: const Color(0xFF164C63),
                      enablePastDates: false,
                      // cancelText: 'Cancle',
                      // onCancel: () {
                      //   context.pop();
                      // },
                      // confirmText: 'ok',
                      // onSubmit: (p0) {
                      //   Navigator.pop(context, selectedRange);
                      // },
                      startRangeSelectionColor: const Color(0xFF164C63),
                      endRangeSelectionColor: const Color(0xFF164C63),
                      headerStyle: const DateRangePickerHeaderStyle(
                          backgroundColor: Colors.white),
                      backgroundColor: Colors.white,
                      rangeSelectionColor:
                          const Color.fromARGB(255, 209, 233, 234),
                      selectionMode: DateRangePickerSelectionMode.range,
                      initialSelectedRange: (widget.startDate != null &&
                              widget.endDate != null)
                          ? PickerDateRange(
                              DateFormat('yyyy-MM-dd').parse(widget.startDate!),
                              DateFormat('yyyy-MM-dd').parse(widget.endDate!),
                            )
                          : null,
                      onSelectionChanged: (args) {
                        if (args.value is PickerDateRange) {
                          selectedRange = args.value;
                        }
                      },
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context, selectedRange);
                        },
                        child: Text(
                          'Done',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w700),
                        )),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ).then((range) {
      if (range is PickerDateRange &&
          range.startDate != null &&
          range.endDate != null) {
        final start = DateFormat('yyyy-MM-dd').format(range.startDate!);
        final end = DateFormat('yyyy-MM-dd').format(range.endDate!);
        widget.onRangeSelected(start, end);
        widget.onChanged?.call('$start → $end');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      readOnly: true,
      controller: _controller,
      onTap: _openDateRangePicker,
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
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      style: TextStyle(
        color: (widget.startDate == null || widget.endDate == null)
            ? Colors.grey
            : Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      onSaved: widget.onSaved,
    );
  }
}
