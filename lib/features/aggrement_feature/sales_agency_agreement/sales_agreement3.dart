import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/providers/get_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/providers/params_providers.dart';
import 'package:foreal_property/features/aggrement_feature/providers/update_sales_agreement.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/sales_agreement4.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../common/common_widgets.dart';
import '../../../common/constants/app_strings.dart';
import '../../../core/utils/appbutton.dart';
import '../../home_features/pages/home/openhouse/addopenhomes.dart';
import 'widgets/heading_text.dart';

class SalesAgreement3 extends HookConsumerWidget {
  const SalesAgreement3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final fromDate = useState<String?>(null);
    final toDate = useState<String?>(null);
    final methodOfSale = useState<String?>(null);
    final methodOfSaleList =
        useState(['Private Treaty', 'Auction', 'Sale By Negotiation']);
    final periodParam = ref.read(updatePeriodDetailsParamProvider.notifier);
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
                    print('Ui rebuild from here');
                    return Column(
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
                                  width: 0.4.sw,
                                  child: DatePickerDropdown(
                                    isSelectAnyDate: true,
                                    validator: (value) =>
                                        value == null || value.trim().isEmpty
                                            ? 'This field is required'
                                            : null,
                                    selectedDate: fromDate.value ??
                                        data?.formattedAgreementStart,
                                    onDateSelected: (date) {
                                      final selectedDate =
                                          DateFormat("dd-MM-yyyy").parse(date!);

                                      final selectedToDate = selectedDate
                                          .add(const Duration(days: 90));

                                      final fromDateStr =
                                          DateFormat("dd-MM-yyyy")
                                              .format(selectedDate);

                                      final toDateStr = DateFormat("dd-MM-yyyy")
                                          .format(selectedToDate);

                                      fromDate.value = fromDateStr;

                                      toDate.value = toDateStr;
                                    },
                                    hintText: 'mm-dd-yyyy',
                                    onSaved: (val) {
                                      if (val == null || val.isEmpty) return;
                                      final date =
                                          DateFormat("dd-MM-yyyy").parse(val);
                                      periodParam.updateParam((e) => e.copyWith(
                                            AgreementStartDate: date,
                                          ));
                                    },
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
                                  width: 0.4.sw,
                                  child: DatePickerDropdown(
                                    validator: (value) =>
                                        value == null || value.trim().isEmpty
                                            ? 'This field is required'
                                            : null,
                                    selectedDate: toDate.value ??
                                        data?.formattedAgreementEnd,
                                    onDateSelected: (date) {
                                      toDate.value = date;
                                    },
                                    hintText: 'mm-dd-yyyy',
                                    onSaved: (val) {
                                      if (val == null || val.isEmpty) return;
                                      final date =
                                          DateFormat("dd-MM-yyyy").parse(val);
                                      periodParam.updateParam((e) => e.copyWith(
                                            AgreementEndDate: date,
                                          ));
                                    },
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
                                child: const SubHeadingText(
                                    text: 'Property Address')),
                            SizedBox(
                              width: 170.w,
                              child: Text(
                                maxLines: 2,
                                textAlign: TextAlign.end,
                                data?.propertyAddress ?? "",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w800),
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
                                        'Items (Fixture/Fittings) to be included')),
                            SizedBox(
                              width: 140.w,
                              child: Text(
                                textAlign: TextAlign.end,
                                "As Per Contract",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w800),
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
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w800),
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
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w800),
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
                        AppTextFiled(
                          initialValue: data?.termsAndConditionsOfSale ?? '',
                          lable:
                              'Terms and Conditions of Sale Known to the Licensee',
                          hintText: "Nil",
                          onSaved: (val) {
                            periodParam.updateParam((e) => e.copyWith(
                                  TermsAndConditionsOfSale: val,
                                ));
                          },
                        ),
                        10.verticalSpace,
                        AppTextFiled(
                          initialValue:
                              data?.splInstructionAboutMarketing ?? '',
                          lable:
                              "Special Instructions about the Marketing and Showing of the Property",
                          hintText: "Nil",
                          onSaved: (val) {
                            periodParam.updateParam((e) => e.copyWith(
                                  SplInstructionAboutMarketing: val,
                                ));
                          },
                        ),
                        20.verticalSpace,
                        const HeadingText(text: 'Price'),
                        20.verticalSpace,
                        AppTextFiled(
                          controller: periodParam.priceController,
                          lable:
                              'Price at which the Property is to be offered (including GST if any)',
                          hintText: "Nil",
                          onChanged: (val){
                            periodParam.updateFromTo(val);
                          },
                          onSaved: (val) {
                            if (val == null || val.isEmpty) return;

                            periodParam.updateParam((e) =>
                                e.copyWith(SellingFixedPrice: int.parse(val)));
                          },
                          validator: (val){
                            if (val == null || val.isEmpty) {
                              return "Field is required";
                            }
                            return null;
                          },
                        ),
                        10.verticalSpace,
                        const SubHeadingText(
                            text:
                                "Licensee's Recommendation as to the Most Suitable Method of Sale"),

                        8.verticalSpace,
                        WidgetDropdown(
                          propertyOptions: methodOfSaleList.value,
                          selectedValue: methodOfSale.value ??
                              ((data?.licenceeRecomendMethodOfSale != null &&
                                      data!.licenceeRecomendMethodOfSale! >
                                          0 &&
                                      data.licenceeRecomendMethodOfSale! <=
                                          methodOfSaleList.value.length)
                                  ? methodOfSaleList.value[
                                      data.licenceeRecomendMethodOfSale! - 1]
                                  : null),
                          onChanged: (String? value) {
                            if (value != null) {
                              methodOfSale.value = value;
                              periodParam.updateParam((e) => e.copyWith(
                                    LicenceeRecomendMethodOfSale:
                                        value == "Private Treaty"
                                            ? 1
                                            : value == "Auction"
                                                ? 2
                                                : 3,
                                  ));
                            }
                          },
                          hintText: 'Method of Sale',
                          suffixIcon:
                              const Icon(Icons.keyboard_arrow_down_outlined),
                        ),
                        10.verticalSpace,
                        const SubHeadingText(
                            text:
                                'Agents opinion as to current estimated selling price range:'),

                        8.verticalSpace,
                        AppTextFiled(
                          controller: periodParam.fromController,
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
                          hintText: "0.0",
                          onChanged: (val) {
                            periodParam.updateTo(val);
                          },
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return "This field is required";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            if (val == null || val.isEmpty) return;
                            periodParam.updateParam((e) => e.copyWith(
                                  SellingPriceFrom: int.parse(val),
                                ));
                          },
                        ),
                        10.verticalSpace,
                        AppTextFiled(
                          controller: periodParam.toController,
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
                                  "To \$",
                                  style: TextStyle(fontSize: 12),
                                )),
                              ),
                            ),
                          ),
                          hintText: "0.0",
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return "This field is required";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            if (val == null || val.isEmpty) return;
                            periodParam.updateParam((e) => e.copyWith(
                                  SellingPriceTo: double.parse(val).toInt(),
                                ));
                          },
                        ),
                        60.verticalSpace,
                        PrimaryButton(
                            title: "Next",
                            onClick: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                ref
                                    .read(updateSalesAgreementProvider.notifier)
                                    .updateSalesForm3(data?.propertyUId??'');
                              }
                              // context.navPush(const SalesAgreement4());
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
                    );
                  })),
        ),
      ),
    );
  }
}
