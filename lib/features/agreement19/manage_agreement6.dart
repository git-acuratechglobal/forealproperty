import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:foreal_property/features/agreement19/manage_agreement_tab.dart';

class ManageAgreement6 extends ConsumerStatefulWidget {
  const ManageAgreement6({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ManageAgreement6State();
}

class _ManageAgreement6State extends ConsumerState<ManageAgreement6> {
  bool isSwitched = false;
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
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeadingText(text: 'REPAIRS AND MAINTENANCE'),
              16.verticalSpace,
              AppTextFiled(
                hintText: '',
                lable: 'Payment',
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Image.asset('assets/images/percentage.png'),
                ),
              ),
              16.verticalSpace,
              Divider(
                color: Colors.grey.withValues(alpha: 0.5),
              ),
              16.verticalSpace,
              const HeadingText(text: 'MATERIAL FACTS'),
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: SubHeadingText(
                          text: 'Loose Fill Asbestos Installation')),
                  18.horizontalSpace,
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
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(child: SubHeadingText(text: 'Smoke alarm')),
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
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: SubHeadingText(text: 'Swimming pool registered')),
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
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: SubHeadingText(
                    text: 'Health issues',
                  )),
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
              16.verticalSpace,
              Divider(
                color: Colors.grey.withValues(alpha: 0.5),
              ),
              16.verticalSpace,
              const HeadingText(
                text: 'IN THE LAST 5 YEARS HAS THE PROPERTY BEEN SUBJECT TO',
              ),
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(child: SubHeadingText(text: 'Flooding')),
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
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: SubHeadingText(
                    text: 'Bushfire',
                  )),
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
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: SubHeadingText(text: 'Serious violent crim')),
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
              16.verticalSpace,
              Divider(
                color: Colors.grey.withValues(alpha: 0.5),
              ),
              16.verticalSpace,
              const HeadingText(text: 'AFFECTED BY'),
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: SubHeadingText(text: 'Parking Restrictions')),
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
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: SubHeadingText(text: 'Share driveways')),
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
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: SubHeadingText(text: 'Serious violent crime')),
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
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(child: SubHeadingText(text: 'Flooding')),
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
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(child: SubHeadingText(text: 'Bushfire')),
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
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: SubHeadingText(
                        text:
                            'Is there a contract for the sale of the premises'),
                  ),
                  18.horizontalSpace,
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
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: SubHeadingText(
                          text: 'Is there a proposal to sell the premises')),
                  18.horizontalSpace,
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
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: SubHeadingText(
                          text:
                              'Has a mortgagee commenced proceedings in court to enforce a mortgage over the premises')),
                  18.horizontalSpace,
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
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: SubHeadingText(
                          text:
                              'Is the mortgagee taking action for possession of the property')),
                  18.horizontalSpace,
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
              16.verticalSpace,
              Divider(
                color: Colors.grey.withValues(alpha: 0.5),
              ),
              16.verticalSpace,
              const HeadingText(text: 'WATER EFFICIENCY DEVICES'),
              16.verticalSpace,
              const SubHeadingText(text: 'The agent is authorized to:'),
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: SubHeadingText(
                      text:
                          'The premises contain the water efficiency measures prescribed by the Residential Tenancies Act 2010 (NSW)',
                    ),
                  ),
                  18.horizontalSpace,
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
              16.verticalSpace,
              Divider(
                color: Colors.grey.withValues(alpha: 0.5),
              ),
              16.verticalSpace,
              const HeadingText(
                text: 'SMOKE ALARMS',
              ),
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: SubHeadingText(
                      text:
                          'The Principal warrants that the Premises comply with the Environmental Planning and Assessment Amendment (Smoke Alarms) Regulation 2006 (NSW)',
                    ),
                  ),
                  18.horizontalSpace,
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
              24.verticalSpace,
              PrimaryButton(
                  title: 'Save & Next',
                  onClick: () {
                    context.push(const ManageAgreementTab());
                  }),
              24.verticalSpace
            ],
          ),
        ));
  }
}
