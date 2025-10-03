import 'package:freezed_annotation/freezed_annotation.dart';
part 'inspection_compliance_params.freezed.dart';
part 'inspection_compliance_params.g.dart';

@freezed
class InspectionComplianceParams with _$InspectionComplianceParams {
  const factory InspectionComplianceParams({
    int? InspectionId,
    bool? PremisesStrctlySound,
    bool? LightingInRoom,
    bool? Ventilation,
    bool? ElctrcityOutletsSockt,
    bool? PlumbingandDrainage,
    bool? SuppliedElectricty,
    bool? SuppliedGas,
    bool? ConnectdToWaterSupply,
    bool? ContainBathrm,
    bool? TenantAgreesUtilities,
    dynamic AdditionalUtilitiesTerms,
    bool? SignsMuds,
    bool? PestsVermin,
    bool? Rubbish,
    bool? ListedLooseFill,
    bool? SmokeAlarmInstalled,
    bool? SmokeAlarmWorking,
    DateTime? SmokeAlaramLastChecked,
    bool? SmokeAlarmBttryReplaced,
    DateTime? BattryChangedDate,
    bool? HaveRemovableBattry,
    DateTime? RemovableBattryChangedDate,
    bool? VisibleSIgnDamage,
    bool? VisibleElectricityHazard,
    bool? VisibleGasHazard,
    bool? TenantAgreeSafetyIssues,
    bool? AdditionalTermSafetyIssues,
    bool? TelephoneConnectd,
    bool? InternetConnected,
    bool? SeperatedMetered,
    bool? ShowerheadMaximumFlow,
    bool? DualFlushToilet,
    bool? ColdWatrTapsMaximumFlow,
    bool? CheckedWaterLeakage,
    DateTime? WaterEfficiencyDateChecked,
    dynamic WatermeterReadingStart,
    DateTime? DateofWaterMeterReadingStart,
    dynamic WatermeterReadingEnd,
    DateTime? DateOdWaterMeterReadingEnd,
    String? AdditionalComments,
    DateTime? LastDatePaintingExternal,
    DateTime? LastDatePaintingInternal,
    DateTime? LastDateInstalledSmokeAlarms,
    DateTime? LastDateFloorCleaned,
    bool? LandlordAgreeToUndrtakeWork,
    List<String>? LandLordWorkDoneBy,
    List<String>? LandLordWorkDoneNote,
    DateTime? TenantReceivedOn,
    num? WaterMeterReading,
  }) = _InspectionComplianceParams;

  factory InspectionComplianceParams.fromJson(Map<String, dynamic> json) => _$InspectionComplianceParamsFromJson(json);

  factory InspectionComplianceParams.empty() {
    return const InspectionComplianceParams();
  }

}
