import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:foreal_property/features/aggrement_feature/tenancy_agreement/tenancy_agreement2.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/common_widgets.dart';
import '../../../common/constants/app_strings.dart';

class TenancyAgreement1 extends HookConsumerWidget {
  const TenancyAgreement1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final selectedProperty = useState<String?>(null);
    final textStyle = Theme.of(context).textTheme;
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
                const SubHeadingText(text: 'Property' ),
                12.verticalSpace,
                SizedBox(
                  height: 60,
                  child: WidgetDropdown(
                    propertyOptions: AppStrings.propertyOptions,
                    selectedValue: selectedProperty.value,
                    onChanged: (String? value) {
                      if (value != null) {
                        selectedProperty.value = value;
                      }
                    },
                    hintText: 'Select Property Type',
                  ),
                ),
                16.verticalSpace,
                const HeadingText(
                 text:  "Parties principle",
                ),
                26.verticalSpace,
                const HeadingText(
                 text:  "Primary Property Owner(s)",
                ),
                15.verticalSpace,
                Row(
                  children: [
                    const Expanded(
                      child: AppTextFiled(
                        lable: 'First Name',
                        hintText: 'First Name',
                      ),
                    ),
                    15.horizontalSpace,
                    const Expanded(
                      child: AppTextFiled(
                        lable: 'Last Name',
                        hintText: 'Last Name',
                      ),
                    ),
                  ],
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'Mobile',
                  hintText: 'Mobile Number',
                ),
                10.verticalSpace,
                const AppTextFiled(
                  lable: 'Email Address',
                  hintText: 'Email',
                ),
                26.verticalSpace,
                const HeadingText(
                 text:  "Tenant",
                ),
                15.verticalSpace,
                Row(
                  children: [
                    const Expanded(
                      child: AppTextFiled(
                        lable: 'First Name',
                        hintText: 'First Name',
                      ),
                    ),
                    15.horizontalSpace,
                    const Expanded(
                      child: AppTextFiled(
                        lable: 'Last Name',
                        hintText: 'Last Name',
                      ),
                    ),
                  ],
                ),
                16.verticalSpace,
                const AppTextFiled(
                  lable: 'Mobile',
                  hintText: 'Mobile Number',
                ),
                10.verticalSpace,
                const AppTextFiled(
                  lable: 'Email Address',
                  hintText: 'Email',
                ),
                20.verticalSpace,
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                      width: 200,
                      height: 45,
                      child: SecondaryButton(
                          radius: 10, title: "Add New Tenant", onClick: () {})),
                ),
                30.verticalSpace,
                const HeadingText(text: 'Agent'),

                15.verticalSpace,
                const AppTextFiled(
                  lable: 'Name',
                  hintText: 'Name',
                ),
                10.verticalSpace,
                const AppTextFiled(
                  lable: 'Business Name',
                  hintText: 'Business Name',
                ),
                10.verticalSpace,
                const AppTextFiled(
                  lable: 'License Number',
                  hintText: 'License Number',
                ),
                10.verticalSpace,
                const AppTextFiled(
                  lable: 'Address',
                  hintText: 'Address',
                ),
                10.verticalSpace,
                const AppTextFiled(
                  lable: 'Mobile',
                  hintText: 'Mobile Number',
                ),
                10.verticalSpace,
                const AppTextFiled(
                  lable: 'Fax',
                  hintText: 'Fax',
                ),
                10.verticalSpace,
                const AppTextFiled(
                  lable: 'Email Address',
                  hintText: 'Email Address',
                ),
                10.verticalSpace,
                const AppTextFiled(
                  lable: 'Agent Name',
                  hintText: 'Agent Name',
                ),
                60.verticalSpace,
                PrimaryButton(
                    title: "Save & Next",
                    onClick: () {
                      context.push(const TenancyAgreement2());
                    }),
                60.verticalSpace,
              ],
            ),
          ),
        ));
  }
}
