import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/sales_agreement2.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/common_widgets.dart';
import '../../../common/constants/app_strings.dart';
import '../../../core/utils/appbutton.dart';
import 'widgets/heading_text.dart';
import 'widgets/sub_heading_text.dart';

class SalesAgreement1 extends HookConsumerWidget {
  const SalesAgreement1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final selectedProperty = useState<String?>(null);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sales Agreement'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: const Color(0XFFf2f6f7),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubHeadingText(text: 'Property'.toUpperCase()),
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
              const Divider(
                color: Color(0xffE2E2E2),
              ),
              16.verticalSpace,
              HeadingText(
                text: 'Primary Property Owner(s)'.toUpperCase(),
              ),
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: AppTextFiled(
                          lable: 'First Name', hintText: 'First Name')),
                  16.horizontalSpace,
                  const Expanded(
                      child: AppTextFiled(
                          lable: 'Last Name', hintText: 'Last Name')),
                ],
              ),
              15.verticalSpace,
              const AppTextFiled(lable: 'Phone', hintText: 'Phone Number'),
              15.verticalSpace,
              const AppTextFiled(lable: 'Email', hintText: 'Email address'),
              15.verticalSpace,
              const AppTextFiled(lable: 'Address', hintText: 'Address'),
              15.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SubHeadingText(text: 'Registered for GST'),
                  CustomCupertinoToggle(
                    initialValue: true,
                    trueLabel: 'Y',
                    falseLabel: 'N',
                    onChanged: (value) {},
                  ),
                ],
              ),
              15.verticalSpace,
              const AppTextFiled(lable: 'ABN', hintText: 'ABN'),
              15.verticalSpace,
              const AppTextFiled(
                  lable: 'Company Name', hintText: 'Company Name'),
              20.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Container(
                  width: double.infinity,
                  height: 56,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // Your onPressed logic
                    },
                    icon: const Icon(Icons.add,
                        color: Color(
                          0xFF003F5C,
                        ),
                        size: 20),
                    label: const Text(
                      'Add New Owner',
                      style: TextStyle(
                        fontFamily: "Plus Jakarta Sans",
                        color: Color(0xFF164C63),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFF164C63)),
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 14),
                    ),
                  ),
                ),
              ),
              16.verticalSpace,
              24.verticalSpace,
              PrimaryButton(
                  title: 'Save & Next',
                  onClick: () {
                    context.push(const SalesAgreement2());
                  }),
              24.verticalSpace
            ],
          ),
        ),
      ),
    );
  }
}
