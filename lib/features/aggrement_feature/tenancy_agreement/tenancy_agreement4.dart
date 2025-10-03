import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_tenancy_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_tenancy_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/appbutton.dart';
import '../manage_agreement_tab.dart';
import '../sales_agency_agreement/widgets/text_field.dart';

class TenancyAgreement4 extends HookConsumerWidget {
  const TenancyAgreement4({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final textStyle = Theme.of(context).textTheme;
    final alarmsList = [
      "Hardwired smoke alarms",
      "Battery operated smoke alarms",
    ];
    final selectedAlarm = useState<String?>(null);
    final updateParam =
        ref.read(updateTenantAgreementInfoParamProvider.notifier);
    return PageLoadingWidget(
      isLoading: ref.watch(updateTenancyAgreementProvider).isLoading,
      child: Scaffold(
        backgroundColor: const Color(0XFFf2f6f7),
        appBar: AppBar(
          title: const Text('Tenancy Agreement'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
            child: AsyncWidget(
                value: ref.watch(getTenancyAgreementProvider),
                data: (data) {
                  return Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeadingText(
                          text: "Maximum number of occupants",
                        ),
                        10.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.maximumTenant.toString() ?? "",
                          lable: 'No more than',
                          hintText: 'No more than',
                          onSaved: (val) {
                            if (val == null) return;
                            updateParam.updateParam((state) =>
                                state.copyWith(MaximumTenant: int.parse(val)));
                          },
                        ),
                        20.verticalSpace,
                        const HeadingText(
                          text: "Urgent repairs",
                        ),
                        10.verticalSpace,
                        AppTextFiled(
                            initialValue: data?.electricalRepair ?? '',
                            lable: 'Electrical Repair',
                            hintText: 'Electrical Repair',
                            onSaved: (val) {
                              updateParam.updateParam((state) =>
                                  state.copyWith(ElectricalRepair: val));
                            }),
                        10.verticalSpace,
                        AppTextFiled(
                            initialValue: data?.electricalRepairContact ?? '',
                            lable: 'Telephone',
                            hintText: 'Telephone',
                            onSaved: (val) {
                              updateParam.updateParam((state) =>
                                  state.copyWith(ElectricalRepairContact: val));
                            }),
                        10.verticalSpace,
                        AppTextFiled(
                            initialValue: data?.plumbingRepair ?? '',
                            lable: 'Plumbing Repairs',
                            hintText: 'Plumbing Repairs',
                            onSaved: (val) {
                              updateParam.updateParam((state) =>
                                  state.copyWith(PlumbingRepair: val));
                            }),
                        10.verticalSpace,
                        AppTextFiled(
                            initialValue: data?.plumbingRepairContact ?? '',
                            lable: 'Telephone',
                            hintText: 'Telephone',
                            onSaved: (val) {
                              updateParam.updateParam((state) =>
                                  state.copyWith(PlumbingRepairContact: val));
                            }),
                        10.verticalSpace,
                        AppTextFiled(
                            initialValue: data?.otherRepair ?? '',
                            lable: 'Other Repairs',
                            hintText: 'Other Repairs',
                            onSaved: (val) {
                              updateParam.updateParam(
                                  (state) => state.copyWith(OtherRepair: val));
                            }),
                        10.verticalSpace,
                        AppTextFiled(
                            initialValue: data?.otherRepairContact ?? "",
                            lable: 'Telephone',
                            hintText: 'Telephone',
                            onSaved: (val) {
                              updateParam.updateParam((state) =>
                                  state.copyWith(OtherRepairContact: val));
                            }),
                        25.verticalSpace,
                        const HeadingText(
                          text: "Water usage",
                        ),
                        10.verticalSpace,
                        Row(
                          children: [
                            const Expanded(
                                child: SubHeadingText(
                              text:
                                  "Will the tenant be required to pay separately for water usage?",
                            )),
                            10.horizontalSpace,
                            CustomCupertinoToggle(
                                initialValue:
                                    data?.payWaterBillSeperately ?? false,
                                onChanged: (val) {
                                  updateParam.updateParam((state) => state
                                      .copyWith(PayWaterBillSeperately: val));
                                })
                          ],
                        ),
                        25.verticalSpace,
                        const HeadingText(
                          text: "Utilities",
                        ),
                        10.verticalSpace,
                        Row(
                          children: [
                            const Expanded(
                                child: SubHeadingText(
                              text:
                                  "Is electricity supplied to the premises from an embedded network?",
                            )),
                            10.horizontalSpace,
                            CustomCupertinoToggle(
                                initialValue:
                                    data?.isElectricitySupplied ?? false,
                                onChanged: (val) {
                                  updateParam.updateParam((state) => state
                                      .copyWith(IsElectricitySupplied: val));
                                })
                          ],
                        ),
                        10.verticalSpace,
                        Row(
                          children: [
                            const Expanded(
                                child: SubHeadingText(
                              text:
                                  "Is gas supplied to the premises from an embedded network?",
                            )),
                            10.horizontalSpace,
                            CustomCupertinoToggle(
                                initialValue: data?.isGasSupplied ?? false,
                                onChanged: (val) {
                                  updateParam.updateParam((state) =>
                                      state.copyWith(IsGasSupplied: val));
                                })
                          ],
                        ),
                        25.verticalSpace,
                        Text(
                          "Smoke Alarms",
                          style: textStyle.bodyLarge?.copyWith(
                            color: const Color(0xff164C63),
                          ),
                        ),
                        10.verticalSpace,
                        const SubHeadingText(
                          text:
                              "Indicate whether the smoke alarms installed in the residential premises are hardwired or battery operated",
                        ),
                        10.verticalSpace,
                        Wrap(
                          direction: Axis.vertical,
                          // spacing: 20,
                          runSpacing: 8,
                          children: alarmsList.map((duration) {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: RadioListTile<String>(
                                fillColor:
                                    WidgetStateProperty.all(Colors.black),
                                contentPadding: EdgeInsets.zero,
                                title: SubHeadingText(
                                  text: duration,
                                ),
                                value: duration,
                                groupValue: selectedAlarm.value ??
                                    (data?.smokeAlarmType != null &&
                                            data!.smokeAlarmType! > 0 &&
                                            data.smokeAlarmType! <=
                                                alarmsList.length
                                        ? alarmsList[data.smokeAlarmType! - 1]
                                        : null),
                                onChanged: (value) {
                                  selectedAlarm.value = value;
                                  final index = alarmsList.indexOf(value!);
                                  updateParam.updateParam((state) =>
                                      state.copyWith(
                                          SmokeAlarmType: index.toString()));
                                },
                              ),
                            );
                          }).toList(),
                        ),
                        25.verticalSpace,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                                child: SubHeadingText(
                              text:
                                  "If the smoke alarms are battery operated, are the batteries in the smoke alarms of a kind the tenant can replace?",
                            )),
                            10.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  data?.smokeAlarmBatteryReplacable ?? false,
                              onChanged: (val) {
                                updateParam.updateParam((state) =>
                                    state.copyWith(
                                        SmokeAlarmBatteryReplacable: val));
                              },
                            )
                          ],
                        ),
                        15.verticalSpace,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                                child: SubHeadingText(
                              text:
                                  "If yes, specify the type of battery that needs to be used if the battery in the smoke alarm needs to be replaced:",
                            )),
                            15.horizontalSpace,
                            SizedBox(
                                width: 140,
                                child: AppTextFiled(
                                  initialValue: data?.batteryType ?? '',
                                  hintText: '9v Alkaline',
                                  onSaved: (val) {
                                    updateParam.updateParam((state) =>
                                        state.copyWith(BatteryType: val));
                                  },
                                )),
                          ],
                        ),
                        15.verticalSpace,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                                child: SubHeadingText(
                              text:
                                  "If the smoke alarms are hardwired, are the back-up batteries in the smoke alarms of a kind the tenant can replace?",
                            )),
                            10.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  data?.backupBatteryReplacable ?? false,
                              onChanged: (val) {
                                updateParam.updateParam((state) => state
                                    .copyWith(BackupBatteryReplacable: val));
                              },
                            ),
                          ],
                        ),
                        15.verticalSpace,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                                child: SubHeadingText(
                              text:
                                  "If yes, specify the type of back-up battery that needs to be used if the back-up battery in the smoke alarm needs to be replaced:",
                            )),
                            10.horizontalSpace,
                            SizedBox(
                                width: 140,
                                child: AppTextFiled(
                                  initialValue: data?.typeOfBackupBattery ?? '',
                                  hintText: '9v Alkaline',
                                  onSaved: (val) {
                                    updateParam.updateParam((state) => state
                                        .copyWith(TypeOfBackupBattery: val));
                                  },
                                )),
                          ],
                        ),
                        15.verticalSpace,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                                child: SubHeadingText(
                              text:
                                  "If the Strata Schemes Management Act 2015 applies to the residential premises, is the owners corporation of the strata scheme responsible for the repair and replacement of smoke alarms in the residential premises?",
                            )),
                            10.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  data?.strataRsponsibleForReplacement ?? false,
                              onChanged: (val) {
                                updateParam.updateParam((state) =>
                                    state.copyWith(
                                        StrataRsponsibleForReplacement: val));
                              },
                            ),
                          ],
                        ),
                        15.verticalSpace,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                                child: SubHeadingText(
                              text:
                                  "Are there any strata or community scheme by-laws applicable to the residential premises?",
                            )),
                            10.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  data?.strataByLawsApplicable ?? false,
                              onChanged: (val) {
                                updateParam.updateParam((state) => state
                                    .copyWith(StrataByLawsApplicable: val));
                              },
                            ),
                          ],
                        ),
                        20.verticalSpace,
                        const HeadingText(
                          text: "Landlord",
                        ),
                        10.verticalSpace,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                                child: SubHeadingText(
                              text:
                                  "Does the landlord give express consent to the electronic service of notices and documents?",
                            )),
                            10.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  data?.doesLandlordConsentElectronic ?? false,
                              onChanged: (val) {
                                updateParam.updateParam((state) =>
                                    state.copyWith(
                                        DoesLandlordConsentElectronic: val));
                              },
                            ),
                          ],
                        ),
                        10.verticalSpace,
                        Text(
                          "[Specify email address to be used for the purpose of serving notices and documents.]",
                          style: TextStyle(
                              color: const Color(0XFF7d8089),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        15.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.landlordElctrcConsentEmail ?? '',
                          hintText: "Email Address",
                          onSaved: (val) {
                            updateParam.updateParam((state) => state.copyWith(
                                LandlordElctrcConsentEmail: val));
                          },
                        ),
                        20.verticalSpace,
                        const HeadingText(
                          text: "Tenant",
                        ),
                        10.verticalSpace,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                                child: SubHeadingText(
                              text:
                                  "Does the tenant give express consent to the electronic service of notices and documents?",
                            )),
                            10.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  data?.doesTenantConsentElectronic ?? false,
                              onChanged: (val) {
                                updateParam.updateParam((state) =>
                                    state.copyWith(
                                        DoesTenantConsentElectronic: val));
                              },
                            ),
                          ],
                        ),
                        10.verticalSpace,
                        Text(
                          "[Specify email address to be used for the purpose of serving notices and documents.]",
                          style: TextStyle(
                              color: const Color(0XFF7d8089),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        15.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.tenantElctrcConsentEmail ?? '',
                          hintText: "Email Address",
                          onSaved: (val) {
                            // updateParam.updateParam((state) => state.copyWith(T));
                          },
                        ),
                        10.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.petDetails ?? '',
                          lable: 'Pet Details',
                          hintText: 'Nil',
                          onSaved: (val) {
                            updateParam.updateParam(
                                (state) => state.copyWith(PetDetails: val));
                          },
                        ),
                        10.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.additionalComments ?? '',
                          lable: 'Additional Terms',
                          hintText: 'Nil',
                          onSaved: (val) {
                            updateParam.updateParam((state) =>
                                state.copyWith(AdditionalComments: val));
                          },
                        ),
                        60.verticalSpace,
                        PrimaryButton(
                            title: "Submit",
                            onClick: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                ref
                                    .read(
                                        updateTenancyAgreementProvider.notifier)
                                    .updateTenantAgreementInfo(
                                        data?.propertyUId ?? '');
                              }
                              // context.navPush(const ManageAgreementTab());
                            }),
                        60.verticalSpace,
                      ],
                    ),
                  );
                })),
      ),
    );
  }
}
