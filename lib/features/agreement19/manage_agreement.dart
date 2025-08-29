import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:foreal_property/features/agreement19/manage_agreement2.dart';
import 'package:foreal_property/features/home_features/models/get_property_listing_model.dart';

class ManangeAgreementView extends ConsumerStatefulWidget {
  const ManangeAgreementView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ManangeAgreementViewState();
}

class _ManangeAgreementViewState extends ConsumerState<ManangeAgreementView> {
  final _formKey = GlobalKey<FormState>();
  final borderRadius = BorderRadius.circular(12);
  final borderColor = const Color(0xFFE2E2E2);
  PropertyListingList? selectedProperty;

  final List<String> propertyOptions = [
    '27 Kingsford Avenue, Eastwood, 2...',
    'For Sale',
    'For Rent',
    'Open House',
    'Sold',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Agreement'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: const Color(0XFFf2f6f7),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SubHeadingText(text: 'Property'),
              12.verticalSpace,
              WidgetDropdown(
                propertyOptions: propertyOptions,
                selectedValue: selectedValue,
                onChanged: (String? value) {
                  if (value != null) {
                    final index = propertyOptions.indexOf(value);
                    if (index != -1) {
                      setState(() {
                        selectedValue = value;
                      });

                      // // Example: update Riverpod state (uncomment if needed)
                      // ref.read(ownershipParamsDataProvider.notifier).update(
                      //       (p) => p!.copyWith(typeIAM: index + 1),
                      //     );

                      print("Selected Property: $value (Index: ${index + 1})");
                    }
                  }
                },
                hintText: 'Select Property Type',
              ),
              16.verticalSpace,
              Divider(
                color: Colors.grey.withValues(alpha: 0.5),
              ),
              16.verticalSpace,
              HeadingText(text: 'Primary Property Owner(s)'.toUpperCase()),
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: AppTextFiled(
                        hintText: 'First Name', lable: 'First Name'),
                  ),
                  16.horizontalSpace,
                  const Expanded(
                    child:
                        AppTextFiled(hintText: 'Last Name', lable: 'Last Name'),
                  ),
                ],
              ),
              15.verticalSpace,
              const AppTextFiled(
                hintText: 'Phone Number',
                lable: 'Phone',
              ),
              15.verticalSpace,
              const AppTextFiled(
                hintText: 'Email address',
                lable: 'Email',
              ),
              15.verticalSpace,
              const AppTextFiled(
                hintText: 'Address',
                lable: 'Address',
              ),
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
              const AppTextFiled(
                hintText: 'ABN',
                lable: 'ABN',
              ),
              15.verticalSpace,
              const AppTextFiled(
                hintText: 'Company Name',
                lable: 'Company Name',
              ),
              30.verticalSpace,
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
              Divider(
                color: Colors.grey.withValues(alpha: 0.5),
              ),
              16.verticalSpace,
              HeadingText(text: 'Property Details'.toUpperCase()),
              const SizedBox(height: 16),
              const AppTextFiled(
                hintText: 'Search for Address',
                lable: 'Address',
                maxLines: 3,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SubHeadingText(text: 'This Property is Unfurnished'),
                  CustomCupertinoToggle(
                    initialValue: true,
                    trueLabel: 'Y',
                    falseLabel: 'N',
                    onChanged: (value) {},
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SubHeadingText(
                      text: "Furnished (Inventory prepared by)"),
                  CustomCupertinoToggle(
                    initialValue: true,
                    trueLabel: 'Y',
                    falseLabel: 'N',
                    onChanged: (value) {},
                  ),
                ],
              ),
              16.verticalSpace,
              Divider(
                color: Colors.grey.withValues(alpha: 0.5),
              ),
              16.verticalSpace,
              const HeadingText(text: 'Rent'),
              const SizedBox(height: 16),
              const AppTextFiled(
                hintText: '0',
                lable:
                    'Rent at which the property to be offered (including GST if any)',
              ),
              const SizedBox(height: 16),
              const AppTextFiled(hintText: '0',lable: 'Bond',),
              const SizedBox(height: 16),
              24.verticalSpace,
              PrimaryButton(
                  title: 'Save & Next',
                  onClick: () {
                    context.push(const ManangeAgreement());
                  }),
              24.verticalSpace
            ],
          ),
        ),
      ),
    );
  }
}
