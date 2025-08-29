import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/sales_agreement3.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/appbutton.dart';
import 'widgets/heading_text.dart';

class SalesAgreement2 extends HookConsumerWidget {
  const SalesAgreement2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0XFFf2f6f7),
      appBar: AppBar(
        title: const Text('Sales Agreement'),
        centerTitle: true,
      ),
      body: Form(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadingText(text: 'Agent',),
            20.verticalSpace,
            AppTextFiled(
              lable: "Business Name",
              hintText: "Business Name",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "License Number",
              hintText: "License Number",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "ABN/ACN",
              hintText: "ABN/ACN",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "Trading as",
              hintText: "Trading as",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "Address",
              hintText: "Address",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "Phone",
              hintText: "Phone Number",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "Postcode",
              hintText: "Postcode",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "Fax",
              hintText: "Fax",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "Phone",
              hintText: "Phone Number",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "Mobile",
              hintText: "Mobile Number",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "Email Address",
              hintText: "Email Address",
              onChanged: (val) {},
            ),
            20.verticalSpace,
            const Divider(
              color: Color(0xffE2E2E2),
            ),
            20.verticalSpace,
            const HeadingText(text: "PRINCIPLE'S SOLICITOR/LICENSED CONVEYANCER",),
            20.verticalSpace,
            AppTextFiled(
              lable: "Company Name",
              hintText: "Company Name",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "Principle Name",
              hintText: "Principle Name",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "Address",
              hintText: "Address",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "Phone",
              hintText: "Phone Number",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "Fax",
              hintText: "Fax",
              onChanged: (val) {},
            ),
            10.verticalSpace,
            AppTextFiled(
              lable: "Email Address",
              hintText: "Email Address",
              onChanged: (val) {},
            ),
            40.verticalSpace,
            PrimaryButton(
                title: "Save & Next",
                onClick: () {
                  context.push(const SalesAgreement3());
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
            //               context.navigateTo(const SalesAgreement3());
            //             }))
            //   ],
            // ),
            60.verticalSpace
          ],
        ),
      )),
    );
  }
}
