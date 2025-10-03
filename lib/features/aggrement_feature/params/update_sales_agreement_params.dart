import 'package:foreal_property/features/aggrement_feature/params/update_management_agreement_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_sales_agreement_params.freezed.dart';
part 'update_sales_agreement_params.g.dart';

@freezed
sealed class UpdateSalesAgreementParams with _$UpdateSalesAgreementParams {
  const factory UpdateSalesAgreementParams({
    int? AgreementId,
    List<ContactlistModel2>? ContactlistModel,
    PrimarycontactModel2? PrimarycontactModel,
    @Default(2) int? LoggedUserId,
  }) = _UpdateSalesAgreementParams;

  factory UpdateSalesAgreementParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateSalesAgreementParamsFromJson(json);
}

@freezed
class UpdateSolicitorDetailsParams with _$UpdateSolicitorDetailsParams {
  const factory UpdateSolicitorDetailsParams({
    int? AgreementId,
    String? SolicitorFirmName,
    String? SolicitorPrincipalName,
    String? SolicitorAddress,
    String? SolicitorEmail,
    String? SolicitorPhone,
    String? SolicitorFax,
    int? PrimaryUserID,
    @Default(2) int? LoggedUserId,
  }) = _UpdateSolicitorDetailsParams;

  factory UpdateSolicitorDetailsParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateSolicitorDetailsParamsFromJson(json);
}

@freezed
class UpdatePeriodDetailsParams with _$UpdatePeriodDetailsParams {
  const factory UpdatePeriodDetailsParams({
    int? AgreementId,
    DateTime? AgreementStartDate,
    DateTime? AgreementEndDate,
    int? PropOccupation,
    String? FixFitIncluded,
    String? FixFitExcluded,
    String? EasementConvenantDefects,
    String? TermsAndConditionsOfSale,
    int? SellingFixedPrice,
    int? LicenceeRecomendMethodOfSale,
    String? SplInstructionAboutMarketing,
    int? SellingPriceFrom,
    int? SellingPriceTo,
    @Default(2) int? LoggedUserId,
  }) = _UpdatePeriodDetailsParams;

  factory UpdatePeriodDetailsParams.fromJson(Map<String, dynamic> json) =>
      _$UpdatePeriodDetailsParamsFromJson(json);
}

@freezed
class UpdateRemunerationDetailsParams with _$UpdateRemunerationDetailsParams {
  const factory UpdateRemunerationDetailsParams({
    int? AgreementId,
    int? SalePriceFlatFee,
    int? LicenceeEstimateSalePrice,
    int? GSTInclusiveRenumeration,
    int? IsEFT,
    String? PAccountName,
    String? PBSB,
    String? PAccountNo,
    bool? gst,
    @Default(2) int? LoggedUserId,
  }) = _UpdateRemunerationDetailsParams;

  factory UpdateRemunerationDetailsParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateRemunerationDetailsParamsFromJson(json);
}

@freezed
class UpdateExpensesChargeDetailsParams
    with _$UpdateExpensesChargeDetailsParams {
  const factory UpdateExpensesChargeDetailsParams({
    int? AgreementId,
    String? ExpenseANDChargesService1,
    int? ExpenseANDChargesEstimate1,
    String? ExpenseANDChargesdue1,
    String? ExpenseANDChargesService2,
    int? ExpenseANDChargesEstimate2,
    String? ExpenseANDChargesdue2,
    String? OtherServicesService1,
    int? OtherServicesGST1,
    String? OtherServicesdue1,
    String? OtherServicesService2,
    int? OtherServicesGST2,
    String? OtherServicesdue2,
    String? ExpenseANDChargesEstimateGST1,
    String? ExpenseANDChargesEstimateGST2,
    @Default(2) int? LoggedUserId,
  }) = _UpdateExpensesChargeDetailsParams;

  factory UpdateExpensesChargeDetailsParams.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateExpensesChargeDetailsParamsFromJson(json);
}

@freezed
class UpdateSalesPromotionDetailsParams
    with _$UpdateSalesPromotionDetailsParams {
  const factory UpdateSalesPromotionDetailsParams({
    int? AgreementId,
    int? AgencyId,
    bool? IsListedOnREA,
    bool? IsListedOnDomain,
    bool? SignboardOutsideProperty,
    bool? PropertyPhotos,
    bool? FloorPlans,
    bool? SocialMediaCampaign,
    String? Inspection,
    int? WithoutRisk,
    int? WithDefects,
    String? DisclosureSourceRebate1,
    int? DisclosureEstimateRebate1,
    String? DisclosureSourceRebate2,
    int? DisclosureEstimateRebate2,
    int? WaiverOfCoolinOffPeriod,
    int? WasAgreementProvidedPrincipal,
    DateTime? DateProvided,
    @Default(2) int? LoggedUserId,
  }) = _UpdateSalesPromotionDetailsParams;

  factory UpdateSalesPromotionDetailsParams.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateSalesPromotionDetailsParamsFromJson(json);
}
