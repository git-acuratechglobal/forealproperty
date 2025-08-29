import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/tenancy_agreement/tenancy_agreement3.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/appbutton.dart';
import '../../home_features/pages/home/openhouse/addopenhomes.dart';
import '../sales_agency_agreement/widgets/text_field.dart';

class TenancyAgreement2 extends HookConsumerWidget {
  const TenancyAgreement2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final textStyle = Theme.of(context).textTheme;
    final selectedDuration = useState<String?>(null);
    final startDate = useState<String?>(null);
    final endDate = useState<String?>(null);

    final List<String> durations = [
      "6 months",
      "12 months",
      "2 years",
      "3 years",
      "5 years",
      "Periodic (no end date)",
      "Other (Please specify)",
    ];
    return Scaffold(
        backgroundColor: const Color(0XFFf2f6f7),
        appBar: AppBar(
          title: const Text('Tenancy Agreement'),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeadingText(
                  text: "Landlord's agent details [if applicable]",
                ),
                15.verticalSpace,
                const AppTextFiled(
                  lable: 'Agent Name',
                  hintText: 'Agent Name',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'Business Address',
                  hintText: 'Business Address',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'Suburb',
                  hintText: 'Suburb',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'State',
                  hintText: 'State',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'Postcode',
                  hintText: 'Postcode',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'Contact Details',
                  hintText: 'Contact Details',
                ),
                26.verticalSpace,
                const HeadingText(
                  text: "Tenant's agent details [if applicable]",
                ),
                10.verticalSpace,
                const AppTextFiled(
                  lable: 'Agent Name',
                  hintText: 'Agent Name',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'Business Address',
                  hintText: 'Business Address',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'Suburb',
                  hintText: 'Suburb',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'State',
                  hintText: 'State',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'Postcode',
                  hintText: 'Postcode',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'Contact Details',
                  hintText: 'Contact Details',
                ),
                30.verticalSpace,
                const HeadingText(
                  text: "Property ('the property')",
                ),
                Text(
                  ' Description of the Property sufficiently detailed to allow it to be readily identified.',
                  style: TextStyle(
                      color: const Color(0XFF7d8089),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400),
                ),
                15.verticalSpace,
                const AppTextFiled(
                  lable: 'Property Type',
                  hintText: 'Property Type',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'Property Address',
                  hintText: 'Property Address',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'Address',
                  hintText: 'Address',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'Suburb',
                  hintText: 'Suburb',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'State',
                  hintText: 'State',
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'Postcode',
                  hintText: 'Postcode',
                ),
                20.verticalSpace,
                const Row(
                  children: [
                    Expanded(
                      child: AppTextFiled(
                        lable: 'The residential premises include',
                        hintText: 'The residential premises include',
                      ),
                    ),
                  ],
                ),
                30.verticalSpace,
                const HeadingText(
                  text: "Term of agreement",
                ),

                15.verticalSpace,
                const SubHeadingText(
                 text:  'The residential premises include',

                ),
                20.verticalSpace,
                Wrap(
                  spacing: 20,
                  runSpacing: 8,
                  children: durations.map((duration) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: RadioListTile<String>(
                        fillColor: WidgetStateProperty.all(Colors.black),
                        contentPadding: EdgeInsets.zero,
                        title: SubHeadingText(text: duration),
                        value: duration,
                        groupValue: selectedDuration.value,
                        onChanged: (value) {
                          selectedDuration.value = value;
                        },
                      ),
                    );
                  }).toList(),
                ),
                20.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SubHeadingText(
                        text:   "Starting On",
                        ),
                        8.verticalSpace,
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: DatePickerDropdown(
                            validator: (value) =>
                                value == null || value.trim().isEmpty
                                    ? 'This field is required'
                                    : null,
                            selectedDate: startDate.value,
                            onDateSelected: (date) {
                              startDate.value = date;
                            },
                            hintText: 'mm-dd-yyyy',
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SubHeadingText(
                       text:    "Ending On",
                        ),
                        8.verticalSpace,
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: DatePickerDropdown(
                            validator: (value) =>
                                value == null || value.trim().isEmpty
                                    ? 'This field is required'
                                    : null,
                            selectedDate: endDate.value,
                            onDateSelected: (date) {
                              endDate.value = date;
                            },
                            hintText: 'mm-dd-yyyy',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                60.verticalSpace,
                PrimaryButton(
                    title: "Save & Next",
                    onClick: () {
                      context.push(const TenancyAgreement3());
                    }),
                60.verticalSpace,
              ],
            ),
          ),
        ));
  }
}
