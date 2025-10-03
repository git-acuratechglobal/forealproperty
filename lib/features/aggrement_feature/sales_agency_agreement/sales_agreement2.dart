import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/appbutton.dart';
import '../providers/params_providers.dart';
import 'widgets/heading_text.dart';

class SalesAgreement2 extends HookConsumerWidget {
  const SalesAgreement2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final updateSolicitorParam =
        ref.read(updateSolicitorParamProvider.notifier);
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
                child: AsyncWidget(
                    value: ref.watch(getSalesAgreementProvider),
                    data: (data) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const HeadingText(
                            text: 'Agent',
                          ),
                          20.verticalSpace,
                          AppTextFiled(
                            initialValue: data?.agencyName ?? "",
                            isEditable: false,
                            lable: "Business Name",
                            hintText: "Business Name",
                            onChanged: (val) {},
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            initialValue: data?.agencyLicenceNumber ?? "",
                            isEditable: false,
                            lable: "License Number",
                            hintText: "License Number",
                            onChanged: (val) {},
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            initialValue: data?.agencyAbn ?? "",
                            isEditable: false,
                            lable: "ABN/ACN",
                            hintText: "ABN/ACN",
                            onChanged: (val) {},
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            initialValue: data?.tradingName ?? "",
                            isEditable: false,
                            lable: "Trading as",
                            hintText: "Trading as",
                            onChanged: (val) {},
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            initialValue: data?.agencyAddress ?? "",
                            isEditable: false,
                            lable: "Address",
                            hintText: "Address",
                            onChanged: (val) {},
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            lable: "Phone",
                            hintText: "Phone Number",
                            onChanged: (val) {},
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            initialValue: data?.agencyPostCode ?? "",
                            isEditable: false,
                            lable: "Postcode",
                            hintText: "Postcode",
                            onChanged: (val) {},
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            lable: "Fax",
                            hintText: "Fax",
                            onChanged: (val) {},
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            initialValue: data?.mobile ?? "",
                            isEditable: false,
                            lable: "Mobile",
                            hintText: "Mobile Number",
                            onChanged: (val) {},
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            initialValue: data?.agencyEmail ?? "",
                            isEditable: false,
                            lable: "Email Address",
                            hintText: "Email Address",
                            onChanged: (val) {},
                          ),
                          20.verticalSpace,
                          const Divider(
                            color: Color(0xffE2E2E2),
                          ),
                          20.verticalSpace,
                          const HeadingText(
                            text: "PRINCIPLE'S SOLICITOR/LICENSED CONVEYANCER",
                          ),
                          20.verticalSpace,
                          AppTextFiled(
                            controller: updateSolicitorParam.companyNameCtrl,
                            lable: "Company Name",
                            hintText: "Company Name",
                            onSaved: (val) {
                              updateSolicitorParam
                                  .updateParam((e) => e.copyWith(
                                        SolicitorFirmName: val,
                                      ));
                            },
                            // validator: (val){
                            //   if(val!.isEmpty){
                            //     return "Field is required";
                            //   }
                            //   return null;
                            // },
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            controller: updateSolicitorParam.principleCtrl,
                            lable: "Principle Name",
                            hintText: "Principle Name",
                            onSaved: (val) {
                              updateSolicitorParam
                                  .updateParam((e) => e.copyWith(
                                        SolicitorPrincipalName: val,
                                      ));
                            },
                            // validator: (val){
                            //   if(val!.isEmpty){
                            //     return "Field is required";
                            //   }
                            //   return null;
                            // },
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            controller: updateSolicitorParam.addressCtrl,
                            lable: "Address",
                            hintText: "Address",
                            onSaved: (val) {
                              updateSolicitorParam
                                  .updateParam((e) => e.copyWith(
                                        SolicitorAddress: val,
                                      ));
                            },
                            // validator: (val){
                            //   if(val!.isEmpty){
                            //     return "Field is required";
                            //   }
                            //   return null;
                            // },
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            maxLength: 10,
                            inputType: TextInputType.phone,
                            controller: updateSolicitorParam.phoneCtrl,
                            lable: "Phone",
                            hintText: "Phone Number",
                            onSaved: (val) {
                              updateSolicitorParam
                                  .updateParam((e) => e.copyWith(
                                        SolicitorPhone: val,
                                      ));
                            },
                            // validator: (val){
                            //   if(val!.isEmpty){
                            //     return "Field is required";
                            //   }
                            //   return null;
                            // },
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            controller: updateSolicitorParam.faxCtrl,
                            lable: "Fax",
                            hintText: "Fax",
                            onSaved: (val) {
                              updateSolicitorParam
                                  .updateParam((e) => e.copyWith(
                                        SolicitorFax: val,
                                      ));
                            },
                          ),
                          10.verticalSpace,
                          AppTextFiled(
                            controller: updateSolicitorParam.emailCtrl,
                            lable: "Email Address",
                            hintText: "Email Address",
                            onSaved: (val) {
                              updateSolicitorParam
                                  .updateParam((e) => e.copyWith(
                                        SolicitorEmail: val,
                                      ));
                            },
                            // validator: (val){
                            //   if(val!.isEmpty){
                            //     return "Field is required";
                            //   }
                            //   return null;
                            // },
                          ),
                          40.verticalSpace,
                          PrimaryButton(
                              title: "Next",
                              onClick: () {
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState!.save();
                                  ref
                                      .read(
                                          updateSalesAgreementProvider.notifier)
                                      .updateSalesForm2();
                                }
                                // context.navPush(const SalesAgreement3());
                              }),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.end,
                          //   children: [
                          //     SecondaryButton(
                          //         fixedSize: const Size(150, 55),
                          //         onClick: () {},
                          //         title: "Previews"),
                          //     10.horizontalSpace,
                          //     SizedBox(
                          //         width: 150,
                          //         child: PrimaryButton(
                          //             title: "Save & Next",
                          //             onClick: () {
                          //               context.navigateTo(const SalesAgreement3());
                          //             }))
                          //   ],
                          // ),
                          60.verticalSpace
                        ],
                      );
                    }))),
      ),
    );
  }
}
