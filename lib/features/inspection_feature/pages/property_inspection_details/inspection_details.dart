import 'package:animated_reorderable_list/animated_reorderable_list.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/inspection_feature/model/inspection_details_model.dart';
import 'package:foreal_property/features/inspection_feature/pages/property_inspection_details/routine_inspection_details.dart';
import 'package:foreal_property/features/inspection_feature/params/add_template_param.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_details_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/common_widgets.dart';
import '../../../../core/utils/appsnackbar.dart';
import '../../../../core/utils/custom_refreshIndicator.dart';
import '../../../auth_feature/provider/auth_provider.dart';
import '../../provider/inspection_provider.dart';
import '../../provider/template_provider.dart';
import 'activity.dart';
import 'add_new_templates.dart';
import 'entry_inspection_details.dart';
import 'widgets/slideable_widget.dart';

class PropertyInspectionDetails extends HookConsumerWidget {
  const PropertyInspectionDetails(
      {super.key,
      required this.inspectionId,
      required this.inspectionUniqueId});
  final int inspectionId;
  final String inspectionUniqueId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final templateList = useState<List<Template>>([]);
    final user = ref.watch(userProvider);
    final inspectionDetailsState = ref.watch(
      getInspectionDetailsProvider(inspectionId: inspectionId),
    );
    final bool isLoading = ref.watch(inspectionNotifierProvider).isLoading ||
        inspectionDetailsState.isLoading ||
        inspectionDetailsState.isRefreshing;
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.listenManual(templateNotifierProvider, (_, next) {
          switch (next) {
            case AsyncData<TemplateState?> data when data.value != null:
              if (data.value != null) {
                ref.invalidate(
                    getInspectionDetailsProvider(inspectionId: inspectionId));
                if (data.value!.response != null) {
                  Utils.showSnackBar(context, data.value!.response!);
                }
                if (data.value!.event == TemplateEvent.add) {
                  context.pop();
                }
              }
              break;
            case AsyncError error:
              Utils.showSnackBar(context, error.error.toString());
              break;
          }
        });
      });
      return null;
    }, const []);
    return PageLoadingWidget(
      isLoading: isLoading,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Report'),
            centerTitle: true,
            automaticallyImplyLeading: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: PopupMenuButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFFE2E2E2),
                      )),
                  itemBuilder: (context) => <PopupMenuEntry<String>>[
                    PopupMenuItem(
                      //  value: 0,
                      child: const Text('Add New Template'),
                      onTap: () {
                        context.push(AddNewTemplates(
                          inspectionId: inspectionId,
                        ));
                      },
                    ),
                    PopupMenuItem(
                      //  value: 1,
                      child: const Text('Activity'),
                      onTap: () {
                        context.push(const ActivityScreen());
                      },
                    ),
                    PopupMenuItem(
                      //  value: 2,
                      child: const Text('Share'),
                      onTap: () {
                        ref
                            .read(inspectionNotifierProvider.notifier)
                            .shareInspection(
                                inspectionId: inspectionUniqueId,
                                userType: user?.userType ?? 0,
                                userId: user?.userId ?? 0);
                      },
                    ),
                  ],
                  child: Image.asset(
                    'assets/images/more-circle.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
              )
            ],
          ),
          body: AsyncWidget(
              onRetry: () => ref.refresh(
                  getInspectionDetailsProvider(inspectionId: inspectionId)),
              value: ref.watch(
                  getInspectionDetailsProvider(inspectionId: inspectionId)),
              data: (InspectionDetailsModel entryInspectionData) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  templateList.value = entryInspectionData.templates ?? [];
                });
                final propertyAddress = entryInspectionData
                        .inspectionPropertyInformation?.propertyAddress ??
                    '';
                return CustomRefreshIndicator(
                  onRefresh: () async => ref.refresh(
                      getInspectionDetailsProvider(inspectionId: inspectionId)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: _PropertyViewContainer(
                          propertyName: propertyAddress,
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
                                  title: template.label ?? '',
                                  imageItems: [
                                    if (template.isSubmited!)
                                      ImageWithLetter(
                                          path: 'assets/images/blue.png',
                                          letter: 'A')
                                    else
                                      ImageWithLetter(
                                          path: 'assets/images/orange.png',
                                          letter: 'A'),
                                    ImageWithLetter(
                                        path: 'assets/images/orange.png',
                                        letter: 'T'),
                                  ],
                                  onTap: () {
                                    if (entryInspectionData.inspectionDetails
                                            ?.sInspectionType ==
                                        "Entry") {
                                      context.push(EntryInspectionDetails(
                                        template: template,
                                      ));
                                    } else {
                                      context.push(RoutineInspectionDetails(
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
                          // separatorBuilder: (BuildContext context, int index) {
                          //   return 16.verticalSpace;
                          // },
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
              })),
    );
  }
}

class _PropertyViewContainer extends StatelessWidget {
  const _PropertyViewContainer({required this.propertyName});
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
