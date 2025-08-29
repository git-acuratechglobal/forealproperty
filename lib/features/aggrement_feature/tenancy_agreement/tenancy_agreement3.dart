import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/tenancy_agreement/tenancy_agreement4.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/common_widgets.dart';
import '../../home_features/pages/home/openhouse/addopenhomes.dart';
import '../sales_agency_agreement/widgets/text_field.dart';

class TenancyAgreement3 extends HookConsumerWidget {
  const TenancyAgreement3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyle = Theme.of(context).textTheme;
    final startDate = useState<String?>(null);
    final period = useState<String?>(null);
    final selectedBond=useState<String?>(null);
    final bondList=[
      "the landlord or another person, or",
      "the landlord's agent, or",
      "NSW Fair Trading through Rental Bond Online."
    ];
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
            const HeadingText(text: 'Rent'),

            10.verticalSpace,
            const AppTextFiled(
              lable: 'The rent is',
              hintText: 'Rent',
            ),
            10.verticalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SubHeadingText(
                 text:  "Period",
                ),
                8.verticalSpace,
                WidgetDropdown(
                  propertyOptions: const ['Private Treaty'],
                  selectedValue: period.value,
                  onChanged: (String? value) {
                    if (value != null) {
                      period.value = value;
                    }
                  },
                  hintText: 'Method of Sale',
                  suffixIcon:
                  const Icon(Icons.keyboard_arrow_down_outlined),
                ),
              ],
            ),
            10.verticalSpace,
            const SubHeadingText(text: 'Payable in advance starting on')
            ,
            8.verticalSpace,
            DatePickerDropdown(
              validator: (value) => value == null || value.trim().isEmpty
                  ? 'This field is required'
                  : null,
              selectedDate: startDate.value,
              onDateSelected: (date) {
                startDate.value = date;
              },
              hintText: 'mm-dd-yyyy',
            ),
            10.verticalSpace,
            const SubHeadingText(
            text:   "The method by which the rent must be paid:",

            ),
            10.verticalSpace,
            const SubHeadingText(
             text:  "(a) Electronic Funds Transfer (EFT) into the following account, or any other account nominated by the landlord:",
            ),
            10.verticalSpace,
            const AppTextFiled(
              lable: 'A/C Name',
              hintText: 'A/C Name',
            ),
            10.verticalSpace,
            const AppTextFiled(
              lable: 'BSB',
              hintText: 'BSB',
            ),
            10.verticalSpace,
            const AppTextFiled(
              lable: 'A/C Name',
              hintText: 'A/C Name',
            ),
            10.verticalSpace,
            const AppTextFiled(
              lable: 'Payment Reference',
              hintText: 'Payment Reference',
            ),
            10.verticalSpace,
            const SubHeadingText(
            text:   "(b)",

            ),
            10.verticalSpace,
            const AppTextFiled(
              lable: 'to',
              hintText: 'to',
            ),
            10.verticalSpace,
            const AppTextFiled(
              lable: 'at',
              hintText: 'at',
            ),
            10.verticalSpace,
            const SubHeadingText(
             text:  "(c)",
            ),
            10.verticalSpace,
            const AppTextFiled(
              lable: 'as follows',
              hintText: 'as follows',
            ),
            20.verticalSpace,
            const HeadingText(
             text:  "Rental Bond",
            ),
            10.verticalSpace,
            const AppTextFiled(
                lable: 'A rental bond of', hintText: 'A rental bond of'),
            10.verticalSpace,
            const SubHeadingText(
            text:   'The tenant provided the rental bond amount to',

            ),
            10.verticalSpace,
            Wrap(
              direction: Axis.vertical,
              // spacing: 20,
              runSpacing: 8,
              children: bondList.map((duration) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: RadioListTile<String>(
                    fillColor: WidgetStateProperty.all(Colors.black),
                    contentPadding: EdgeInsets.zero,
                    title: SubHeadingText(
                       text:  duration, ),
                    value: duration,
                    groupValue: selectedBond.value,
                    onChanged: (value) {
                      selectedBond.value = value;
                    },
                  ),
                );
              }).toList(),
            ),
            60.verticalSpace,
            PrimaryButton(title: "Save & Next", onClick: (){
              context.push(const TenancyAgreement4());
            }),
            60.verticalSpace,
          ],
        ),
      ),
    );
  }
}
