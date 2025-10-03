import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/appbutton.dart';
import 'widgets/heading_text.dart';

class SalesAgreement5 extends HookConsumerWidget {
  const SalesAgreement5({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final param = ref.read(expensesChargeDetailsParamProvider.notifier);

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
                          text: 'EXPENSES AND CHARGES',
                        ),
                        20.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SubHeadingText(text: "Include GST"),
                            CustomCupertinoToggle(
                              initialValue: true,
                              onChanged: (val) {},
                            )
                          ],
                        ),
                        30.verticalSpace,
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                      height: 47,
                                      child: SubHeadingText(text: "Services")),
                                  8.verticalSpace,
                                  AppTextFiled(
                                    controller: param.expenseANDChargesService1,
                                    hintText: "Marketing Fee",
                                    onSaved: (val) {
                                      param.updateParam((e) => e.copyWith(
                                            ExpenseANDChargesService1: val,
                                          ));
                                    },
                                  ),
                                  40.verticalSpace,
                                  AppTextFiled(
                                    controller: param.expenseANDChargesService2,
                                    hintText: "Nil",
                                    onSaved: (val) {
                                      param.updateParam((e) => e.copyWith(
                                            ExpenseANDChargesService2: val,
                                          ));
                                    },
                                  ),
                                ],
                              ),
                            ),
                            20.horizontalSpace,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                      height: 47,
                                      child: SubHeadingText(text: "Amount \$")),
                                  8.verticalSpace,
                                  AppTextFiled(
                                    controller:
                                        param.expenseANDChargesEstimate1,
                                    hintText: "Marketing Fee",
                                    onSaved: (val) {
                                      if (val == null) return;
                                      param.updateParam((e) => e.copyWith(
                                            ExpenseANDChargesEstimate1:
                                                int.parse(val),
                                          ));
                                    },
                                  ),
                                  10.verticalSpace,
                                  Text(
                                    "GST : 300.00",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  16.verticalSpace,
                                  AppTextFiled(
                                    controller:
                                        param.expenseANDChargesEstimate2,
                                    hintText: "Nil",
                                    onSaved: (val) {
                                      if (val == null) return;
                                      final amount = double.tryParse(val);
                                      param.updateParam((e) => e.copyWith(
                                          ExpenseANDChargesEstimate1:
                                              int.parse(val),
                                          ExpenseANDChargesEstimateGST2:
                                              (amount! * 0.10).toString()));
                                    },
                                    onChanged: (val) {
                                     param.updateAmount(val);
                                    },
                                  ),
                                  if (param.gst2Cntrl.text.isNotEmpty) ...[
                                    10.verticalSpace,
                                    Text(
                                      "GST : ${param.gst2Cntrl.text}",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ]
                                ],
                              ),
                            ),
                            20.horizontalSpace,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                      height: 47,
                                      child: SubHeadingText(
                                          text: 'When due and payable')),
                                  8.verticalSpace,
                                  AppTextFiled(
                                    controller: param.expenseANDChargesdue1,
                                    hintText: "Marketing Fee",
                                    onSaved: (val) {
                                      param.updateParam((e) => e.copyWith(
                                            ExpenseANDChargesdue1: val,
                                          ));
                                    },
                                  ),
                                  40.verticalSpace,
                                  AppTextFiled(
                                    controller: param.expenseANDChargesdue2,
                                    hintText: "Nil",
                                    onSaved: (val) {
                                      param.updateParam((e) => e.copyWith(
                                            ExpenseANDChargesdue2: val,
                                          ));
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        20.verticalSpace,
                        const Divider(
                          color: Color(0xffE2E2E2),
                        ),
                        20.verticalSpace,
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                      height: 47,
                                      child: SubHeadingText(text: 'Services')),
                                  8.verticalSpace,
                                  AppTextFiled(
                                    controller: param.otherServicesService1,
                                    hintText: "Nil",
                                    onSaved: (val) {
                                      param.updateParam((e) => e.copyWith(
                                            OtherServicesService1: val,
                                          ));
                                    },
                                  ),
                                  20.verticalSpace,
                                  AppTextFiled(
                                    controller: param.otherServicesService2,
                                    hintText: "Nil",
                                    onSaved: (val) {
                                      param.updateParam((e) => e.copyWith(
                                            OtherServicesService2: val,
                                          ));
                                    },
                                  ),
                                ],
                              ),
                            ),
                            20.horizontalSpace,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                      height: 47,
                                      child:
                                          SubHeadingText(text: "\$ (GST Inc)")),
                                  8.verticalSpace,
                                  AppTextFiled(
                                    controller: param.otherServicesGST1,
                                    hintText: "0",
                                    onSaved: (val) {
                                      if (val == null) return;
                                      param.updateParam((e) => e.copyWith(
                                            OtherServicesGST1: int.parse(val),
                                          ));
                                    },
                                  ),
                                  20.verticalSpace,
                                  AppTextFiled(
                                    controller: param.otherServicesGST2,
                                    hintText: "0",
                                    onSaved: (val) {
                                      if (val == null) return;
                                      param.updateParam((e) => e.copyWith(
                                            OtherServicesGST2: int.parse(val),
                                          ));
                                    },
                                  ),
                                ],
                              ),
                            ),
                            20.horizontalSpace,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                      height: 47,
                                      child: SubHeadingText(
                                          text: "When due and payable")),
                                  8.verticalSpace,
                                  AppTextFiled(
                                    controller: param.otherServicesdue1,
                                    hintText: "Nil",
                                    onSaved: (val) {
                                      param.updateParam((e) => e.copyWith(
                                            OtherServicesdue1: val,
                                          ));
                                    },
                                  ),
                                  20.verticalSpace,
                                  AppTextFiled(
                                    controller: param.otherServicesdue2,
                                    hintText: "Nil",
                                    onSaved: (val) {
                                      param.updateParam((e) => e.copyWith(
                                            OtherServicesdue1: val,
                                          ));
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        20.verticalSpace,
                        Text(
                          "Those services and amounts cannot be varied except with the agreement in writing of the Principal.",
                          style: TextStyle(
                              color: const Color(0XFF7d8089),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        60.verticalSpace,
                        PrimaryButton(
                            title: "Next",
                            onClick: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                ref
                                    .read(updateSalesAgreementProvider.notifier)
                                    .updateSalesForm5();
                              }
                            }),
                        60.verticalSpace
                      ],
                    );
                  })),
        ),
      ),
    );
  }
}
