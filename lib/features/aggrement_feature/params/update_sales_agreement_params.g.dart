// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_sales_agreement_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateSalesAgreementParamsImpl _$$UpdateSalesAgreementParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateSalesAgreementParamsImpl(
      AgreementId: (json['AgreementId'] as num?)?.toInt(),
      ContactlistModel: (json['ContactlistModel'] as List<dynamic>?)
          ?.map((e) => ContactlistModel2.fromJson(e as Map<String, dynamic>))
          .toList(),
      PrimarycontactModel: json['PrimarycontactModel'] == null
          ? null
          : PrimarycontactModel2.fromJson(
              json['PrimarycontactModel'] as Map<String, dynamic>),
      LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$UpdateSalesAgreementParamsImplToJson(
        _$UpdateSalesAgreementParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'ContactlistModel': instance.ContactlistModel,
      'PrimarycontactModel': instance.PrimarycontactModel,
      'LoggedUserId': instance.LoggedUserId,
    };

_$UpdateSolicitorDetailsParamsImpl _$$UpdateSolicitorDetailsParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateSolicitorDetailsParamsImpl(
      AgreementId: (json['AgreementId'] as num?)?.toInt(),
      SolicitorFirmName: json['SolicitorFirmName'] as String?,
      SolicitorPrincipalName: json['SolicitorPrincipalName'] as String?,
      SolicitorAddress: json['SolicitorAddress'] as String?,
      SolicitorEmail: json['SolicitorEmail'] as String?,
      SolicitorPhone: json['SolicitorPhone'] as String?,
      SolicitorFax: json['SolicitorFax'] as String?,
      PrimaryUserID: (json['PrimaryUserID'] as num?)?.toInt(),
      LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$UpdateSolicitorDetailsParamsImplToJson(
        _$UpdateSolicitorDetailsParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'SolicitorFirmName': instance.SolicitorFirmName,
      'SolicitorPrincipalName': instance.SolicitorPrincipalName,
      'SolicitorAddress': instance.SolicitorAddress,
      'SolicitorEmail': instance.SolicitorEmail,
      'SolicitorPhone': instance.SolicitorPhone,
      'SolicitorFax': instance.SolicitorFax,
      'PrimaryUserID': instance.PrimaryUserID,
      'LoggedUserId': instance.LoggedUserId,
    };

_$UpdatePeriodDetailsParamsImpl _$$UpdatePeriodDetailsParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePeriodDetailsParamsImpl(
      AgreementId: (json['AgreementId'] as num?)?.toInt(),
      AgreementStartDate: json['AgreementStartDate'] == null
          ? null
          : DateTime.parse(json['AgreementStartDate'] as String),
      AgreementEndDate: json['AgreementEndDate'] == null
          ? null
          : DateTime.parse(json['AgreementEndDate'] as String),
      PropOccupation: (json['PropOccupation'] as num?)?.toInt(),
      FixFitIncluded: json['FixFitIncluded'] as String?,
      FixFitExcluded: json['FixFitExcluded'] as String?,
      EasementConvenantDefects: json['EasementConvenantDefects'] as String?,
      TermsAndConditionsOfSale: json['TermsAndConditionsOfSale'] as String?,
      SellingFixedPrice: (json['SellingFixedPrice'] as num?)?.toInt(),
      LicenceeRecomendMethodOfSale:
          (json['LicenceeRecomendMethodOfSale'] as num?)?.toInt(),
      SplInstructionAboutMarketing:
          json['SplInstructionAboutMarketing'] as String?,
      SellingPriceFrom: (json['SellingPriceFrom'] as num?)?.toInt(),
      SellingPriceTo: (json['SellingPriceTo'] as num?)?.toInt(),
      LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$UpdatePeriodDetailsParamsImplToJson(
        _$UpdatePeriodDetailsParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'AgreementStartDate': instance.AgreementStartDate?.toIso8601String(),
      'AgreementEndDate': instance.AgreementEndDate?.toIso8601String(),
      'PropOccupation': instance.PropOccupation,
      'FixFitIncluded': instance.FixFitIncluded,
      'FixFitExcluded': instance.FixFitExcluded,
      'EasementConvenantDefects': instance.EasementConvenantDefects,
      'TermsAndConditionsOfSale': instance.TermsAndConditionsOfSale,
      'SellingFixedPrice': instance.SellingFixedPrice,
      'LicenceeRecomendMethodOfSale': instance.LicenceeRecomendMethodOfSale,
      'SplInstructionAboutMarketing': instance.SplInstructionAboutMarketing,
      'SellingPriceFrom': instance.SellingPriceFrom,
      'SellingPriceTo': instance.SellingPriceTo,
      'LoggedUserId': instance.LoggedUserId,
    };

_$UpdateRemunerationDetailsParamsImpl
    _$$UpdateRemunerationDetailsParamsImplFromJson(Map<String, dynamic> json) =>
        _$UpdateRemunerationDetailsParamsImpl(
          AgreementId: (json['AgreementId'] as num?)?.toInt(),
          SalePriceFlatFee: (json['SalePriceFlatFee'] as num?)?.toInt(),
          LicenceeEstimateSalePrice:
              (json['LicenceeEstimateSalePrice'] as num?)?.toInt(),
          GSTInclusiveRenumeration:
              (json['GSTInclusiveRenumeration'] as num?)?.toInt(),
          IsEFT: (json['IsEFT'] as num?)?.toInt(),
          PAccountName: json['PAccountName'] as String?,
          PBSB: json['PBSB'] as String?,
          PAccountNo: json['PAccountNo'] as String?,
          gst: json['gst'] as bool?,
          LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
        );

Map<String, dynamic> _$$UpdateRemunerationDetailsParamsImplToJson(
        _$UpdateRemunerationDetailsParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'SalePriceFlatFee': instance.SalePriceFlatFee,
      'LicenceeEstimateSalePrice': instance.LicenceeEstimateSalePrice,
      'GSTInclusiveRenumeration': instance.GSTInclusiveRenumeration,
      'IsEFT': instance.IsEFT,
      'PAccountName': instance.PAccountName,
      'PBSB': instance.PBSB,
      'PAccountNo': instance.PAccountNo,
      'gst': instance.gst,
      'LoggedUserId': instance.LoggedUserId,
    };

_$UpdateExpensesChargeDetailsParamsImpl
    _$$UpdateExpensesChargeDetailsParamsImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateExpensesChargeDetailsParamsImpl(
          AgreementId: (json['AgreementId'] as num?)?.toInt(),
          ExpenseANDChargesService1:
              json['ExpenseANDChargesService1'] as String?,
          ExpenseANDChargesEstimate1:
              (json['ExpenseANDChargesEstimate1'] as num?)?.toInt(),
          ExpenseANDChargesdue1: json['ExpenseANDChargesdue1'] as String?,
          ExpenseANDChargesService2:
              json['ExpenseANDChargesService2'] as String?,
          ExpenseANDChargesEstimate2:
              (json['ExpenseANDChargesEstimate2'] as num?)?.toInt(),
          ExpenseANDChargesdue2: json['ExpenseANDChargesdue2'] as String?,
          OtherServicesService1: json['OtherServicesService1'] as String?,
          OtherServicesGST1: (json['OtherServicesGST1'] as num?)?.toInt(),
          OtherServicesdue1: json['OtherServicesdue1'] as String?,
          OtherServicesService2: json['OtherServicesService2'] as String?,
          OtherServicesGST2: (json['OtherServicesGST2'] as num?)?.toInt(),
          OtherServicesdue2: json['OtherServicesdue2'] as String?,
          ExpenseANDChargesEstimateGST1:
              json['ExpenseANDChargesEstimateGST1'] as String?,
          ExpenseANDChargesEstimateGST2:
              json['ExpenseANDChargesEstimateGST2'] as String?,
          LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
        );

Map<String, dynamic> _$$UpdateExpensesChargeDetailsParamsImplToJson(
        _$UpdateExpensesChargeDetailsParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'ExpenseANDChargesService1': instance.ExpenseANDChargesService1,
      'ExpenseANDChargesEstimate1': instance.ExpenseANDChargesEstimate1,
      'ExpenseANDChargesdue1': instance.ExpenseANDChargesdue1,
      'ExpenseANDChargesService2': instance.ExpenseANDChargesService2,
      'ExpenseANDChargesEstimate2': instance.ExpenseANDChargesEstimate2,
      'ExpenseANDChargesdue2': instance.ExpenseANDChargesdue2,
      'OtherServicesService1': instance.OtherServicesService1,
      'OtherServicesGST1': instance.OtherServicesGST1,
      'OtherServicesdue1': instance.OtherServicesdue1,
      'OtherServicesService2': instance.OtherServicesService2,
      'OtherServicesGST2': instance.OtherServicesGST2,
      'OtherServicesdue2': instance.OtherServicesdue2,
      'ExpenseANDChargesEstimateGST1': instance.ExpenseANDChargesEstimateGST1,
      'ExpenseANDChargesEstimateGST2': instance.ExpenseANDChargesEstimateGST2,
      'LoggedUserId': instance.LoggedUserId,
    };

_$UpdateSalesPromotionDetailsParamsImpl
    _$$UpdateSalesPromotionDetailsParamsImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateSalesPromotionDetailsParamsImpl(
          AgreementId: (json['AgreementId'] as num?)?.toInt(),
          AgencyId: (json['AgencyId'] as num?)?.toInt(),
          IsListedOnREA: json['IsListedOnREA'] as bool?,
          IsListedOnDomain: json['IsListedOnDomain'] as bool?,
          SignboardOutsideProperty: json['SignboardOutsideProperty'] as bool?,
          PropertyPhotos: json['PropertyPhotos'] as bool?,
          FloorPlans: json['FloorPlans'] as bool?,
          SocialMediaCampaign: json['SocialMediaCampaign'] as bool?,
          Inspection: json['Inspection'] as String?,
          WithoutRisk: (json['WithoutRisk'] as num?)?.toInt(),
          WithDefects: (json['WithDefects'] as num?)?.toInt(),
          DisclosureSourceRebate1: json['DisclosureSourceRebate1'] as String?,
          DisclosureEstimateRebate1:
              (json['DisclosureEstimateRebate1'] as num?)?.toInt(),
          DisclosureSourceRebate2: json['DisclosureSourceRebate2'] as String?,
          DisclosureEstimateRebate2:
              (json['DisclosureEstimateRebate2'] as num?)?.toInt(),
          WaiverOfCoolinOffPeriod:
              (json['WaiverOfCoolinOffPeriod'] as num?)?.toInt(),
          WasAgreementProvidedPrincipal:
              (json['WasAgreementProvidedPrincipal'] as num?)?.toInt(),
          DateProvided: json['DateProvided'] == null
              ? null
              : DateTime.parse(json['DateProvided'] as String),
          LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
        );

Map<String, dynamic> _$$UpdateSalesPromotionDetailsParamsImplToJson(
        _$UpdateSalesPromotionDetailsParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'AgencyId': instance.AgencyId,
      'IsListedOnREA': instance.IsListedOnREA,
      'IsListedOnDomain': instance.IsListedOnDomain,
      'SignboardOutsideProperty': instance.SignboardOutsideProperty,
      'PropertyPhotos': instance.PropertyPhotos,
      'FloorPlans': instance.FloorPlans,
      'SocialMediaCampaign': instance.SocialMediaCampaign,
      'Inspection': instance.Inspection,
      'WithoutRisk': instance.WithoutRisk,
      'WithDefects': instance.WithDefects,
      'DisclosureSourceRebate1': instance.DisclosureSourceRebate1,
      'DisclosureEstimateRebate1': instance.DisclosureEstimateRebate1,
      'DisclosureSourceRebate2': instance.DisclosureSourceRebate2,
      'DisclosureEstimateRebate2': instance.DisclosureEstimateRebate2,
      'WaiverOfCoolinOffPeriod': instance.WaiverOfCoolinOffPeriod,
      'WasAgreementProvidedPrincipal': instance.WasAgreementProvidedPrincipal,
      'DateProvided': instance.DateProvided?.toIso8601String(),
      'LoggedUserId': instance.LoggedUserId,
    };
