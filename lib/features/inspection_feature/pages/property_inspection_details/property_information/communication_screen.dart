import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';

import '../../../../../common/common_widgets.dart';
import '../../../../../core/utils/appbutton.dart';
import '../../../model/inspection_details_model.dart';
import '../../../provider/inspection_provider.dart';

class CommunicationScreen extends ConsumerStatefulWidget {
  const CommunicationScreen({super.key, required this.utilitiesDetails});
  final InspectionComplianceUtilitiesDetails? utilitiesDetails;
  @override
  ConsumerState<CommunicationScreen> createState() =>
      _CommunicationScreenState();
}

class _CommunicationScreenState extends ConsumerState<CommunicationScreen> {
  @override
  Widget build(BuildContext context) {
    final communication = widget.utilitiesDetails?.communicationList;
    final params = ref.watch(inspectionComplianceParamProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Communication Facilities'),
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
                  final comData = communication?[index];
                  return InspectionContainer(
                    title: comData?.title,
                    initialValue: comData?.initialValue ?? false,
                    onChanged: (val) {
                      switch (index) {
                        case 0:
                          params.update(
                            (p) => p.copyWith(TelephoneConnectd: val),
                          );
                          break;
                        case 1:
                          params.update(
                            (p) => p.copyWith(InternetConnected: val),
                          );
                          break;
                      }
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return 16.verticalSpace;
                },
                itemCount: communication?.length ?? 0),
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
