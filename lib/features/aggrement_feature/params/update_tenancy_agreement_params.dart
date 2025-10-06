import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_tenancy_agreement_params.freezed.dart';
part 'update_tenancy_agreement_params.g.dart';

@freezed
class TenantUpdateParams with _$TenantUpdateParams {
  const factory TenantUpdateParams({
    int? AgreementId,
    int? AgencyId,
    int? AgentId,
    int? PropertyId,
    int? TenantFolioId,
    List<TenantList2>? TenantList,
    @Default(2) int? LoggedUserId,
  }) = _TenantUpdateParams;

  factory TenantUpdateParams.fromJson(Map<String, dynamic> json) =>
      _$TenantUpdateParamsFromJson(json);
}

@freezed
class TenantList2 with _$TenantList2 {
  const factory TenantList2({
    String? tenantFname,
    String? tenantLname,
    String? tenantMobile,
    String? tenantEmail,
    @Default(null) int? contactId,
    @JsonKey(includeIfNull: false) @Default(null) String? contactUniqueId,
  }) = _TenantList2;

  factory TenantList2.fromJson(Map<String, dynamic> json) =>
      _$TenantList2FromJson(json);
}

@freezed
class UpdateLandlordTenantDetailsParams
    with _$UpdateLandlordTenantDetailsParams {
  const factory UpdateLandlordTenantDetailsParams({
    int? AgreementId,
    String? LandlordAgentName,
    String? LandlordBusinessAddress,
    String? LandlordAgentPostcode,
    String? LandlordAgentSuburb,
    String? LandlordAgentState,
    String? LandlordAgentContact,
    String? TenantAgentName,
    String? TenantBusinessAddress,
    String? TenantAgentPostcode,
    String? TenantAgentSuburb,
    String? TenantAgentState,
    String? TenantAgentContact,
    String? PropertySuburb,
    String? PropertyPostCode,
    String? PropertyState,
    String? PropertyAddress,
    dynamic OtherSpace,
    int? TermsAgreement,
    String? TermsAgreementNote,
    String? AgreementStart,
    String? AgreementEnd,
    @Default(2) int? LoggedUserId,
  }) = _UpdateLandlordTenantDetailsParams;

  factory UpdateLandlordTenantDetailsParams.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateLandlordTenantDetailsParamsFromJson(json);
}

@freezed
class UpdateRentBondParams with _$UpdateRentBondParams {
  const factory UpdateRentBondParams({
    int? AgreementId,
    int? RentAmount,
    int? Period,
    String? LeaseCommencement,
    String? BSB,
    String? AccountNo,
    String? AccountName,
    String? PaymentReference,
    String? PaymentTo,
    String? PaymentAt,
    String? PaymentFollows,
    int? BondAmount,
    String? BondAmountProvidedTo,
    @Default(2) int? LoggedUserId,
  }) = _UpdateRentBondParams;

  factory UpdateRentBondParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateRentBondParamsFromJson(json);
}

@freezed
class UpdateTenantAgreementInfoParams with _$UpdateTenantAgreementInfoParams {
  const factory UpdateTenantAgreementInfoParams({
    int? AgreementId,
    int? AgencyId,
    int? MaximumTenant,
    String? ElectricalRepair,
    String? ElectricalRepairContact,
    String? PlumbingRepair,
    String? PlumbingRepairContact,
    dynamic OtherRepair,
    dynamic OtherRepairContact,
    bool? PayWaterBillSeperately,
    bool? IsElectricitySupplied,
    bool? IsGasSupplied,
    String? SmokeAlarmType,
    bool? SmokeAlarmBatteryReplacable,
    String? BatteryType,
    bool? BackupBatteryReplacable,
    String? TypeOfBackupBattery,
    bool? StrataRsponsibleForReplacement,
    bool? StrataByLawsApplicable,
    bool? DoesLandlordConsentElectronic,
    String? LandlordElctrcConsentEmail,
    bool? DoesTenantConsentElectronic,
    String? PetDetails,
    String? AdditionalComments,
    @Default(2) int? LoggedUserId,
  }) = _UpdateTenantAgreementInfoParams;

  factory UpdateTenantAgreementInfoParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateTenantAgreementInfoParamsFromJson(json);
}
