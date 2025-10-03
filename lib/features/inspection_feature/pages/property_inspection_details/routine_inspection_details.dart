import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/inspection_feature/model/inspection_details_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../common/common_widgets.dart';
import '../../../../core/utils/appbutton.dart';

class RoutineInspectionDetails extends HookConsumerWidget {
  const RoutineInspectionDetails({super.key, required this.template});
  final Template template;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bathroom'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            24.verticalSpace,
            Text(
              'Comments',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
            ),
            12.verticalSpace,
            CommonTextField(
              initialValue: template.templateNotes,
              label: 'Enter comment...',
              maxLines: 5,
            ),
            24.verticalSpace,
            PrimaryButton(
                title: 'Next',
                onClick: () {
                  context.navPop();
                })
          ],
        ),
      ),
    );
  }
}
