import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/inspection_feature/pages/property_inspection_details/edit_report.dart';
import 'package:foreal_property/features/inspection_feature/pages/property_inspection_details/property_information/property_detail.dart';
import 'package:foreal_property/features/inspection_feature/pages/property_inspection_details/property_information/smoke_alarm.dart';
import 'package:foreal_property/features/inspection_feature/pages/property_inspection_details/property_information/wtaer_efficiency.dart';
import 'package:foreal_property/features/inspection_feature/provider/inspection_provider.dart';

import '../../../../../common/common_widgets.dart';
import '../../../model/inspection_details_model.dart';
import '../../../provider/inspection_details_provider.dart';
import 'additional.dart';
import 'communication_screen.dart';
import 'health_issues.dart';
import 'minimum_standard.dart';
import 'other.dart';

class PropertyInformation extends ConsumerStatefulWidget {
  const PropertyInformation({super.key, required this.inspectionDetailsModel});
  final InspectionDetailsModel inspectionDetailsModel;
  @override
  ConsumerState<PropertyInformation> createState() =>
      _PropertyInformationState();
}

class _PropertyInformationState extends ConsumerState<PropertyInformation> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final initialData =
          widget.inspectionDetailsModel.inspectionComplianceUtilitiesDetails;
      ref.read(inspectionComplianceParamProvider.notifier).updateForInitial(
          initialData!,
          widget.inspectionDetailsModel.inspectionDetails?.inspectionId ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    final propertyAddress = widget.inspectionDetailsModel
            .inspectionPropertyInformation?.propertyAddress ??
        '';
    final inspectionId=widget.inspectionDetailsModel.inspectionDetails?.inspectionId;
    return PopScope(
        onPopInvokedWithResult: (result,obj){
          ref.invalidate(
              getInspectionDetailsProvider(inspectionId: inspectionId??0));
        },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Compliance/Utilities'),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        backgroundColor: const Color(0xFFEBF3F5),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              // PropertyViewContainer2(propertyName: propertyAddress),
              // 24.verticalSpace,
              // ReportContainer(
              //   title: 'Property Details',
              //   imageItems: [
              //     ImageWithLetter(path: 'assets/images/blue.png', letter: 'A'),
              //     // ImageWithLetter(path: 'assets/images/blue.png', letter: 'T'),
              //     // ImageWithLetter(path: 'assets/images/orange.png', letter: 'E'),
              //   ],
              //   onTap: () {
              //     context.push(const PropertyDetailScreen());
              //   },
              // ),
              // 16.verticalSpace,
              ReportContainer(
                title: 'Health Issues',
                onTap: () {
                  context.navPush(HealthIssues(
                    utilitiesDetails: widget.inspectionDetailsModel
                        .inspectionComplianceUtilitiesDetails,
                  ));
                },
                imageItems: const [
                  // ImageWithLetter(path: 'assets/images/blue.png', letter: 'A'),
                  // ImageWithLetter(path: 'assets/images/orange.png', letter: 'T'),
                  // ImageWithLetter(path: 'assets/images/orange.png', letter: 'E'),
                ],
              ),
              16.verticalSpace,
              ReportContainer(
                title: 'Minimum Standards',
                onTap: () {
                  context.navPush(MinimumStandard(
                    utilitiesDetails: widget.inspectionDetailsModel
                        .inspectionComplianceUtilitiesDetails,
                  ));
                },
                imageItems: const [
                  // ImageWithLetter(path: 'assets/images/red.png', letter: 'A'),
                ],
              ),
              16.verticalSpace,
              ReportContainer(
                title: 'Smoke Alarm',
                onTap: () {
                  context.navPush(SmokeAlarm(
                    utilitiesDetails: widget.inspectionDetailsModel
                        .inspectionComplianceUtilitiesDetails,
                  ));
                },
              ),
              16.verticalSpace,
              ReportContainer(
                title: 'Other',
                onTap: () => context.navPush(OtherScreen(
                  utilitiesDetails: widget.inspectionDetailsModel
                      .inspectionComplianceUtilitiesDetails,
                )),
              ),
              16.verticalSpace,
              ReportContainer(
                title: 'Communications',
                onTap: () {
                  context.navPush(CommunicationScreen(
                    utilitiesDetails: widget.inspectionDetailsModel
                        .inspectionComplianceUtilitiesDetails,
                  ));
                },
              ),
              16.verticalSpace,
              ReportContainer(
                title: 'Water Efficiency',
                onTap: () {
                  context.navPush(WtaerEfficiencyScreen(
                    utilitiesDetails: widget.inspectionDetailsModel
                        .inspectionComplianceUtilitiesDetails,
                  ));
                },
              ),
              16.verticalSpace,
              ReportContainer(
                title: 'Additional',
                onTap: () {
                  context.navPush(AdditionalScreen(
                    utilitiesDetails: widget.inspectionDetailsModel
                        .inspectionComplianceUtilitiesDetails,
                  ));
                },
              ),
              16.verticalSpace,
              // ReportContainer(
              //   title: 'Landlord Promise',

              // ),
            ],
          ),
        ),
      ),
    );
  }
}
