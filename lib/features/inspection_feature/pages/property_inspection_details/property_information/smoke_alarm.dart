import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/features/inspection_feature/model/inspection_toggle_model.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_provider.dart';

import '../../../../../common/common_widgets.dart';
import '../../../../../core/utils/appbutton.dart';
import '../../../../home_features/pages/home/openhouse/addopenhomes.dart';
import '../../../model/inspection_details_model.dart';

class SmokeAlarm extends ConsumerStatefulWidget {
  const SmokeAlarm({super.key, required this.utilitiesDetails});
  final InspectionComplianceUtilitiesDetails? utilitiesDetails;
  @override
  ConsumerState<SmokeAlarm> createState() => _SmokeAlarmState();
}

class _SmokeAlarmState extends ConsumerState<SmokeAlarm> {
  @override
  Widget build(BuildContext context) {
    final smokeAlarm = widget.utilitiesDetails?.smokeAlarmList;
    final params = ref.read(inspectionComplianceParamProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smoke Alarm'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: const Color(0xFFEBF3F5),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final smoke = smokeAlarm?[index];
                  if (smoke?.fieldType == FieldType.toggle) {
                    return InspectionContainer(
                      title: smoke?.title ?? "",
                      initialValue: smoke?.initialValue ?? false,
                      onChanged: (val) {
                        switch (index) {
                          case 0:
                            params.update(
                              (p) => p.copyWith(SmokeAlarmInstalled: val),
                            );
                            break;
                          case 1:
                            params.update(
                              (p) => p.copyWith(SmokeAlarmWorking: val),
                            );
                            break;
                          case 3:
                            params.update(
                              (p) => p.copyWith(SmokeAlarmBttryReplaced: val),
                            );
                            break;
                          case 5:
                            params.update(
                              (p) => p.copyWith(HaveRemovableBattry: val),
                            );
                            break;
                        }
                      },
                    );
                  } else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.verticalSpace,
                        Text(
                          smoke?.title ?? "",
                          style: TextStyle(
                            color: const Color(0xFF1A1B28),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        12.verticalSpace,
                        DatePickerDropdown2(
                          validator: (value) =>
                              value == null || value.trim().isEmpty
                                  ? 'This field is required'
                                  : null,
                          selectedDate: smoke?.initialDateValue,
                          onDateSelected: (date) {

                            switch (index) {
                              case 2:
                                params.update(
                                  (p) => p.copyWith(
                                      SmokeAlaramLastChecked: date),
                                );
                                break;
                              case 4:
                                params.update(
                                  (p) => p.copyWith(
                                      BattryChangedDate: date),
                                );
                                break;
                              case 6:
                                params.update(
                                  (p) => p.copyWith(
                                      RemovableBattryChangedDate: date),
                                );
                                break;
                            }
                          },
                          hintText: 'select date',
                        ),
                        20.verticalSpace,
                      ],
                    );
                  }
                },
                separatorBuilder: (BuildContext context, int index) {
                  return 16.verticalSpace;
                },
                itemCount: smokeAlarm?.length ?? 0),
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
    );
  }
}
