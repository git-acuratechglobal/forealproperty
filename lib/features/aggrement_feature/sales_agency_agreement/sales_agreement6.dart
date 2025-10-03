import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/common_widgets.dart';
import '../../../common/constants/app_strings.dart';
import '../../../core/utils/appbutton.dart';
import '../manage_agreement_tab.dart';
import '../../home_features/pages/home/openhouse/addopenhomes.dart';
import 'widgets/heading_text.dart';
import 'widgets/sub_heading_text.dart';

class SalesAgreement6 extends HookConsumerWidget {
  const SalesAgreement6({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = useState<String?>(null);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final updateParam =
        ref.read(updateSalesPromotionDetailsParamProvider.notifier);
    return PageLoadingWidget(
      isLoading: ref.watch(updateSalesAgreementProvider).isLoading,
      child: Scaffold(
        backgroundColor: const Color(0XFFf2f6f7),
        appBar: AppBar(
          title: const Text('Sales Agreement'),
          centerTitle: true,
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
              child: AsyncWidget(
                  value: ref.watch(getSalesAgreementProvider),
                  data: (data) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeadingText(
                          text: 'ADVERTISING AND PROMOTION',
                        ),
                        20.verticalSpace,
                        const SubHeadingText(
                            text: 'Manner of Advertising and Promotion:'),
                        20.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(text: 'Property Photos'),
                            CustomCupertinoToggle(
                              initialValue: updateParam.propertyPhotos ?? false,
                              onChanged: (val) {
                                updateParam.updateParam((e) => e.copyWith(
                                      PropertyPhotos: val,
                                    ));
                              },
                            )
                          ],
                        ),
                        10.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(text: 'Social Media Campaign'),
                            CustomCupertinoToggle(
                              initialValue:
                                  updateParam.socialMediaCampaign ?? false,
                              onChanged: (val) {
                                updateParam.updateParam((e) => e.copyWith(
                                      SocialMediaCampaign: val,
                                    ));
                              },
                            )
                          ],
                        ),
                        10.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(
                                text: 'Listing on Domain.com.au'),
                            CustomCupertinoToggle(
                              initialValue:
                                  updateParam.isListedOnDomain ?? false,
                              onChanged: (val) {
                                updateParam.updateParam((e) => e.copyWith(
                                      IsListedOnDomain: val,
                                    ));
                              },
                            )
                          ],
                        ),
                        10.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(text: 'Floor Plans'),
                            CustomCupertinoToggle(
                              initialValue: updateParam.floorPlans ?? false,
                              onChanged: (val) {
                                updateParam.updateParam((e) => e.copyWith(
                                      FloorPlans: val,
                                    ));
                              },
                            )
                          ],
                        ),
                        10.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(
                                text: 'Listing on Realestate.com.au'),
                            CustomCupertinoToggle(
                              initialValue: updateParam.isListedOnREA ?? false,
                              onChanged: (val) {
                                updateParam.updateParam((e) => e.copyWith(
                                      IsListedOnREA: val,
                                    ));
                              },
                            )
                          ],
                        ),
                        10.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(
                                text: 'Signboard Outside the property'),
                            CustomCupertinoToggle(
                              initialValue:
                                  updateParam.signboardOutsideProperty ?? false,
                              onChanged: (val) {
                                updateParam.updateParam((e) => e.copyWith(
                                      SignboardOutsideProperty: val,
                                    ));
                              },
                            )
                          ],
                        ),
                        10.verticalSpace,
                        20.verticalSpace,
                        const Divider(
                          color: Color(0xffE2E2E2),
                        ),
                        20.verticalSpace,
                        const HeadingText(
                          text: 'INSPECTION OF PROPERTY',
                        ),
                        20.verticalSpace,
                        AppTextFiled(
                          controller: updateParam.inspection,
                          lable:
                              "Inspection may be conducted in the following circumstances",
                          hintText: "Nil",
                          onSaved: (val) {
                            updateParam.updateParam((e) => e.copyWith(
                                  Inspection: val,
                                ));
                          },
                        ),
                        10.verticalSpace,
                        const SubHeadingText(text: AppStrings.principleText),
                        10.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: 240.w,
                                child: const SubHeadingText(
                                    text: 'Without risk to health and safety')),
                            40.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  updateParam.withoutRisk == 1 ? true : false,
                              onChanged: (val) {
                                updateParam.updateParam((e) => e.copyWith(
                                      WithoutRisk: val == true ? 1 : 2,
                                    ));
                              },
                            )
                          ],
                        ),
                        10.verticalSpace,
                        const Text(
                          "OR",
                        ),
                        20.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: 240.w,
                                child: const SubHeadingText(
                                    text: AppStrings.subjectText)),
                            40.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  updateParam.withDefects == 1 ? true : false,
                              onChanged: (val) {
                                updateParam.updateParam((e) => e.copyWith(
                                    WithDefects: val == true ? 1 : 2));
                              },
                            )
                          ],
                        ),
                        20.verticalSpace,
                        const Divider(
                          color: Color(0xffE2E2E2),
                        ),
                        20.verticalSpace,
                        const HeadingText(
                          text:
                              'DISCLOSURE OF REBATES, DISCOUNTS AND COMMISSIONS',
                        ),
                        20.verticalSpace,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  const SubHeadingText(
                                    text: 'Name of Source of Rebate:',
                                  ),
                                  28.verticalSpace,
                                  AppTextFiled(
                                    controller:
                                        updateParam.disclosureSourceRebate1,
                                    hintText: "Nil",
                                    onSaved: (val) {
                                      updateParam.updateParam((e) => e.copyWith(
                                          DisclosureSourceRebate1: val));
                                    },
                                  ),
                                  20.verticalSpace,
                                  AppTextFiled(
                                    controller:
                                        updateParam.disclosureEstimateRebate1,
                                    hintText: "",
                                    onSaved: (val) {
                                      if (val != null)
                                        updateParam.updateParam((e) =>
                                            e.copyWith(
                                                DisclosureEstimateRebate1:
                                                    int.parse(val)));
                                    },
                                  )
                                ],
                              ),
                            ),
                            40.horizontalSpace,
                            Expanded(
                              child: Column(
                                children: [
                                  const SubHeadingText(
                                    text:
                                        'Estimated Amount of Rebates, Discounts or Commissions:',
                                  ),
                                  8.verticalSpace,
                                  AppTextFiled(
                                    controller:
                                        updateParam.disclosureSourceRebate2,
                                    hintText: "Nil",
                                    onSaved: (val) {
                                      updateParam.updateParam((e) => e.copyWith(
                                          DisclosureSourceRebate2: val));
                                    },
                                  ),
                                  20.verticalSpace,
                                  AppTextFiled(
                                    controller:
                                        updateParam.disclosureEstimateRebate2,
                                    hintText: "",
                                    onSaved: (val) {
                                      if (val != null)
                                        updateParam.updateParam((e) =>
                                            e.copyWith(
                                                DisclosureEstimateRebate2:
                                                    int.parse(val)));
                                    },
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        20.verticalSpace,
                        Text(
                          AppStrings.coolingOfPeriod,
                          style: TextStyle(
                              color: const Color(0XFF7d8089),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        20.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(
                              text: 'WAIVER OF COOLING OFF PERIOD',
                            ),
                            CustomCupertinoToggle(
                              initialValue:
                                  updateParam.waiverOfCoolinOffPeriod == 1
                                      ? true
                                      : false,
                              onChanged: (val) {
                                updateParam.updateParam((e) => e.copyWith(
                                    WaiverOfCoolinOffPeriod: val ? 1 : 2));
                              },
                            )
                          ],
                        ),
                        20.verticalSpace,
                        Text(
                          AppStrings.licensePrincipleText,
                          style: TextStyle(
                              color: const Color(0XFF7d8089),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        20.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 270.w,
                              child: const SubHeadingText(
                                text: AppStrings.approvedGuideText,
                              ),
                            ),
                            CustomCupertinoToggle(
                              initialValue:
                                  updateParam.wasAgreementProvidedPrincipal == 1
                                      ? true
                                      : false,
                              onChanged: (val) {
                                updateParam.updateParam((e) => e.copyWith(
                                    WasAgreementProvidedPrincipal:
                                        val ? 1 : 2));
                              },
                            )
                          ],
                        ),
                        20.verticalSpace,
                        const SubHeadingText(
                          text: 'Date Provided:',
                        ),
                        10.verticalSpace,
                        DatePickerDropdown(
                          isSelectAnyDate: true,
                          validator: (value) =>
                              value == null || value.trim().isEmpty
                                  ? 'This field is required'
                                  : null,
                          selectedDate:
                              selectedDate.value ?? data?.fromattedDateProvided,
                          onDateSelected: (date) {
                            selectedDate.value = date;
                          },
                          hintText: 'mm-dd-yyyy',
                        ),
                        60.verticalSpace,
                        PrimaryButton(
                            title: "Submit",
                            onClick: () {
                              ref
                                  .read(updateSalesAgreementProvider.notifier)
                                  .updateSalesForm6(data?.propertyUId ?? "");
                            }),
                        60.verticalSpace,
                      ],
                    );
                  })),
        ),
      ),
    );
  }
}
