import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/sales_agreement6.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/appbutton.dart';
import 'widgets/heading_text.dart';

class SalesAgreement5 extends HookConsumerWidget {
  const SalesAgreement5({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0XFFf2f6f7),
      appBar: AppBar(
        title: const Text('Sales Agreement'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
        child: Column(
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
                  initialValue: false,
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
                          height: 47, child: SubHeadingText(text: "Services")),
                      8.verticalSpace,
                      const AppTextFiled(hintText: "Marketing Fee"),
                      40.verticalSpace,
                      const AppTextFiled(hintText: "Nil"),
                    ],
                  ),
                ),
                20.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                          height: 47, child: SubHeadingText(text: "Amount \$")),
                      8.verticalSpace,
                      const AppTextFiled(hintText: "Marketing Fee"),
                      10.verticalSpace,
                      Text(
                        "GST : 300.00",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      16.verticalSpace,
                      const AppTextFiled(hintText: "Nil"),
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
                          child: SubHeadingText(text: 'When due and payable')),
                      8.verticalSpace,
                      const AppTextFiled(hintText: "Marketing Fee"),
                      40.verticalSpace,
                      const AppTextFiled(hintText: "Nil"),
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
                          height: 47, child: SubHeadingText(text: 'Services')),
                      8.verticalSpace,
                      const AppTextFiled(hintText: "Nil"),
                      20.verticalSpace,
                      const AppTextFiled(hintText: "Nil"),
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
                          child: SubHeadingText(text: "\$ (GST Inc)")),
                      8.verticalSpace,
                      const AppTextFiled(hintText: "0"),
                      20.verticalSpace,
                      const AppTextFiled(hintText: "0"),
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
                          child: SubHeadingText(text: "When due and payable")),
                      8.verticalSpace,
                      const AppTextFiled(hintText: "Nil"),
                      20.verticalSpace,
                      const AppTextFiled(hintText: "Nil"),
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
                title: "Save & Next",
                onClick: () {
                  context.push(const SalesAgreement6());
                }),
            60.verticalSpace
          ],
        ),
      ),
    );
  }
}
