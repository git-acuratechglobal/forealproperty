import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';

import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';

import 'package:foreal_property/features/agreement19/Widgets/strings.dart';
import 'package:foreal_property/features/agreement19/manage_agreement5.dart';

import 'package:foreal_property/features/home_features/models/get_property_listing_model.dart';

import '../aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';

class ManangeAgreement4 extends ConsumerStatefulWidget {
  const ManangeAgreement4({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ManangeAgreement4State();
}

class _ManangeAgreement4State extends ConsumerState<ManangeAgreement4> {
  bool termsAccepted = true;
  final _formKey = GlobalKey<FormState>();
  final borderRadius = BorderRadius.circular(12);
  final borderColor = const Color(0xFFE2E2E2);
  PropertyListingList? selectedProperty;
  bool isSwitch = true;
  bool isSwitched = true;
  String gst = '';
  final List<String> propertyOptions = [
    '25/08/2025',
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
              const HeadingText(text: AppString.tribunalFeesInsurance),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SubHeadingText(
                      text: AppString.applicationFeesforNCATTribunal),
                  Text(
                    AppString.atCost,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 14.sp, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SubHeadingText(
                    text: AppString.sherriffOrOtherStatutory,
                  ),
                  Text(
                    AppString.atCost,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 14.sp, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SubHeadingText(
                    text: AppString.officeExoenses,
                  ),
                  Text(
                    AppString.atCost,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 14.sp, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SubHeadingText(
                    text: AppString.postage,
                  ),
                  Text(
                    AppString.atCost,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 14.sp, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              AppTextFiled(
                hintText: '',
                lable:
                    'Preparation commuting and attendance of NCAT/Tribunal & Insurance',
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: Image.asset('assets/images/dollor.png'),
                ),
              ),
              4.verticalSpace,
              Text(AppString.invoiceDays,
                  style: TextStyle(
                      color: const Color(0XFF7d8089),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400),),
              16.verticalSpace,
              Divider(
                color: Colors.grey.withValues(alpha: 0.5),
              ),
              16.verticalSpace,
              HeadingText(text: AppString.authorizeForealProperty.toUpperCase()),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SubHeadingText(
                    text: AppString.redirect,
                  ),
                  CustomCupertinoToggle(
                    initialValue: isSwitched,
                    trueLabel: 'Y',
                    falseLabel: 'N',
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ],
              ),
              CheckboxRowExample(
                labelText: 'Strata',
                initialValue: termsAccepted,
                onChanged: (bool value) {
                  setState(() {
                    termsAccepted = value;
                  });
                },
              ),
              CheckboxRowExample(
                labelText: 'Water',
                initialValue: termsAccepted,
                onChanged: (bool value) {
                  setState(() {
                    termsAccepted = value;
                  });
                },
              ),
              CheckboxRowExample(
                labelText: 'Council Rates',
                initialValue: termsAccepted,
                onChanged: (bool value) {
                  setState(() {
                    termsAccepted = value;
                  });
                },
              ),
              CheckboxRowExample(
                labelText: 'Insurance',
                initialValue: termsAccepted,
                onChanged: (bool value) {
                  setState(() {
                    termsAccepted = value;
                  });
                },
              ),
              16.verticalSpace,
              Divider(
                color: Colors.grey.withValues(alpha: 0.5),
              ),
              16.verticalSpace,

              HeadingText(text: AppString.rental.toUpperCase()),


              16.verticalSpace,
              const AppTextFiled(hintText: 'A/C Name',lable: 'A/C Name',),
              16.verticalSpace,
              const AppTextFiled(hintText: 'BSB',lable: 'BSB',),
              16.verticalSpace,
              const AppTextFiled(hintText: 'Account Number',lable: 'Account Number',),
              32.verticalSpace,
              PrimaryButton(
                  title: 'Save & Next',
                  onClick: () {
                    context.push(const ManageAgreement5());
                  }),
              24.verticalSpace
            ],
          ),
        ),
      ),
    );
  }
}
