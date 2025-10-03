import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_management_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:foreal_property/features/aggrement_feature/management_agreement/manage_agreement4.dart';
import 'package:foreal_property/features/home_features/models/get_property_listing_model.dart';

import '../providers/get_management_agreement.dart';
import '../sales_agency_agreement/widgets/heading_text.dart';

class ManangeAgreement3 extends ConsumerStatefulWidget {
  const ManangeAgreement3({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ManangeAgreement3State();
}

class _ManangeAgreement3State extends ConsumerState<ManangeAgreement3> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final updateParam =
        ref.watch(managementAgreementFeeChargesParamProvider.notifier);
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
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingText(text: 'Fees and charges'.toUpperCase()),
                    20.verticalSpace,
                    AppTextFiled(
                      initialValue: data?.initialWeekRent ?? "",
                      hintText: 'First Week Rent',
                      lable: '1 Week Rent',
                      onSaved: (val) {
                        updateParam.updateParam(
                            (e) => e.copyWith(InitialWeekRent: val));
                      },
                    ),
                    16.verticalSpace,
                    Divider(
                      color: Colors.grey.withValues(alpha: 0.5),
                    ),
                    16.verticalSpace,
                    HeadingText(
                        text:
                            'If the property is leased either:'.toUpperCase()),
                    const SizedBox(height: 12),
                    CheckboxRowExample(
                      labelText: 'During the agreement period',
                      initialValue: data?.prprtyLeasdPrdDuringAgrmnt ?? false,
                      onChanged: (bool value) {
                        updateParam.updateParam((e) =>
                            e.copyWith(PrprtyLeasdPrdDuringAgrmnt: value));
                      },
                    ),
                    12.verticalSpace,
                    CheckboxRowExample(
                      labelText:
                          'Within 60 days of the termination of the\n agreement',
                      initialValue: data?.prprtyLeasdPrdWithinMonth ?? false,
                      onChanged: (bool value) {
                        updateParam.updateParam((e) =>
                            e.copyWith(PrprtyLeasdPrdWithinMonth: value));
                      },
                    ),
                    16.verticalSpace,
                    Divider(
                      color: Colors.grey.withValues(alpha: 0.5),
                    ),
                    16.verticalSpace,
                    HeadingText(
                      text:
                          'The agent shall be entitled to the following ongoing fees'
                              .toUpperCase(),
                    ),
                    20.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SubHeadingText(text: "Include GST"),
                        CustomCupertinoToggle(
                          initialValue: true,
                          trueLabel: 'Y',
                          falseLabel: 'N',
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                    16.verticalSpace,
                    AppTextFiled(
                      initialValue: data?.managementFee.toString() ?? "",
                      hintText: '',
                      lable: 'Management Fee (excl GST)',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Image.asset('assets/images/percentage.png'),
                      ),
                      onSaved: (val) {
                        updateParam.updateParam(
                            (e) => e.copyWith(ManagementFee: int.parse(val!)));
                      },
                    ),
                    4.verticalSpace,
                    // if (gst == '') ...[
                    Text("Gst:0.50",
                        style: TextStyle(
                            fontFamily: "Plus Jakarta Sans",
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp)),
                    // ],
                    // if (gst != '') ...[
                    //   Text(
                    //     "GST:0.$gst",
                    //     style: TextStyle(
                    //         color: const Color(0XFF7d8089),
                    //         fontSize: 13.sp,
                    //         fontWeight: FontWeight.w400),
                    //   ),
                    // ],
                    Text(
                      "all monies collected on behalf of the Principal",
                      style: TextStyle(
                          color: const Color(0XFF7d8089),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    16.verticalSpace,
                    AppTextFiled(
                      initialValue: data?.marketingFee.toString() ?? "",
                      hintText: '',
                      lable: 'Marketing Fee of',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Image.asset('assets/images/dollor.png'),
                      ),
                      onSaved: (val) {
                        updateParam.updateParam(
                            (e) => e.copyWith(MarketingFee: int.parse(val!)));
                      },
                    ),
                    4.verticalSpace,
                    Text(
                      "Once property becomes vacant",
                      style: TextStyle(
                          color: const Color(0XFF7d8089),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    16.verticalSpace,
                    AppTextFiled(
                      initialValue: data?.administrationFee.toString() ?? "",
                      hintText: '',
                      lable: 'An Administration Fee of',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Image.asset('assets/images/dollor.png'),
                      ),
                      onSaved: (val) {
                        updateParam.updateParam((e) =>
                            e.copyWith(AdministrationFee: int.parse(val!)));
                      },
                    ),
                    4.verticalSpace,
                    Text("Per Month",
                        style: TextStyle(
                            color: const Color(0XFF7d8089),
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400)),
                    32.verticalSpace,
                    PrimaryButton(
                        title: 'Next',
                        onClick: () {
                          if(_formKey.currentState!.validate()){
                            _formKey.currentState!.save();
                            ref.read(updateManagementAgreementProvider.notifier).updateAgreementFeeCharges();
                          }

                        }),
                    24.verticalSpace,
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
