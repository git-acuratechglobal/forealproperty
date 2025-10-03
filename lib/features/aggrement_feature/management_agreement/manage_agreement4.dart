import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_management_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import '../Widgets/strings.dart';
import '../providers/get_management_agreement.dart';
import '../providers/params_providers.dart';
import '../sales_agency_agreement/widgets/heading_text.dart';
import 'manage_agreement5.dart';

class ManangeAgreement4 extends ConsumerStatefulWidget {
  const ManangeAgreement4({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ManangeAgreement4State();
}

class _ManangeAgreement4State extends ConsumerState<ManangeAgreement4> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final updateParams =
        ref.read(managementAgreementTribunalParamProvider.notifier);

    final managementData=ref.watch(getManagementAgreementProvider);
    return PageLoadingWidget(
      isLoading: ref.watch(updateManagementAgreementProvider).isLoading ||
          managementData.isReloading||managementData.isRefreshing,
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
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HeadingText(
                            text: AppString.tribunalFeesInsurance),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(
                                text: AppString.applicationFeesforNCATTribunal),
                            Text(
                              AppString.atCost,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(
                              text: AppString.sherriffOrOtherStatutory,
                            ),
                            Text(
                              AppString.atCost,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(
                              text: AppString.officeExoenses,
                            ),
                            Text(
                              AppString.atCost,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(
                              text: AppString.postage,
                            ),
                            Text(
                              AppString.atCost,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        AppTextFiled(
                          initialValue:
                              data?.applicationFeesForUtilites.toString(),
                          hintText: '',
                          lable:
                              'Preparation commuting and attendance of NCAT/Tribunal & Insurance',
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                            ),
                            child: Image.asset('assets/images/dollor.png'),
                          ),
                          onSaved: (val) {
                            if (val == null || val.isEmpty) return;
                            updateParams.updateParam((e) => e.copyWith(
                                ApplicationFeesForUtilites: int.parse(val)));
                          },
                        ),
                        4.verticalSpace,
                        Text(
                          AppString.invoiceDays,
                          style: TextStyle(
                              color: const Color(0XFF7d8089),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        16.verticalSpace,
                        Divider(
                          color: Colors.grey.withValues(alpha: 0.5),
                        ),
                        16.verticalSpace,
                        HeadingText(
                            text: AppString.authorizeForealProperty
                                .toUpperCase()),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(
                              text: AppString.redirect,
                            ),
                            CustomCupertinoToggle(
                              initialValue: data?.redirect ?? false,
                              trueLabel: 'Y',
                              falseLabel: 'N',
                              onChanged: (value) {
                                updateParams.updateParam(
                                    (e) => e.copyWith(Redirect: value));
                              },
                            ),
                          ],
                        ),
                        CheckboxRowExample(
                          labelText: 'Strata',
                          initialValue: data?.strata ?? false,
                          onChanged: (bool value) {
                            updateParams
                                .updateParam((e) => e.copyWith(STRATA: value));
                          },
                        ),
                        CheckboxRowExample(
                          labelText: 'Water',
                          initialValue: data?.water ?? false,
                          onChanged: (bool value) {
                            updateParams
                                .updateParam((e) => e.copyWith(Water: value));
                          },
                        ),
                        CheckboxRowExample(
                          labelText: 'Council Rates',
                          initialValue: data?.councilRates ?? false,
                          onChanged: (bool value) {
                            updateParams.updateParam(
                                (e) => e.copyWith(CouncilRates: value));
                          },
                        ),
                        CheckboxRowExample(
                          labelText: 'Insurance',
                          initialValue: data?.insurance ?? false,
                          onChanged: (bool value) {
                            updateParams.updateParam(
                                (e) => e.copyWith(Insurance: value));
                          },
                        ),
                        16.verticalSpace,
                        Divider(
                          color: Colors.grey.withValues(alpha: 0.5),
                        ),
                        16.verticalSpace,
                        HeadingText(text: AppString.rental.toUpperCase()),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.pAccountName!=null?data?.pAccountName.toString():'',
                          hintText: 'A/C Name',
                          lable: 'A/C Name',
                          onSaved: (val) {
                            updateParams.updateParam(
                                (e) => e.copyWith(PAccountName: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.pbsb!=null?data?.pbsb.toString():'',
                          hintText: 'BSB',
                          lable: 'BSB',
                          onSaved: (val){
                            updateParams.updateParam(
                                (e) => e.copyWith(PBSB: val));
                          },
                        ),
                        16.verticalSpace,
                        AppTextFiled(
                          initialValue: data?.pAccountNo!=null?data?.pAccountNo.toString():'',
                          hintText: 'Account Number',
                          lable: 'Account Number',
                          onSaved: (val) {
                            updateParams.updateParam(
                                (e) => e.copyWith(PAccountNo: val));
                          },
                        ),
                        32.verticalSpace,
                        PrimaryButton(
                            title: 'Next',
                            onClick: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                ref
                                    .read(updateManagementAgreementProvider
                                        .notifier)
                                    .updateTribunalFees();
                              }
                            }),
                        24.verticalSpace
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
