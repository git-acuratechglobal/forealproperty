import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../common/common_widgets.dart';
import '../../../../../core/utils/appbutton.dart';
import '../../../model/inspection_details_model.dart';
import '../../../provider/inspection_provider.dart';

class OtherScreen extends ConsumerStatefulWidget {
  const OtherScreen({super.key, required this.utilitiesDetails});
  final InspectionComplianceUtilitiesDetails? utilitiesDetails;
  @override
  ConsumerState<OtherScreen> createState() => _OtherScreenState();
}

class _OtherScreenState extends ConsumerState<OtherScreen> {
  @override
  Widget build(BuildContext context) {
    final other = widget.utilitiesDetails?.otherList;
    final params = ref.watch(inspectionComplianceParamProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other'),
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
                itemBuilder: (BuildContext context, int index) {
                  final otherData = other?[index];
                  return InspectionContainer(
                    title: otherData?.title,
                    initialValue: otherData?.initialValue ?? false,
                    onChanged: (val) {
                      switch (index) {
                        case 0:
                          params.update(
                            (p) => p.copyWith(VisibleSIgnDamage: val),
                          );
                          break;
                        case 1:
                          params.update(
                            (p) => p.copyWith(VisibleElectricityHazard: val),
                          );
                          break;
                        case 2:
                          params.update(
                            (p) => p.copyWith(VisibleGasHazard: val),
                          );
                          break;
                        case 3:
                          params.update(
                            (p) => p.copyWith(TenantAgreeSafetyIssues: val),
                          );
                          break;
                        case 4:
                          params.update(
                            (p) => p.copyWith(AdditionalTermSafetyIssues: val),
                          );
                          break;
                      }
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return 16.verticalSpace;
                },
                itemCount: other?.length ?? 0),
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
          ],
        ),
      ),
    );
  }
}
