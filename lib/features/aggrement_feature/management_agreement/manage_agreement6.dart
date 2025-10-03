import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_management_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_management_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:foreal_property/features/aggrement_feature/manage_agreement_tab.dart';

class ManageAgreement6 extends ConsumerStatefulWidget {
  const ManageAgreement6({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ManageAgreement6State();
}

class _ManageAgreement6State extends ConsumerState<ManageAgreement6> {
  bool isSwitched = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final updateParams =
        ref.read(managementAgreementRepairDetailsParamProvider.notifier);
    return PageLoadingWidget(
        isLoading: ref.watch(updateManagementAgreementProvider).isLoading,
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Manage Agreement'),
              centerTitle: true,
              automaticallyImplyLeading: true,
            ),
            backgroundColor: const Color(0XFFf2f6f7),
            body: AsyncWidget(
                value: ref.watch(getManagementAgreementProvider),
                data: (data) {
                  return SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const HeadingText(text: 'REPAIRS AND MAINTENANCE'),
                          16.verticalSpace,
                          AppTextFiled(
                            initialValue: data?.tradesmanPayment.toString(),
                            hintText: '',
                            lable: 'Payment',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child:
                                  Image.asset('assets/images/percentage.png'),
                            ),
                            onSaved: (val) {
                              updateParams.updateParam(
                                  (e) => e.copyWith(TradesmanPayment: val));
                            },
                          ),
                          16.verticalSpace,
                          Divider(
                            color: Colors.grey.withValues(alpha: 0.5),
                          ),
                          16.verticalSpace,
                          const HeadingText(text: 'MATERIAL FACTS'),
                          // 16.verticalSpace,
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     const Expanded(
                          //         child: SubHeadingText(
                          //             text: 'Supply Urgent Repair To Tenant')),
                          //     18.horizontalSpace,
                          //     CustomCupertinoToggle(
                          //       initialValue:
                          //           data?.supplyUrgentRepairToTenant ?? false,
                          //       trueLabel: 'Y',
                          //       falseLabel: 'N',
                          //       onChanged: (value) {
                          //         updateParams.updateParam((e) => e.copyWith(
                          //             SupplyUrgentRepairToTenant: value));
                          //       },
                          //     ),
                          //   ],
                          // ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child: SubHeadingText(
                                      text:
                                          'Loose Fill Asbestos Installation')),
                              18.horizontalSpace,
                              CustomCupertinoToggle(
                                initialValue:
                                    data?.looseFillAsbestosInstallation ??
                                        false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam((e) => e.copyWith(
                                      LooseFillAsbestosInstallation: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child: SubHeadingText(text: 'Smoke alarm')),
                              CustomCupertinoToggle(
                                initialValue: data?.smokeAlarm ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam(
                                      (e) => e.copyWith(SmokeAlarm: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child: SubHeadingText(
                                      text: 'Swimming pool registered')),
                              CustomCupertinoToggle(
                                initialValue:
                                    data?.swimmingPoolRegistered ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam((e) => e.copyWith(
                                      SwimmingPoolRegistered: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child: SubHeadingText(
                                text: 'Health issues',
                              )),
                              CustomCupertinoToggle(
                                initialValue: data?.healthIssues ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam(
                                      (e) => e.copyWith(HealthIssues: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Divider(
                            color: Colors.grey.withValues(alpha: 0.5),
                          ),
                          16.verticalSpace,
                          const HeadingText(
                            text:
                                'IN THE LAST 5 YEARS HAS THE PROPERTY BEEN SUBJECT TO',
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child: SubHeadingText(text: 'Flooding')),
                              CustomCupertinoToggle(
                                initialValue: data?.flooding ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam(
                                      (e) => e.copyWith(Flooding: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child: SubHeadingText(
                                text: 'Bushfire',
                              )),
                              CustomCupertinoToggle(
                                initialValue: data?.bushfire ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam(
                                      (e) => e.copyWith(Bushfire: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child: SubHeadingText(
                                      text: 'Serious violent crim')),
                              CustomCupertinoToggle(
                                initialValue:
                                    data?.seriousViolentCrime ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam((e) =>
                                      e.copyWith(SeriousViolentCrime: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Divider(
                            color: Colors.grey.withValues(alpha: 0.5),
                          ),
                          16.verticalSpace,
                          const HeadingText(text: 'AFFECTED BY'),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child: SubHeadingText(
                                      text: 'Parking Restrictions')),
                              CustomCupertinoToggle(
                                initialValue: data?.parkingRestriction ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam((e) =>
                                      e.copyWith(ParkingRestriction: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child:
                                      SubHeadingText(text: 'Share driveways')),
                              CustomCupertinoToggle(
                                initialValue: data?.shareDriveway ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam(
                                      (e) => e.copyWith(ShareDriveway: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child: SubHeadingText(
                                      text: 'Serious violent crime')),
                              CustomCupertinoToggle(
                                initialValue:
                                    data?.affectdSeriousViolent ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam((e) =>
                                      e.copyWith(AffectdSeriousViolent: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child: SubHeadingText(text: 'Flooding')),
                              CustomCupertinoToggle(
                                initialValue: data?.affectdFlooding ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam((e) =>
                                      e.copyWith(AffectdFlooding: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child: SubHeadingText(text: 'Bushfire')),
                              CustomCupertinoToggle(
                                initialValue: data?.affectdBushfire ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam((e) =>
                                      e.copyWith(AffectdBushfire: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                child: SubHeadingText(
                                    text:
                                        'Is there a contract for the sale of the premises'),
                              ),
                              18.horizontalSpace,
                              CustomCupertinoToggle(
                                initialValue:
                                    data?.isContractForSalePremises ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam((e) => e.copyWith(
                                      IsContractForSalePremises: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child: SubHeadingText(
                                      text:
                                          'Is there a proposal to sell the premises')),
                              18.horizontalSpace,
                              CustomCupertinoToggle(
                                initialValue: data?.isProposelToSell ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam((e) =>
                                      e.copyWith(IsProposelToSell: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child: SubHeadingText(
                                      text:
                                          'Has a mortgagee commenced proceedings in court to enforce a mortgage over the premises')),
                              18.horizontalSpace,
                              CustomCupertinoToggle(
                                initialValue:
                                    data?.hasMortgageeCommenced ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam((e) =>
                                      e.copyWith(HasMortgageeCommenced: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  child: SubHeadingText(
                                      text:
                                          'Is the mortgagee taking action for possession of the property')),
                              18.horizontalSpace,
                              CustomCupertinoToggle(
                                initialValue:
                                    data?.isMortgageeTakgActnPossssion ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam((e) => e.copyWith(
                                      isMortgageeTakgActnPossssion: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Divider(
                            color: Colors.grey.withValues(alpha: 0.5),
                          ),
                          16.verticalSpace,
                          const HeadingText(text: 'WATER EFFICIENCY DEVICES'),
                          16.verticalSpace,
                          const SubHeadingText(
                              text: 'The agent is authorized to:'),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                child: SubHeadingText(
                                  text:
                                      'The premises contain the water efficiency measures prescribed by the Residential Tenancies Act 2010 (NSW)',
                                ),
                              ),
                              18.horizontalSpace,
                              CustomCupertinoToggle(
                                initialValue:
                                    data?.waterEfficiencyByNsw ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam((e) =>
                                      e.copyWith(WaterEfficiencyByNSW: value));
                                },
                              ),
                            ],
                          ),
                          16.verticalSpace,
                          Divider(
                            color: Colors.grey.withValues(alpha: 0.5),
                          ),
                          16.verticalSpace,
                          const HeadingText(
                            text: 'SMOKE ALARMS',
                          ),
                          16.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                child: SubHeadingText(
                                  text:
                                      'The Principal warrants that the Premises comply with the Environmental Planning and Assessment Amendment (Smoke Alarms) Regulation 2006 (NSW)',
                                ),
                              ),
                              18.horizontalSpace,
                              CustomCupertinoToggle(
                                initialValue:
                                    data?.principalWarrantsSmokeAlarm ?? false,
                                trueLabel: 'Y',
                                falseLabel: 'N',
                                onChanged: (value) {
                                  updateParams.updateParam((e) => e.copyWith(
                                      PrincipalWarrantsSmokeAlarm: value));
                                },
                              ),
                            ],
                          ),
                          24.verticalSpace,
                          PrimaryButton(
                              title: 'Submit',
                              onClick: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  ref
                                      .read(updateManagementAgreementProvider
                                          .notifier)
                                      .updateRepairDetails(data?.propertyUId??"");
                                }
                              }),
                          24.verticalSpace
                        ],
                      ),
                    ),
                  );
                })));
  }
}
