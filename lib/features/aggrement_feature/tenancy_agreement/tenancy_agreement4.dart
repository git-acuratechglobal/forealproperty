import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/appbutton.dart';
import '../../agreement19/manage_agreement_tab.dart';
import '../sales_agency_agreement/widgets/text_field.dart';

class TenancyAgreement4 extends HookConsumerWidget {
  const TenancyAgreement4({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyle = Theme.of(context).textTheme;
    final alarmsList = [
      "Hardwired smoke alarms",
      "Battery operated smoke alarms",
    ];
    final selectedAlarm = useState<String?>(null);
    return Scaffold(
      backgroundColor: const Color(0XFFf2f6f7),
      appBar: AppBar(
        title: const Text('Tenancy Agreement'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadingText(
              text: "Maximum number of occupants",
            ),
            10.verticalSpace,
            const AppTextFiled(
              lable: 'No more than',
              hintText: 'No more than',
            ),
            20.verticalSpace,
            const HeadingText(
              text: "Urgent repairs",
            ),
            10.verticalSpace,
            const AppTextFiled(
                lable: 'Electrical Repair', hintText: 'Electrical Repair'),
            10.verticalSpace,
            const AppTextFiled(lable: 'Telephone', hintText: 'Telephone'),
            10.verticalSpace,
            const AppTextFiled(
                lable: 'Plumbing Repairs', hintText: 'Plumbing Repairs'),
            10.verticalSpace,
            const AppTextFiled(lable: 'Telephone', hintText: 'Telephone'),
            10.verticalSpace,
            const AppTextFiled(
                lable: 'Other Repairs', hintText: 'Other Repairs'),
            10.verticalSpace,
            const AppTextFiled(lable: 'Telephone', hintText: 'Telephone'),
            25.verticalSpace,
            const HeadingText(
              text: "Water usage",
            ),
            10.verticalSpace,
            Row(
              children: [
                const Expanded(
                    child: SubHeadingText(
                  text:
                      "Will the tenant be required to pay separately for water usage?",
                )),
                10.horizontalSpace,
                CustomCupertinoToggle(initialValue: false, onChanged: (val) {})
              ],
            ),
            25.verticalSpace,
            const HeadingText(
              text: "Utilities",
            ),
            10.verticalSpace,
            Row(
              children: [
                const Expanded(
                    child: SubHeadingText(
                  text:
                      "Is electricity supplied to the premises from an embedded network?",
                )),
                10.horizontalSpace,
                CustomCupertinoToggle(initialValue: false, onChanged: (val) {})
              ],
            ),
            10.verticalSpace,
            Row(
              children: [
                const Expanded(
                    child: SubHeadingText(
                  text:
                      "Is gas supplied to the premises from an embedded network?",
                )),
                10.horizontalSpace,
                CustomCupertinoToggle(initialValue: false, onChanged: (val) {})
              ],
            ),
            25.verticalSpace,
            Text(
              "Smoke Alarms",
              style: textStyle.bodyLarge?.copyWith(
                color: const Color(0xff164C63),
              ),
            ),
            10.verticalSpace,
            const SubHeadingText(
              text:
                  "Indicate whether the smoke alarms installed in the residential premises are hardwired or battery operated",
            ),
            10.verticalSpace,
            Wrap(
              direction: Axis.vertical,
              // spacing: 20,
              runSpacing: 8,
              children: alarmsList.map((duration) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: RadioListTile<String>(
                    fillColor: WidgetStateProperty.all(Colors.black),
                    contentPadding: EdgeInsets.zero,
                    title: SubHeadingText(
                      text: duration,
                    ),
                    value: duration,
                    groupValue: selectedAlarm.value,
                    onChanged: (value) {
                      selectedAlarm.value = value;
                    },
                  ),
                );
              }).toList(),
            ),
            25.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    child: SubHeadingText(
                  text:
                      "If the smoke alarms are battery operated, are the batteries in the smoke alarms of a kind the tenant can replace?",
                )),
                10.horizontalSpace,
                CustomCupertinoToggle(
                  initialValue: false,
                  onChanged: (val) {},
                )
              ],
            ),
            15.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    child: SubHeadingText(
                  text:
                      "If yes, specify the type of battery that needs to be used if the battery in the smoke alarm needs to be replaced:",
                )),
                15.horizontalSpace,
                const SizedBox(
                    width: 140, child: AppTextFiled(hintText: '9v Alkaline')),
              ],
            ),
            15.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    child: SubHeadingText(
                  text:
                      "If the smoke alarms are hardwired, are the back-up batteries in the smoke alarms of a kind the tenant can replace?",
                )),
                10.horizontalSpace,
                CustomCupertinoToggle(
                  initialValue: false,
                  onChanged: (val) {},
                ),
              ],
            ),
            15.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    child: SubHeadingText(
                  text:
                      "If yes, specify the type of back-up battery that needs to be used if the back-up battery in the smoke alarm needs to be replaced:",
                )),
                10.horizontalSpace,
                const SizedBox(
                    width: 140, child: AppTextFiled(hintText: '9v Alkaline')),
              ],
            ),
            15.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    child: SubHeadingText(
                  text:
                      "If the Strata Schemes Management Act 2015 applies to the residential premises, is the owners corporation of the strata scheme responsible for the repair and replacement of smoke alarms in the residential premises?",
                )),
                10.horizontalSpace,
                CustomCupertinoToggle(
                  initialValue: false,
                  onChanged: (val) {},
                ),
              ],
            ),
            15.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    child: SubHeadingText(
                  text:
                      "Are there any strata or community scheme by-laws applicable to the residential premises?",
                )),
                10.horizontalSpace,
                CustomCupertinoToggle(
                  initialValue: false,
                  onChanged: (val) {},
                ),
              ],
            ),
            20.verticalSpace,
            const HeadingText(
              text: "Landlord",
            ),
            10.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    child: SubHeadingText(
                  text:
                      "Does the landlord give express consent to the electronic service of notices and documents?",
                )),
                10.horizontalSpace,
                CustomCupertinoToggle(
                  initialValue: false,
                  onChanged: (val) {},
                ),
              ],
            ),
            10.verticalSpace,
            Text(
              "[Specify email address to be used for the purpose of serving notices and documents.]",
              style: TextStyle(
                  color: const Color(0XFF7d8089),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400),
            ),
            15.verticalSpace,
            const AppTextFiled(hintText: "Email Address"),
            20.verticalSpace,
            const HeadingText(
              text: "Tenant",
            ),
            10.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                    child: SubHeadingText(
                  text:
                      "Does the tenant give express consent to the electronic service of notices and documents?",
                )),
                10.horizontalSpace,
                CustomCupertinoToggle(
                  initialValue: false,
                  onChanged: (val) {},
                ),
              ],
            ),
            10.verticalSpace,
            Text(
              "[Specify email address to be used for the purpose of serving notices and documents.]",
              style: TextStyle(
                  color: const Color(0XFF7d8089),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400),
            ),
            15.verticalSpace,
            const AppTextFiled(hintText: "Email Address"),
            10.verticalSpace,
            const AppTextFiled(lable: 'Pet Details', hintText: 'Nil'),
            10.verticalSpace,
            const AppTextFiled(lable: 'Additional Terms', hintText: 'Nil'),
            60.verticalSpace,
            PrimaryButton(
                title: "Save & Next",
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
