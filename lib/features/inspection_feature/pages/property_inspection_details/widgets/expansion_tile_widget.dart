import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:expansion_tile_list/expansion_tile_list.dart';

import '../../../../../core/utils/appsnackbar.dart';
import '../../../model/inspection_details_model.dart';
import '../../../provider/inspection_details_provider.dart';
import '../../../provider/inspection_provider.dart';
import '../edit_template_screen2.dart';

class ExpansionTileWidget extends HookConsumerWidget {
  const ExpansionTileWidget(
      {super.key, required this.templatesDetails, required this.inspectionId});

  final List<TemplatesDetail> templatesDetails;
  final int inspectionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeStep = useState(-1);
    final controller = useRef(ExpansionTileListController());
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.listenManual(inspectionNotifierProvider, (_, next) {
          switch (next) {
            case AsyncData<String?> data when data.value != null:
              ref.invalidate(
                  getInspectionDetailsProvider(inspectionId: inspectionId));
              if (activeStep.value >= 0) {
                controller.value.expand(activeStep.value + 1);
              }
              Utils.showSnackBar(context, data.value!);
              break;
            case AsyncError error:
              Utils.showSnackBar(context, error.error.toString());
              break;
          }
        });
      });
      return null;
    }, const []);
    return ExpansionTileList(
      padding: const EdgeInsets.only(top: 20),
      expansionMode: ExpansionMode.atMostOne,
      controller: controller.value,
      shrinkWrap: true,
      children: templatesDetails.asMap().entries.map((entry) {
        final index = entry.key;
        final detail = entry.value;

        return ExpansionTileItem(
          shape: const RoundedRectangleBorder(),
          maintainState: true,
          expandedCrossAxisAlignment: CrossAxisAlignment.center,
          expandedAlignment: Alignment.center,
          tilePadding: const EdgeInsets.only(
            left: 30,
          ),
          onExpansionChanged: (isExpanded) {
            activeStep.value = isExpanded ? index : -1;
          },
          title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    detail.facilityName ?? "",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
                  ),
                ),
                10.horizontalSpace,
                AnimatedSwitcher(
                  duration: const Duration(microseconds: 800),
                  transitionBuilder: (child, animation) =>
                      RotationTransition(turns: animation, child: child),
                  child: activeStep.value != index
                      ? const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                        )
                      : const Icon(
                          Icons.keyboard_arrow_up_outlined,
                          color: Colors.black,
                        ),
                )
              ],
            ),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: EditTemplateScreen2(
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
