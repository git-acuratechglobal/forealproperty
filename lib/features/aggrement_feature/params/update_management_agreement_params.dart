import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_management_agreement_params.freezed.dart';
part 'update_management_agreement_params.g.dart';

@freezed
sealed class UpdateManagementAgreementParams
    with _$UpdateManagementAgreementParams {
  const factory UpdateManagementAgreementParams({
    int? AgreementId,
    int? Rent,
    int? BondAmount,
    @Default(1) int? Period,
    bool? PropertyFurnished,
    bool? PropertyUnfurnished,
    List<ContactlistModel2>? ContactlistModel,
    PrimarycontactModel2? PrimarycontactModel,
    @Default(2) int? ContactGstRegistered,
    @Default(2) int? LoggedUserId,
  }) = _UpdateManagementAgreementParams;

  factory UpdateManagementAgreementParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateManagementAgreementParamsFromJson(json);

  factory UpdateManagementAgreementParams.empty() =>
      const UpdateManagementAgreementParams(
        ContactlistModel: [],
        PrimarycontactModel: PrimarycontactModel2(),
      );
}

@freezed
sealed class ContactlistModel2 with _$ContactlistModel2 {
  const factory ContactlistModel2({
    String? fName,
    String? lName,
    String? abn,
    String? address,
    String? mobileNumber,
    String? phone,
    String? contactEmail,
  }) = _ContactlistModel2;

  factory ContactlistModel2.fromJson(Map<String, dynamic> json) =>
      _$ContactlistModel2FromJson(json);
}

@freezed
sealed class PrimarycontactModel2 with _$PrimarycontactModel2 {
  const factory PrimarycontactModel2({
    String? fName,
    String? lName,
    dynamic address,
    String? mobileNumber,
    @Default('ef58a8e69ff94') String? contactUniqueId,
    dynamic landlineNumber,
    dynamic landlineNumber1,
    dynamic companyName,
    String? abn,
    dynamic acn,
    dynamic postcode,
    dynamic regions,
    dynamic contactType,
    @Default(false) bool? isUserVerified,
    @Default(false) bool? isProofSubmited,
    String? getFullAddress,
    String? getFullName,
    dynamic ownerId,
    dynamic contactUId,
    @Default(true) bool? isPrimary,
    dynamic contactName,
    String? contactEmail,
    String? name,
    dynamic firstName,
    dynamic lastName,
    String? phone,
    dynamic fromDate,
    dynamic toDate,
    dynamic title,
    @Default(false) bool? isVerificationLinkSend,
    dynamic typeIAM,
    dynamic verificationProofs,
  }) = _PrimarycontactModel2;

  factory PrimarycontactModel2.fromJson(Map<String, dynamic> json) =>
      _$PrimarycontactModel2FromJson(json);
}

@freezed
class ManagementAgreementPeriodDetailsParams
    with _$ManagementAgreementPeriodDetailsParams {
  const factory ManagementAgreementPeriodDetailsParams({
    int? AgreementId,
    DateTime? AgreementDate,
    bool? LeasePremisesAtMarketRent,
    bool? ReferToPrincipalForReLease,
    bool? ReviewRentBfrRLease,
    @Default(2) int? LoggedUserId,
  }) = _ManagementAgreementPeriodDetailsParams;

  factory ManagementAgreementPeriodDetailsParams.fromJson(
          Map<String, dynamic> json) =>
      _$ManagementAgreementPeriodDetailsParamsFromJson(json);
}

@freezed
class ManagementAgreementFeeChargesParams
    with _$ManagementAgreementFeeChargesParams {
  const factory ManagementAgreementFeeChargesParams({
    int? AgreementId,
    String? InitialWeekRent,
    bool? PrprtyLeasdPrdDuringAgrmnt,
    bool? PrprtyLeasdPrdWithinMonth,
    int? ManagementFee,
    int? MarketingFee,
    int? AdministrationFee,
    @Default(0.5) double? ManagementFeeGST,
    @Default(2) int? LoggedUserId,
  }) = _ManagementAgreementFeeChargesParams;

  factory ManagementAgreementFeeChargesParams.fromJson(
          Map<String, dynamic> json) =>
      _$ManagementAgreementFeeChargesParamsFromJson(json);
}

@freezed
class ManagementAgremntTribunalParams with _$ManagementAgremntTribunalParams {
  const factory ManagementAgremntTribunalParams({
    int? AgreementId,
    int? OfficeExpenses,
    bool? Redirect,
    bool? STRATA,
    bool? Water,
    bool? CouncilRates,
    bool? Insurance,
    String? PAccountName,
    String? PBSB,
    String? PAccountNo,
    int? ApplicationFeesForUtilites,
    @Default(2) int? LoggedUserId,
  }) = _ManagementAgremntTribunalParams;

  factory ManagementAgremntTribunalParams.fromJson(Map<String, dynamic> json) =>
      _$ManagementAgremntTribunalParamsFromJson(json);
}

@freezed
class ManagementAgremntPromotionParams with _$ManagementAgremntPromotionParams {
  const factory ManagementAgremntPromotionParams({
    int? AgreementId,
    bool? isListedOnREA,
    bool? isListedOnDomain,
    bool? SocialMedia,
    bool? Signboard,
    String? ThirdPartyName,
    String? AmountOfRebateDiscount,
    bool? ObtainReferenceFromTenant,
    bool? EnterIntoSignTenacyAgrmnt,
    bool? UndertakeInspection,
    bool? EffectRepairMaintainProprty,
    bool? PayDisbursemnt,
    bool? CollectReceiveRent,
    bool? ServeNoticeForBreachTenancy,
    bool? UndrtakeStpsToRecvrMony,
    bool? RepresentPrincipalCourt,
    bool? PayAccountsForAmount,
    bool? AdvertisePropertyLetting,
    bool? ReviewRentEndTenancy,
    @Default(2) int? LoggedUserId,
  }) = _ManagementAgremntPromotionParams;

  factory ManagementAgremntPromotionParams.fromJson(
          Map<String, dynamic> json) =>
      _$ManagementAgremntPromotionParamsFromJson(json);
}

@freezed
class ManagementAgremntRepairDetailsParams
    with _$ManagementAgremntRepairDetailsParams {
  const factory ManagementAgremntRepairDetailsParams({
    int? AgreementId,
    String? TradesmanPayment,
    bool? SupplyUrgentRepairToTenant,
    bool? LooseFillAsbestosInstallation,
    bool? SwimmingPoolRegistered,
    bool? SmokeAlarm,
    bool? HealthIssues,
    bool? Flooding,
    bool? Bushfire,
    bool? SeriousViolentCrime,
    bool? ParkingRestriction,
    bool? ShareDriveway,
    bool? AffectdFlooding,
    bool? AffectdBushfire,
    bool? AffectdSeriousViolent,
    bool? IsContractForSalePremises,
    bool? IsProposelToSell,
    bool? HasMortgageeCommenced,
    bool? isMortgageeTakgActnPossssion,
    bool? WaterEfficiencyByNSW,
    bool? PrincipalWarrantsSmokeAlarm,
    @Default(1) int? AgencyId,
    @Default(2) int? UserId,
    @Default(2) int? LoggedUserId,
  }) = _ManagementAgremntRepairDetailsParams;

  factory ManagementAgremntRepairDetailsParams.fromJson(
          Map<String, dynamic> json) =>
      _$ManagementAgremntRepairDetailsParamsFromJson(json);
}
