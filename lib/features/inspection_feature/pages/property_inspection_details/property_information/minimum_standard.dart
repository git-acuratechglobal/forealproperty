import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_provider.dart';
import '../../../../../common/common_widgets.dart';
import '../../../../../core/utils/appbutton.dart';
import '../../../model/inspection_details_model.dart';
import '../../../provider/inspection_details_provider.dart';

class MinimumStandard extends ConsumerStatefulWidget {
  const MinimumStandard(
      {super.key, required this.utilitiesDetails, required this.inspectionId});
  final InspectionComplianceUtilitiesDetails? utilitiesDetails;
  final int inspectionId;
  @override
  ConsumerState<MinimumStandard> createState() => _MinimumStandardState();
}

class _MinimumStandardState extends ConsumerState<MinimumStandard> {
  @override
  Widget build(BuildContext context) {
    final params = ref.read(inspectionComplianceParamProvider.notifier);
    return PopScope(
      onPopInvokedWithResult: (result, obj) {
        ref.invalidate(
            getInspectionDetailsProvider(inspectionId: widget.inspectionId));
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Minimum Standard'),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        backgroundColor: const Color(0xFFEBF3F5),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: Column(
            children: [
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final item =
                        widget.utilitiesDetails?.getMinimumStandardList[index];
                    return InspectionContainer(
                      initialValue: item?.initialValue ?? false,
                      title: item?.title ?? "",
                      onChanged: (val) {
                        switch (index) {
                          case 0:
                            params.update(
                              (p) => p.copyWith(PremisesStrctlySound: val),
                            );
                            break;
                          case 1:
                            params.update(
                              (p) => p.copyWith(LightingInRoom: val),
                            );
                            break;
                          case 2:
                            params.update(
                              (p) => p.copyWith(Ventilation: val),
                            );
                            break;
                          case 3:
                            params.update(
                              (p) => p.copyWith(ElctrcityOutletsSockt: val),
                            );
                            break;
                          case 4:
                            params.update(
                              (p) => p.copyWith(PlumbingandDrainage: val),
                            );
                            break;
                          case 5:
                            params.update(
                              (p) => p.copyWith(SuppliedElectricty: val),
                            );
                            break;
                          case 6:
                            params.update(
                              (p) => p.copyWith(SuppliedGas: val),
                            );
                            break;
                          case 7:
                            params.update(
                              (p) => p.copyWith(ConnectdToWaterSupply: val),
                            );
                            break;
                          case 8:
                            params.update(
                              (p) => p.copyWith(ContainBathrm: val),
                            );
                            break;
                        }
                      },
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return 16.verticalSpace;
                  },
                  itemCount:
                      widget.utilitiesDetails?.getMinimumStandardList.length ??
                          0),
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
      ),
    );
  }
}
