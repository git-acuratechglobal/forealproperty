import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/page_loading_widget.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:foreal_property/features/inspection_feature/pages/property_inspection_details/widgets/expansion_tile_widget.dart';
import 'package:foreal_property/features/inspection_feature/params/add_template_param.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_details_provider.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/utils/appsnackbar.dart';
import '../../model/inspection_details_model.dart';

class EntryInspectionDetails extends HookConsumerWidget {
  const EntryInspectionDetails({super.key, required this.template});
  final Template template;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopScope(
      onPopInvokedWithResult: (result, obj) {
        ref.invalidate(getInspectionDetailsProvider(
            inspectionId: template.inspectionId ?? 0));
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(template.label ?? ""),
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
                      child: const Text('Add new Facility'),
                      onTap: () {
                        context.navPush(AddNewFacility(
                          tempId: template.id ?? 0,
                          inspectionId: template.inspectionId ?? 0,
                        ));
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
              value: ref.watch(getInspectionDetailsProvider(
                  inspectionId: template.inspectionId ?? 0)),
              data: (data) {
                return ExpansionTileWidget(
                  templatesDetails: data.templates
                          ?.firstWhere((e) => e.id == template.id)
                          .templatesDetails ??
                      [],
                  inspectionId: template.inspectionId ?? 0,
                );
              })),
    );
  }
}

class AddNewFacility extends ConsumerStatefulWidget {
  const AddNewFacility(
      {super.key, required this.tempId, required this.inspectionId});
  final int tempId;
  final int inspectionId;
  @override
  ConsumerState<AddNewFacility> createState() => _AddNewFacilityState();
}

class _AddNewFacilityState extends ConsumerState<AddNewFacility> {
  String? typeValue;
  @override
  void initState() {
    super.initState();
    ref.listenManual(subTemplateNotifierProvider, (_, next) {
      switch (next) {
        case AsyncData<SubTemplateState?> data when data.value != null:
          if (data.value != null) {
            ref.invalidate(getSubTemplateProvider(widget.tempId));
            ref.invalidate(getInspectionDetailsProvider(
                inspectionId: widget.inspectionId));
            if (data.value!.response != null) {
              Utils.showSnackBar(context, data.value!.response!);
            }
            if (data.value!.event == SubTemplateEvent.add) {
              context.navPop();
            }
          }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageLoadingWidget(
      isLoading: ref.watch(subTemplateNotifierProvider).isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Add New Facility"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: AsyncWidget(
                    value: ref.watch(getSubTemplateProvider(widget.tempId)),
                    data: (data) {
                      return ListView.separated(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        itemBuilder: (BuildContext context, int index) {
                          final facility = data.optimizedList[index];
                          return ListTile(
                            tileColor: Colors.white,
                            title: Text(facility.facility ?? ''),
                            trailing: InkWell(
                              onTap: () {
                                ref
                                    .read(subTemplateNotifierProvider.notifier)
                                    .removeSubTemplate(
                                        widget.tempId, facility.id ?? 0);
                              },
                              child: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return 10.verticalSpace;
                        },
                        itemCount: data.optimizedList.length,
                      );
                    }),
              ),
              AppTextFiled(
                hintText: "Facility Name",
                onChanged: (val) {
                  typeValue = val;
                },
              ),
              20.verticalSpace,
              PrimaryButton(
                  title: 'Submit',
                  onClick: () {
                    if (typeValue != null && typeValue!.isNotEmpty) {
                      ref
                          .read(subTemplateNotifierProvider.notifier)
                          .addSubTemplate(widget.tempId, typeValue!);
                    }
                  }),
              30.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
