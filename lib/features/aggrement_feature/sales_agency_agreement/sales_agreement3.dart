import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/sales_agreement4.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/common_widgets.dart';
import '../../../common/constants/app_strings.dart';
import '../../../core/utils/appbutton.dart';
import '../../home_features/pages/home/openhouse/addopenhomes.dart';
import 'widgets/heading_text.dart';

class SalesAgreement3 extends HookConsumerWidget {
  const SalesAgreement3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState<bool>(false);
    final fromDate = useState<String?>(null);
    final toDate = useState<String?>(null);
    final methodOfSale = useState<String?>(null);
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
            const HeadingText(text: "AGENCY PERIOD"),

            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SubHeadingText(text: 'From Date'),
                    10.verticalSpace,
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: DatePickerDropdown(
                        validator: (value) =>
                            value == null || value.trim().isEmpty
                                ? 'This field is required'
                                : null,
                        selectedDate: fromDate.value,
                        onDateSelected: (date) {
                          fromDate.value = date;
                          // ref
                          //     .read(openHomeParamsDataProvider.notifier)
                          //     .update((p) => p.copyWith(eventDate: date));
                        },
                        hintText: 'mm-dd-yyyy',
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SubHeadingText(text: 'To Date'),
                    10.verticalSpace,
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: DatePickerDropdown(
                        validator: (value) =>
                            value == null || value.trim().isEmpty
                                ? 'This field is required'
                                : null,
                        selectedDate: toDate.value,
                        onDateSelected: (date) {
                          toDate.value = date;
                          // ref
                          //     .read(openHomeParamsDataProvider.notifier)
                          //     .update((p) => p.copyWith(eventDate: date));
                        },
                        hintText: 'mm-dd-yyyy',
                      ),
                    ),
                  ],
                )
              ],
            ),
            10.verticalSpace,
            Text(
              "Inclusive now called the 'Exclusive Agency Period'",
              style: TextStyle(
                  color: const Color(0XFF7d8089),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400),
            ),
            15.verticalSpace,
            const Divider(
              color: Color(0xffE2E2E2),
            ),
            15.verticalSpace,
            const HeadingText(text: AppStrings.propertyDescription),
            10.verticalSpace,
            Text(
              AppStrings.propertyDescription1,
              style: TextStyle(
                  color: const Color(0XFF8e919a),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400),
            ),
            20.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 150.w,
                    child: const SubHeadingText(text: 'Property Address')),
                SizedBox(
                  width: 170.w,
                  child: Text(
                    textAlign: TextAlign.end,
                    "27 Kingsford Avenue, Eastwood, 2122",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 14.sp, fontWeight: FontWeight.w800),
                  ),
                )
              ],
            ),
            15.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 180.w,
                    child: const SubHeadingText(
                        text: 'Items (Fixture/Fittings) to be included')),
                SizedBox(
                  width: 140.w,
                  child: Text(
                    textAlign: TextAlign.end,
                    "As Per Contract",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 14.sp, fontWeight: FontWeight.w800),
                  ),
                )
              ],
            ),
            15.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 180.w,
                    child: const SubHeadingText(
                        text:
                            'Refer to the contract when available Items (Fixture/Fittings) to be excluded')),
                SizedBox(
                  width: 140.w,
                  child: Text(
                    textAlign: TextAlign.end,
                    "As Per Contract",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 14.sp, fontWeight: FontWeight.w800),
                  ),
                )
              ],
            ),
            15.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 190.w,
                    child: const SubHeadingText(
                        text:
                            'Easements/Covenants/Defects/Local Government Notices/Orders affecting the Property Known to the Lincesee')),
                SizedBox(
                  width: 130.w,
                  child: Text(
                    textAlign: TextAlign.end,
                    "As Per Contract",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 14.sp, fontWeight: FontWeight.w800),
                  ),
                )
              ],
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SubHeadingText(text: 'Occupation:'),
                CustomCupertinoToggle(
                  initialValue: false,
                  trueLabel: 'Y',
                  falseLabel: 'N',
                  onChanged: (value) {},
                  // onChanged: (value) {
                  //   print('Toggled to: $value');
                  // },
                ),
              ],
            ),
            20.verticalSpace,
            const AppTextFiled(
                lable: 'Terms and Conditions of Sale Known to the Licensee',
                hintText: "Nil"),
            10.verticalSpace,
            const AppTextFiled(
                lable:
                    "Special Instructions about the Marketing and Showing of the Property",
                hintText: "Nil"),
            20.verticalSpace,
            const HeadingText(text: 'Price'),
            20.verticalSpace,
            const AppTextFiled(
                lable:
                    'Price at which the Property is to be offered (including GST if any)',
                hintText: "Nil"),
            10.verticalSpace,
            const SubHeadingText(
                text:
                    "Licensee's Recommendation as to the Most Suitable Method of Sale"),

            8.verticalSpace,
            SizedBox(
              height: 60,
              child: WidgetDropdown(
                propertyOptions: const ['Private Treaty'],
                selectedValue: methodOfSale.value,
                onChanged: (String? value) {
                  if (value != null) {
                    methodOfSale.value = value;
                  }
                },
                hintText: 'Method of Sale',
                suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),
              ),
            ),
            10.verticalSpace,
            const SubHeadingText(
                text:
                    'Agents opinion as to current estimated selling price range:'),

            8.verticalSpace,
            Row(
              children: [
                Expanded(
                    child: AppTextFiled(
                        prefixIcon: Container(
                          margin: const EdgeInsets.only(left: 6),
                          decoration: BoxDecoration(
                              color: const Color(0xffebf3f5),
                              borderRadius: BorderRadius.circular(8)),
                          child: const SizedBox(
                            width: 70,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Center(
                                  child: Text(
                                "From \$",
                                style: TextStyle(fontSize: 12),
                              )),
                            ),
                          ),
                        ),
                        hintText: "0.0")),
                10.horizontalSpace,
                Expanded(
                    child: AppTextFiled(
                  prefixIcon: Container(
                    margin: const EdgeInsets.only(left: 6),
                    decoration: BoxDecoration(
                        color: const Color(0xffebf3f5),
                        borderRadius: BorderRadius.circular(8)),
                    child: const SizedBox(
                      width: 70,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Center(
                            child: Text(
                          "To \$",
                          style: TextStyle(fontSize: 12),
                        )),
                      ),
                    ),
                  ),
                  hintText: "0.0",
                )),
              ],
            ),
            60.verticalSpace,
            PrimaryButton(
                isLoading: isLoading.value,
                title: "Save & Next",
                onClick: () {
                  context.push(const SalesAgreement4());
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
            //               context.navigateTo(const SalesAgreement4());
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
