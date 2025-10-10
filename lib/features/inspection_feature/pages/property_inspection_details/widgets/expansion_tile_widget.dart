import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:expansion_tile_list/expansion_tile_list.dart';

import '../../../../../common/common_widgets.dart';
import '../../../../../core/utils/appsnackbar.dart';
import '../../../model/inspection_details_model.dart';
import '../../../provider/inspection_details_provider.dart';
import '../../../provider/inspection_provider.dart';
import '../edit_template_screen2.dart';

class ExpansionTileWidget extends HookConsumerWidget {
  const ExpansionTileWidget({
    super.key,
    required this.templatesDetails,
    required this.inspectionId,
  });

  final List<TemplatesDetail> templatesDetails;
  final int inspectionId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeStep = useState(-1);
    final targetStep = useRef(-1);
    final controller = useRef(ExpansionTileListController());
    final templateId = (templatesDetails.isNotEmpty
            ? templatesDetails.first.inspectionTemplateId
            : null) ??
        0;

    return SingleChildScrollView(
      child: Column(
        children: [
          ExpansionTileList(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(top: 20, bottom: 40),
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
                  if (isExpanded) {
                    activeStep.value = index;
                    if (index + 1 < templatesDetails.length) {
                      targetStep.value = index + 1;
                    } else {
                      targetStep.value = -1;
                    }
                  } else {
                    if (activeStep.value == index) {
                      activeStep.value = -1;
                    }
                  }
                },
                title: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 30,
                  ),
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
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      10.horizontalSpace,
                      if (detail.agentProgress != null)
                        AgreeStatusWidget(
                          imageItems: ImageWithLetter(
                            path: detail.agentProgress == 3
                                ? 'assets/images/blue.png'
                                : 'assets/images/orange.png',
                            letter: 'A',
                          ),
                        ),
                      if (detail.isTenantAgree != null)
                        AgreeStatusWidget(
                          imageItems: ImageWithLetter(
                            path: detail.isTenantAgree == true
                                ? 'assets/images/blue.png'
                                : 'assets/images/orange.png',
                            letter: 'T',
                          ),
                        ),
                      AnimatedSwitcher(
                        duration: const Duration(microseconds: 800),
                        transitionBuilder: (child, animation) =>
                            RotationTransition(
                          turns: animation,
                          child: child,
                        ),
                        child: activeStep.value != index
                            ? const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                              )
                            : const Icon(
                                Icons.keyboard_arrow_up_outlined,
                                color: Colors.black,
                              ),
                      ),
                    ],
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 24),
                    child: EditTemplateScreen2(
                      templatesDetail: detail,
                      inspectionId: inspectionId,
                      onUpdate: () {
                        if (targetStep.value >= 0) {
                          controller.value.expand(targetStep.value);
                          activeStep.value = targetStep.value;
                          targetStep.value = -1;
                        } else {
                          controller.value.collapseAll();
                        }
                      },
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
          20.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: PrimaryButton(
                title: "Submit",
                onClick: () {
                   // ref.read(localStorageServiceProvider).clearInspection();
                  ref
                      .read(inspectionNotifierProvider.notifier)
                      .updateInspection(inspectionId, templateId);
                }),
          ),
          20.verticalSpace,
        ],
      ),
    );
  }
}

class AgreeStatusWidget extends StatelessWidget {
  const AgreeStatusWidget({super.key, required this.imageItems});
  final ImageWithLetter imageItems;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          Image.asset(
            imageItems.path,
            height: 20.h,
            width: 20.w,
          ),
          const SizedBox(height: 4),
          Text(
            imageItems.letter,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
