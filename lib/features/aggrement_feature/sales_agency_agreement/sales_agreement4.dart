import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/sales_agreement5.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/common_widgets.dart';
import '../../../core/utils/appbutton.dart';
import 'widgets/heading_text.dart';
import 'widgets/sub_heading_text.dart';

class SalesAgreement4 extends HookConsumerWidget {
  const SalesAgreement4({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
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
              text: 'REMUNERATION',
            ),
            10.verticalSpace,
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: const Color(0xFF164C63),
                unselectedLabelColor: const Color(0xFF494D60),
                indicatorColor: const Color(0xFF75CBCD),
                dividerColor: const Color(0xFFE2E2E2),
                labelStyle:
                    TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
                unselectedLabelStyle:
                    TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
                dividerHeight: 0,
                controller: tabController,
                tabs: const [
                  Tab(
                    text: 'Percentage',
                  ),
                  Tab(
                    text: 'Fixed Amount',
                  )
                ]),
            SizedBox(
              height: 380.h,
              child: TabBarView(controller: tabController, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.verticalSpace,
                    const AppTextFiled(
                        lable:
                            "(e.g. % of sale price; flat fee; formula e.g. a combination of % and flat fee)",
                        hintText: ""),
                    20.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SubHeadingText(text: "Include GST"),
                        CustomCupertinoToggle(
                          initialValue: false,
                          onChanged: (val) {},
                        ),
                      ],
                    ),
                    20.verticalSpace,
                    const AppTextFiled(
                        lable:
                            "e.g. in relation to the Licensee's ESTIMATE of the sale price of",
                        hintText: ""),
                    10.verticalSpace,
                    const AppTextFiled(
                        lable: "the GST inclusive renumeration would be",
                        hintText: ""),
                  ],
                ),
                const SizedBox()
              ]),
            ),
            const HeadingText(
              text: 'Payment to Principal',
            ),
            20.verticalSpace,
            Text(
              "If money held by the Agent becomes due to the principal, then the Principal directs the Agent to pay that money by",
              style: TextStyle(
                  color: const Color(0XFF7d8089),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400),
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SubHeadingText(text: "Electronic Funds Transfer (EFT):"),
                // 20.horizontalSpace,
                CustomCupertinoToggle(
                  initialValue: false,
                  onChanged: (val) {},
                ),
              ],
            ),
            20.verticalSpace,
            const SubHeadingText(
              text: 'if by EFT:',
            ),
            10.verticalSpace,
            const AppTextFiled(lable: "Account Name", hintText: ""),
            10.verticalSpace,
            const AppTextFiled(lable: "BSB", hintText: ""),
            10.verticalSpace,
            const AppTextFiled(lable: "Account No", hintText: ""),
            60.verticalSpace,
            PrimaryButton(
                title: "Save & Next",
                onClick: () {
                  context.push(const SalesAgreement5());
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
            //               context.navigateTo(const SalesAgreement5());
            //             }))
            //   ],
            // ),
            60.verticalSpace
          ],
        ),
      ),
    );
  }
}
