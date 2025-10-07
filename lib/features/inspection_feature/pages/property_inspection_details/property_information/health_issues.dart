import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_provider.dart';
import '../../../../../common/common_widgets.dart';
import '../../../../../core/utils/appbutton.dart';
import '../../../model/inspection_details_model.dart';
import '../../../provider/inspection_details_provider.dart';

class HealthIssues extends ConsumerStatefulWidget {
  const HealthIssues(
      {super.key, required this.utilitiesDetails, required this.inspectionId});
  final InspectionComplianceUtilitiesDetails? utilitiesDetails;
  final int inspectionId;
  @override
  ConsumerState<HealthIssues> createState() => _HealthIssuesState();
}

class _HealthIssuesState extends ConsumerState<HealthIssues> {
  @override
  Widget build(BuildContext context) {
    final params = ref.read(inspectionComplianceParamProvider.notifier);
    return PopScope(
      onPopInvokedWithResult: (result, obj) {
        ref.invalidate(getInspectionDetailsProvider(
            inspectionId: widget.inspectionId ?? 0));
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Health Issues'),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        backgroundColor: const Color(0xFFEBF3F5),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount:
                    widget.utilitiesDetails?.healthIssuesList.length ?? 0,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final item = widget.utilitiesDetails?.healthIssuesList[index];
                  return InspectionContainer(
                    title: item?.title,
                    initialValue: item?.initialValue ?? false,
                    onChanged: (val) {
                      print(val);
                      switch (index) {
                        case 0:
                          params.update(
                            (p) => p.copyWith(SignsMuds: val),
                          );
                          break;
                        case 1:
                          params.update(
                            (p) => p.copyWith(PestsVermin: val),
                          );
                          break;
                        case 2:
                          params.update(
                            (p) => p.copyWith(Rubbish: val),
                          );
                          break;
                        case 3:
                          params.update(
                            (p) => p.copyWith(ListedLooseFill: val),
                          );
                          break;
                      }
                    },
                  );
                },
              ),
              24.verticalSpace,
              PrimaryButton(
                isLoading: ref.watch(inspectionNotifierProvider).isLoading,
                title: 'Update',
                onClick: () {
                  ref
                      .read(inspectionNotifierProvider.notifier)
                      .updateCompliance();
                },
              ),
              24.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
