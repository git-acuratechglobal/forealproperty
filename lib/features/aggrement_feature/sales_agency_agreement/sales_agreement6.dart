import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/common_widgets.dart';
import '../../../common/constants/app_strings.dart';
import '../../../core/utils/appbutton.dart';
import '../../agreement19/manage_agreement_tab.dart';
import '../../home_features/pages/home/openhouse/addopenhomes.dart';
import 'widgets/heading_text.dart';
import 'widgets/sub_heading_text.dart';

class SalesAgreement6 extends HookConsumerWidget {
  const SalesAgreement6({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = useState<String?>(null);
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
              text: 'ADVERTISING AND PROMOTION',
            ),
            20.verticalSpace,
            const SubHeadingText(text: 'Manner of Advertising and Promotion:'),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SubHeadingText(text: 'Property Photos'),
                CustomCupertinoToggle(
                  initialValue: false,
                  onChanged: (val) {},
                )
              ],
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SubHeadingText(text: 'Social Media Campaign'),
                CustomCupertinoToggle(
                  initialValue: false,
                  onChanged: (val) {},
                )
              ],
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SubHeadingText(text: 'Listing on Domain.com.au'),
                CustomCupertinoToggle(
                  initialValue: false,
                  onChanged: (val) {},
                )
              ],
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SubHeadingText(text: 'Floor Plans'),
                CustomCupertinoToggle(
                  initialValue: false,
                  onChanged: (val) {},
                )
              ],
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SubHeadingText(text: 'Listing on Realestate.com.au'),
                CustomCupertinoToggle(
                  initialValue: false,
                  onChanged: (val) {},
                )
              ],
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SubHeadingText(text: 'Signboard Outside the property'),
                CustomCupertinoToggle(
                  initialValue: false,
                  onChanged: (val) {},
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
            const AppTextFiled(
                lable:
                    "Inspection may be conducted in the following circumstances",
                hintText: "Nil"),
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
                  initialValue: false,
                  onChanged: (val) {},
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
                    child: const SubHeadingText(text: AppStrings.subjectText)),
                40.horizontalSpace,
                CustomCupertinoToggle(
                  initialValue: false,
                  onChanged: (val) {},
                )
              ],
            ),
            20.verticalSpace,
            const Divider(
              color: Color(0xffE2E2E2),
            ),
            20.verticalSpace,
            const HeadingText(
              text: 'DISCLOSURE OF REBATES, DISCOUNTS AND COMMISSIONS',
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const SubHeadingText(
                        text: 'Name of Source of Rebate:',
                      ),
                      48.verticalSpace,
                      const AppTextFiled(hintText: "Nil"),
                      20.verticalSpace,
                      const AppTextFiled(hintText: "")
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
                      const AppTextFiled(hintText: "Nil"),
                      20.verticalSpace,
                      const AppTextFiled(hintText: "")
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
                  initialValue: false,
                  onChanged: (val) {},
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
                  initialValue: false,
                  onChanged: (val) {},
                )
              ],
            ),
            20.verticalSpace,
            const SubHeadingText(
              text: 'Date Provided:',
            ),
            10.verticalSpace,
            DatePickerDropdown(
              validator: (value) => value == null || value.trim().isEmpty
                  ? 'This field is required'
                  : null,
              selectedDate: selectedDate.value,
              onDateSelected: (date) {
                selectedDate.value = date;
              },
              hintText: 'mm-dd-yyyy',
            ),
            60.verticalSpace,
            PrimaryButton(
                title: "Send",
                onClick: () {
                  context.push(const ManageAgreementTab());
                }),
            60.verticalSpace,
          ],
        ),
      ),
    );
  }
}
