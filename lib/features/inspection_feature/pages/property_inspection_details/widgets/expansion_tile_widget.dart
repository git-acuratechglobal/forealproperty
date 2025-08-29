import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:expansion_tile_list/expansion_tile_list.dart';

import '../../../../../common/common_widgets.dart';
import '../../../model/inspection_details_model.dart';
import '../edit_template_screen2.dart';

class ExpansionTileWidget extends HookConsumerWidget {
  const ExpansionTileWidget({
    super.key,
    required this.templatesDetails,
    required this.inspectionId
  });

  final List<TemplatesDetail> templatesDetails;
  final int inspectionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeStep = useState(0);

    return ExpansionTileList(

      shrinkWrap: true,
      children: templatesDetails.asMap().entries.map((entry) {
        final index = entry.key;
        final detail = entry.value;

        return ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.center,
            expandedAlignment: Alignment.center,
            tilePadding: EdgeInsets.only(left: 30),
          onExpansionChanged: (isExpanded) {
            activeStep.value = isExpanded ? index : -1;
          },
          title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              detail.facilityName ?? "",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700
              ),
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: EditTemplateScreen2(
                key: ValueKey(index),
                templatesDetail: detail,
                inspectionId: inspectionId,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
