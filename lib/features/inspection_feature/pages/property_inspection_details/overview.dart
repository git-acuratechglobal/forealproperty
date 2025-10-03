import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/aggrement_feature/sales_agency_agreement/widgets/text_field.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_details_provider.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_provider.dart';

import '../../../../common/common_widgets.dart';
import '../../../../common/page_loading_widget.dart';
import '../../../aggrement_feature/sales_agency_agreement/widgets/sub_heading_text.dart';
import '../../model/active_agent_model.dart';
import '../../model/inspection_overview_model.dart';

class OverviewScreen extends ConsumerStatefulWidget {
  const OverviewScreen(
      {super.key,
      required this.inspectionOverviewModel,
      required this.inspectionId,required this.indexCallBack});
  final InspectionOverviewModel inspectionOverviewModel;
  final int inspectionId;
  final Function(int index) indexCallBack;
  @override
  ConsumerState createState() => _OverviewScreenState();
}

ActiveAgentModel? selectedActiveAgent;
String? selectedValue;

class _OverviewScreenState extends ConsumerState<OverviewScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(updateOverviewParamsProvider.notifier)
          .updateForInitial(widget.inspectionOverviewModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    final overview = widget.inspectionOverviewModel;
    final isLoading = ref.watch(inspectionNotifierProvider).isLoading;
    return PageLoadingWidget(
      isLoading: isLoading,
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 24.sp),
          child: Column(
            spacing: 20.sp,
            children: [
              AppTextFiled(
                isEditable: false,
                initialValue: overview.formattedInspectionDate,
                hintText: "Date",
                lable: 'Date',
              ),
              AppTextFiled(
                isEditable: false,
                initialValue: overview.sInspectionType,
                hintText: "Type",
                lable: 'Type',
              ),
              AppTextFiled(
                isEditable: false,
                initialValue: overview.formattedStartTime,
                hintText: "Start Date",
                lable: 'Start Date',
              ),
              AppTextFiled(
                isEditable: false,
                initialValue: overview.formattedEndTime,
                hintText: "End Date",
                lable: 'End Date',
              ),
              AppTextFiled(
                isEditable: false,
                initialValue: overview.formattedDuration,
                hintText: "Duration",
                lable: 'Duration',
              ),
              AsyncWidget(
                  value: ref
                      .watch(getActiveAgentProvider(agencyId: "ba137a8612994")),
                  data: (agentData) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SubHeadingText(text: 'Manager'),
                        12.verticalSpace,
                        DynamicWidgetDropdown(
                          initialValue: agentData.firstWhere((e) =>
                              e.value == overview.assignedAgent.toString()),
                          propertyOptions: agentData,
                          selectedValue: selectedActiveAgent,
                          onChanged: (ActiveAgentModel? value) {
                            print(value);
                            if (value != null) {
                              selectedActiveAgent = value;
                              ref
                                  .read(updateOverviewParamsProvider.notifier)
                                  .update((e) => e.copyWith(
                                      AssignedAgent: value.value.toString()));
                            }
                          },
                          hintText: 'Select Manager',
                          displayText: (ActiveAgentModel value) =>
                              value.text ?? "",
                        ),
                      ],
                    );
                  }),
              AppTextFiled(
                initialValue: overview.label,
                hintText: "Labels",
                lable: 'Labels',
                onChanged: (val) {
                  ref
                      .read(updateOverviewParamsProvider.notifier)
                      .update((e) => e.copyWith(Label: val));
                },
              ),
              AppTextFiled(
                initialValue: overview.summary,
                hintText: "Summary",
                lable: 'Summary',
                onChanged: (val) {
                  ref
                      .read(updateOverviewParamsProvider.notifier)
                      .update((e) => e.copyWith(Summary: val));
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SubHeadingText(text: 'Tenant'),
                  12.verticalSpace,
                  WidgetDropdown(
                    initialValue: overview.tenantFolioId != null
                        ? overview.tenantDetails?.tenantName
                        : null,
                    propertyOptions: [
                      "No Tenant",
                      if (overview.tenantDetails?.tenantName != null)
                        overview.tenantDetails?.tenantName
                    ],
                    selectedValue: selectedValue,
                    onChanged: (String? value) {
                      if (value != null) {
                        selectedValue = value;
                        ref
                            .read(updateOverviewParamsProvider.notifier)
                            .update((e) => e.copyWith(
                                TenantFolioId: selectedValue == "No Tenant"
                                    ? null
                                    : overview.tenantDetails?.tenantFolioId));
                      }
                    },
                    hintText: 'Select Tenant',
                  ),
                ],
              ),
              40.verticalSpace,
              PrimaryButton(
                  title: "Update",
                  onClick: () {
                    ref
                        .read(inspectionNotifierProvider.notifier)
                        .updateOverview();
                    widget.indexCallBack(1);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
