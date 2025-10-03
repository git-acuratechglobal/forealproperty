import 'package:animated_reorderable_list/animated_reorderable_list.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/inspection_feature/model/inspection_details_model.dart';
import 'package:foreal_property/features/inspection_feature/pages/property_inspection_details/property_information/property_information.dart';
import 'package:foreal_property/features/inspection_feature/pages/property_inspection_details/routine_inspection_details.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_details_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../common/common_widgets.dart';
import '../../../../core/utils/custom_refreshIndicator.dart';
import '../../provider/inspection_provider.dart';
import '../../provider/template_provider.dart';
import 'entry_inspection_details.dart';
import 'widgets/slideable_widget.dart';

class EditReport extends HookConsumerWidget {
  const EditReport(
      {super.key,
      required this.inspectionId,
      required this.inspectionUniqueId});
  final int inspectionId;
  final String inspectionUniqueId;
  void printLongString(String text) {
    const int chunkSize = 800;
    for (var i = 0; i < text.length; i += chunkSize) {
      print(text.substring(
          i, i + chunkSize > text.length ? text.length : i + chunkSize));
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final templateList = useState<List<Template>>([]);
    final inspectionDetailsState = ref.watch(
      getInspectionDetailsProvider(inspectionId: inspectionId),
    );

    final bool isLoading = ref.watch(inspectionNotifierProvider).isLoading ||
        inspectionDetailsState.isRefreshing ||
        ref.watch(templateNotifierProvider).isLoading;

    return PageLoadingWidget(
        isLoading: isLoading,
        child: Scaffold(
            body: AsyncWidget(
                onRetry: () => ref.refresh(
                    getInspectionDetailsProvider(inspectionId: inspectionId)),
                value: ref.watch(
                    getInspectionDetailsProvider(inspectionId: inspectionId)),
                data: (InspectionDetailsModel entryInspectionData) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    templateList.value = entryInspectionData.templates ?? [];
                  });

                  return CustomRefreshIndicator(
                    onRefresh: () async => ref.refresh(
                        getInspectionDetailsProvider(
                            inspectionId: inspectionId)),
                    child: Column(
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 24),
                        //   child: PropertyViewContainer(
                        //     propertyName: propertyAddress,
                        //   ),
                        // ),
                        24.verticalSpace,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: ReportContainer(
                            color:entryInspectionData
                                .inspectionComplianceUtilitiesDetails
                                ?.isSubmited ==
                                true?const Color(0xffe63bf86):Colors.white,
                            title: 'Compliance/Utilities',
                            imageItems: const [
                              // if (entryInspectionData
                              //         .inspectionComplianceUtilitiesDetails
                              //         ?.isSubmited ==
                              //     true)
                              //   ImageWithLetter(
                              //       path: 'assets/images/blue.png', letter: 'A')
                              // else
                              //   ImageWithLetter(
                              //       path: 'assets/images/orange.png',
                              //       letter: 'A')
                              // ImageWithLetter(path: 'assets/images/blue.png', letter: 'T'),
                              // ImageWithLetter(path: 'assets/images/orange.png', letter: 'E'),
                            ],
                            onTap: () {
                              context.navPush(PropertyInformation(
                                inspectionDetailsModel: entryInspectionData,
                              ));
                            },
                          ),
                        ),
                        24.verticalSpace,
                        Expanded(
                          child: AnimatedReorderableListView<Template>(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 24),
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              final template = templateList.value[index];
                              return Padding(
                                key: ValueKey(template.id),
                                padding: const EdgeInsets.only(bottom: 16),
                                child: SlideableWidget(
                                  onPressed: (BuildContext context) {
                                    ref
                                        .read(templateNotifierProvider.notifier)
                                        .deleteTemplate(
                                            inspectionId: inspectionId,
                                            templateId: template.id ?? 0);
                                  },
                                  widgetKey: ValueKey(template.label),
                                  child: ReportContainer(
                                    color:template.isSubmited==true?const Color(0xffe63bf86):Colors.white,
                                    title: template.label ?? '',
                                    imageItems: const [
                                      // if (template.isSubmited!)
                                      //   ImageWithLetter(
                                      //       path: 'assets/images/blue.png',
                                      //       letter: 'A')
                                      // else
                                      //   ImageWithLetter(
                                      //       path: 'assets/images/orange.png',
                                      //       letter: 'A'),
                                      // if(template)
                                      // ImageWithLetter(
                                      //     path: 'assets/images/orange.png',
                                      //     letter: 'T'),
                                    ],
                                    onTap: () {
                                      if (entryInspectionData.inspectionDetails
                                              ?.sInspectionType ==
                                          "Entry") {
                                        context.navPush(EntryInspectionDetails(
                                          template: template,
                                        ));
                                      } else {
                                        context.navPush(
                                            RoutineInspectionDetails(
                                                template: template));
                                      }
                                    },
                                  ),
                                ),
                              );
                            },
                            enterTransition: [FadeIn(), ScaleInTop()],
                            exitTransition: [SlideInUp()],
                            insertDuration: const Duration(milliseconds: 300),
                            removeDuration: const Duration(milliseconds: 300),
                            dragStartDelay: const Duration(milliseconds: 200),

                            items: templateList.value ?? [],
                            onReorder: (int oldIndex, int newIndex) {
                              final template =
                                  templateList.value.removeAt(oldIndex);
                              templateList.value.insert(newIndex, template);
                            },
                            isSameItem: (a, b) => a.id == b.id,
                          ),
                        ),
                      ],
                    ),
                  );
                })));
  }
}

class PropertyViewContainer extends StatelessWidget {
  const PropertyViewContainer({required this.propertyName});
  final String propertyName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      height: 92.h,
      width: 327.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.white,
            Colors.white,
            Color(0xFFEBF3F5),
            Color(0xFFEBF3F5),
          ],
        ),
        border: Border.all(
          color: const Color(0xFF75CBCD), // ✅ border color here
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
              height: 48.h,
              width: 48.w,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/home3.png',
                    fit: BoxFit.cover,
                  ))),
          10.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'House',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF494D60),
                  ),
                ),
                AutoSizeText(
                  propertyName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PropertyViewContainer2 extends StatelessWidget {
  const PropertyViewContainer2({required this.propertyName});
  final String propertyName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      height: 92.h,
      width: 327.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.white,
            Colors.white,
            Color(0xFFEBF3F5),
            Color(0xFFEBF3F5),
          ],
        ),
        border: Border.all(
          color: const Color(0xFF75CBCD), // ✅ border color here
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
              height: 48.h,
              width: 48.w,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/home3.png',
                    fit: BoxFit.cover,
                  ))),
          10.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'House',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF494D60),
                  ),
                ),
                AutoSizeText(
                  propertyName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
