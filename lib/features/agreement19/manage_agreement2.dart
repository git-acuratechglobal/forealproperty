import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/agreement19/manage_agreement3.dart';
import 'package:foreal_property/features/home_features/models/get_property_listing_model.dart';
import 'package:foreal_property/features/home_features/pages/home/openhouse/addopenhomes.dart';

import '../aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import '../aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';

class ManangeAgreement extends ConsumerStatefulWidget {
  const ManangeAgreement({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ManangeAgreementState();
}

class _ManangeAgreementState extends ConsumerState<ManangeAgreement> {
  final _formKey = GlobalKey<FormState>();
  final borderRadius = BorderRadius.circular(12);
  final borderColor = const Color(0xFFE2E2E2);
  PropertyListingList? selectedProperty;
  bool isSwitch = true;
  bool isSwitched = true;
  bool isSwitched1 = true;
  bool isSwitched2 = false;
  String? selectedDate;

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
              HeadingText(text: 'Agreement Period'.toUpperCase()),
              12.verticalSpace,
              const SubHeadingText(text: 'Commencing On'),
              10.verticalSpace,
              DatePickerDropdown(
                validator: (value) => value == null || value.trim().isEmpty
                    ? 'This field is required'
                    : null,
                selectedDate: selectedDate,
                onDateSelected: (date) {
                  setState(() {
                    selectedDate = date;
                    print("Selected Date: $date");
                  });
                  // ref
                  //     .read(openHomeParamsDataProvider.notifier)
                  //     .update((p) => p.copyWith(eventDate: date));
                },
                hintText: 'mm-dd-yyyy',
              ),
              16.verticalSpace,
              Divider(
                color: Colors.grey.withValues(alpha: 0.5),
              ),
              16.verticalSpace,
              HeadingText(text: 'Agent’s Authority for leasing'.toUpperCase()),
              20.verticalSpace,
              const SubHeadingText(
                  text:
                      'At the end of each tenany, the Agent is authorized to:'),
              12.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: SubHeadingText(
                          text:
                              'Lease an Re-lease the Premises at market rent:')),
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
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: SubHeadingText(
                    text: "Review the rent when appropriate before re-leasing:",
                  )),
                  CustomCupertinoToggle(
                    initialValue: isSwitched1,
                    trueLabel: 'Y',
                    falseLabel: 'N',
                    onChanged: (value) {
                      setState(() {
                        isSwitched1 = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: SubHeadingText(
                    text:
                        "Refer to the Principal for instructions concerning re-leasing and advertising/promotion::",
                  )),
                  12.horizontalSpace,
                  CustomCupertinoToggle(
                    initialValue: isSwitched2,
                    trueLabel: 'Y',
                    falseLabel: 'N',
                    onChanged: (value) {
                      setState(() {
                        isSwitched2 = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 5,
              ),
              PrimaryButton(
                  title: 'Save & Next',
                  onClick: () {
                    context.push(const ManangeAgreement3());
                  }),
              24.verticalSpace
            ],
          ),
        ),
      ),
    );
  }
}
