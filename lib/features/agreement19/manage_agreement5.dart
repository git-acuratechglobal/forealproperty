import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/heading_text.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import 'package:foreal_property/features/agreement19/manage_agreement6.dart';

import '../aggrement_feature/sales_agency_agreement/widgets/text_field.dart';

class ManageAgreement5 extends ConsumerStatefulWidget {
  const ManageAgreement5({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ManageAgreement5State();
}

class _ManageAgreement5State extends ConsumerState<ManageAgreement5> {
  bool isSwitched = true;
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
            const HeadingText(text: 'PROMOTIONAL ACTIVITIES'),
            16.verticalSpace,
            const SubHeadingText(
                text:
                    'The Rental Property is to be advertised and/or otherwise promoted as followed'),
            16.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SubHeadingText(text: 'Listing on Realestate.com.au'),
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
                const SubHeadingText(text: 'Listing on Domain.com.au'),
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
                const SubHeadingText(text: 'Social Media Campaign'),
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
                const SubHeadingText(
                  text: 'Sign Board',
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
            16.verticalSpace,
            Divider(
              color: Colors.grey.withValues(alpha: 0.5),
            ),
            16.verticalSpace,
            const HeadingText(
                text:
                    'DISCLOSURES OF REBATES, DISCOUNTS OR COMMISSIONS IN RESPECT OF EXPENSES'),
            16.verticalSpace,
            const AppTextFiled(
              hintText: 'Nil',
              lable: 'Name of Third part',
            ),
            16.verticalSpace,
            AppTextFiled(
              hintText: '0',
              lable: 'Estimated Amount of Rebate, Discount or Commissioon',
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
            const SubHeadingText(
              text: 'The agent is authorized to:',
            ),
            16.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                    child: SubHeadingText(
                        text:
                            'Obtain references from prospective tenants, arrange inspections of the property by prospective tenants and choose a tenant')),
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
                            'Enter into and sign a tenancy agreement (specifying the term for which the property may be let)')),
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
                        text: 'Undertake inspections of the property')),
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
                            'Effect repairs to and maintain the property or engage tradespersons to do so up to an approved amount without obtaining the approval of Principal')),
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
                            'Pay disbursements and expenses incurred in connection with the agent’s management of the property')),
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
                            'Collect rent, receive, claim and disburse rental bond money')),
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
                            'Serve notices for breach of the tenancy agreement or terminate the tenancy agreement')),
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
                            'Undertake the necessary steps to obtain vacant possession and recover any money owing to the Principal in relation to the tenancy of the property')),
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
                            'Represent the Principal in any tribunal or court proceedings in respect of the tenancy of the property')),
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
                            'Advertise the property for letting or re-letting')),
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
                        text: 'Review the rent at the end of a tenancy')),
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
                  context.push(const ManageAgreement6());
                }),
            24.verticalSpace
          ],
        ),
      ),
    );
  }
}
