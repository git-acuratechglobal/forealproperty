import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_management_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_management_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/management_agreement/manage_agreement6.dart';

import '../providers/params_providers.dart';
import '../sales_agency_agreement/widgets/text_field.dart';

class ManageAgreement5 extends ConsumerStatefulWidget {
  const ManageAgreement5({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ManageAgreement5State();
}

class _ManageAgreement5State extends ConsumerState<ManageAgreement5> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final updateParam =
        ref.read(managementAgreementPromotionParamProvider.notifier);
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeadingText(text: 'PROMOTIONAL ACTIVITIES'),
                        16.verticalSpace,
                        const SubHeadingText(
                            text:
                                'The Rental Property is to be advertised and/or otherwise promoted as followed'),
                        16.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(
                                text: 'Listing on Realestate.com.au'),
                            CustomCupertinoToggle(
                              initialValue: data?.isListedOnRea ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam(
                                    (e) => e.copyWith(isListedOnREA: value));
                              },
                            ),
                          ],
                        ),
                        16.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(
                                text: 'Listing on Domain.com.au'),
                            CustomCupertinoToggle(
                              initialValue: data?.isListedOnDomain ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam(
                                    (e) => e.copyWith(isListedOnDomain: value));
                              },
                            ),
                          ],
                        ),
                        16.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(text: 'Social Media Campaign'),
                            CustomCupertinoToggle(
                              initialValue: data?.socialMedia ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam(
                                    (e) => e.copyWith(SocialMedia: value));
                              },
                            ),
                          ],
                        ),
                        16.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(
                              text: 'Sign Board',
                            ),
                            CustomCupertinoToggle(
                              initialValue: data?.signboard ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam(
                                    (e) => e.copyWith(Signboard: value));
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
                                'DISCLOSURES OF REBATES, DISCOUNTS OR COMMISSIONS IN RESPECT OF EXPENSES'),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.thirdPartyName,
                          hintText: 'Nil',
                          lable: 'Name of Third part',
                          onSaved: (value) {
                            updateParam.updateParam(
                                (e) => e.copyWith(ThirdPartyName: value));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.amountOfRebateDiscount.toString(),
                          hintText: '0',
                          lable:
                              'Estimated Amount of Rebate, Discount or Commissioon',
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Image.asset('assets/images/percentage.png'),
                          ),
                          onSaved: (value) {
                            updateParam.updateParam((e) =>
                                e.copyWith(AmountOfRebateDiscount: value));
                          },
                        ),
                        16.verticalSpace,
                        Divider(
                          color: Colors.grey.withValues(alpha: 0.5),
                        ),
                        16.verticalSpace,
                        const SubHeadingText(
                          text: 'The agent is authorized to:',
                        ),
                        16.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                                child: SubHeadingText(
                                    text:
                                        'Obtain references from prospective tenants, arrange inspections of the property by prospective tenants and choose a tenant')),
                            18.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  data?.obtainReferenceFromTenant ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam((e) => e.copyWith(
                                    ObtainReferenceFromTenant: value));
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
                                        'Enter into and sign a tenancy agreement (specifying the term for which the property may be let)')),
                            18.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  data?.enterIntoSignTenacyAgrmnt ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam((e) => e.copyWith(
                                    EnterIntoSignTenacyAgrmnt: value));
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
                                        'Undertake inspections of the property')),
                            18.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue: data?.undertakeInspection ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam((e) =>
                                    e.copyWith(UndertakeInspection: value));
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
                                        'Effect repairs to and maintain the property or engage tradespersons to do so up to an approved amount without obtaining the approval of Principal')),
                            18.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  data?.effectRepairMaintainProprty ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam((e) => e.copyWith(
                                    EffectRepairMaintainProprty: value));
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
                                        'Pay disbursements and expenses incurred in connection with the agent’s management of the property')),
                            18.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue: data?.payDisbursemnt ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam(
                                    (e) => e.copyWith(PayDisbursemnt: value));
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
                                        'Collect rent, receive, claim and disburse rental bond money')),
                            18.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue: data?.collectReceiveRent ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam((e) =>
                                    e.copyWith(CollectReceiveRent: value));
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
                                        'Serve notices for breach of the tenancy agreement or terminate the tenancy agreement')),
                            18.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  data?.serveNoticeForBreachTenancy ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam((e) => e.copyWith(
                                    ServeNoticeForBreachTenancy: value));
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
                                        'Undertake the necessary steps to obtain vacant possession and recover any money owing to the Principal in relation to the tenancy of the property')),
                            18.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  data?.undrtakeStpsToRecvrMony ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam((e) =>
                                    e.copyWith(UndrtakeStpsToRecvrMony: value));
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
                                        'Represent the Principal in any tribunal or court proceedings in respect of the tenancy of the property')),
                            18.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  data?.representPrincipalCourt ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam((e) =>
                                    e.copyWith(RepresentPrincipalCourt: value));
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
                                        'Pay accounts for amounts owing in relation to the property (for example, water rates and charges, council rates, maintenance expenses and owners corporation levies)')),
                            18.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue: data?.payAccountsForAmount ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam((e) =>
                                    e.copyWith(PayAccountsForAmount: value));
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
                                        'Advertise the property for letting or re-letting')),
                            18.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue:
                                  data?.advertisePropertyLetting ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam((e) => e.copyWith(
                                    AdvertisePropertyLetting: value));
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
                                        'Review the rent at the end of a tenancy')),
                            18.horizontalSpace,
                            CustomCupertinoToggle(
                              initialValue: data?.reviewRentEndTenancy ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParam.updateParam((e) =>
                                    e.copyWith(ReviewRentEndTenancy: value));
                              },
                            ),
                          ],
                        ),
                        24.verticalSpace,
                        PrimaryButton(
                          title: 'Next',
                          onClick: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              ref
                                  .read(updateManagementAgreementProvider
                                      .notifier)
                                  .updatePromotionalActivity();
                            }
                          },
                        ),
                        24.verticalSpace
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
