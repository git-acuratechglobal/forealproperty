import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/inspection_feature/model/inspection_toggle_model.dart';

import '../../../../../common/common_widgets.dart';
import '../../../../../core/utils/appbutton.dart';
import '../../../../home_features/pages/home/openhouse/addopenhomes.dart';
import '../../../model/inspection_details_model.dart';
import '../../../provider/inspection_provider.dart';

class WtaerEfficiencyScreen extends ConsumerStatefulWidget {
  const WtaerEfficiencyScreen({super.key, required this.utilitiesDetails});
  final InspectionComplianceUtilitiesDetails? utilitiesDetails;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _WtaerEfficiencyScreenState();
}

class _WtaerEfficiencyScreenState extends ConsumerState<WtaerEfficiencyScreen> {
  @override
  Widget build(BuildContext context) {
    final waterEfficiency = widget.utilitiesDetails?.waterEfficiencyList;
    final params = ref.watch(inspectionComplianceParamProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Efficiency devices '),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: const Color(0xFFEBF3F5),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final waterData = waterEfficiency?[index];
                  if (waterData?.fieldType == FieldType.toggle) {
                    return InspectionContainer(
                      title: waterData?.title,
                      initialValue: waterData?.initialValue ?? false,
                      onChanged: (val) {
                        switch (index) {
                          case 0:
                            params.update(
                              (p) => p.copyWith(SeperatedMetered: val),
                            );
                            break;
                          case 1:
                            params.update(
                              (p) => p.copyWith(ShowerheadMaximumFlow: val),
                            );
                            break;
                          case 2:
                            params.update(
                              (p) => p.copyWith(DualFlushToilet: val),
                            );
                            break;
                          case 3:
                            params.update(
                              (p) => p.copyWith(ColdWatrTapsMaximumFlow: val),
                            );
                            break;
                          case 4:
                            params.update(
                              (p) => p.copyWith(CheckedWaterLeakage: val),
                            );
                            break;
                        }
                      },
                    );
                  } else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        12.verticalSpace,
                        Text(
                          waterData?.title ?? "",
                          style: TextStyle(
                            color: const Color(0xFF1A1B28),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        12.verticalSpace,
                        if (waterData?.fieldType == FieldType.input)
                          CommonTextField(
                            initialValue: waterData?.initialInputValue,
                            label: 'Enter meter reading',
                            onChanged: (val) {
                              final value = num.tryParse(val);
                              switch (index) {
                                case 5:
                                  params.update((p) =>
                                      p.copyWith(WaterMeterReading: value));
                                  break;
                                case 7:
                                  params.update((p) =>
                                      p.copyWith(WatermeterReadingEnd: val));
                                  break;
                              }
                            },
                          )
                        else
                          DatePickerDropdown2(
                              validator: (value) =>
                                  value == null || value.trim().isEmpty
                                      ? 'This field is required'
                                      : null,
                              selectedDate: waterData?.initialDateValue,
                              onDateSelected: (date) {
                                switch (index) {
                                  case 6:
                                    params.update((p) => p.copyWith(
                                        DateofWaterMeterReadingStart: date));
                                    break;
                                  // case 8:
                                  //   params.update((p) => p.copyWith(
                                  //       DateOdWaterMeterReadingEnd: date));
                                  //   break;
                                }
                              }),
                      ],
                    );
                  }
                },
                separatorBuilder: (BuildContext context, int index) {
                  return 16.verticalSpace;
                },
                itemCount: waterEfficiency?.length ?? 0),
            PrimaryButton(
              isLoading: ref.watch(inspectionNotifierProvider).isLoading,
              title: 'Update',
              onClick: () {
                ref
                    .read(inspectionNotifierProvider.notifier)
                    .updateCompliance();
              },
            ),
            24.verticalSpace,
          ],
        ),
      ),
    );
  }
}
