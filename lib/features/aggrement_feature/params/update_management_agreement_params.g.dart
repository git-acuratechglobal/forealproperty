// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_management_agreement_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateManagementAgreementParamsImpl
    _$$UpdateManagementAgreementParamsImplFromJson(Map<String, dynamic> json) =>
        _$UpdateManagementAgreementParamsImpl(
          AgreementId: (json['AgreementId'] as num?)?.toInt(),
          Rent: (json['Rent'] as num?)?.toInt(),
          BondAmount: (json['BondAmount'] as num?)?.toInt(),
          Period: (json['Period'] as num?)?.toInt() ?? 1,
          PropertyFurnished: json['PropertyFurnished'] as bool?,
          PropertyUnfurnished: json['PropertyUnfurnished'] as bool?,
          ContactlistModel: (json['ContactlistModel'] as List<dynamic>?)
              ?.map(
                  (e) => ContactlistModel2.fromJson(e as Map<String, dynamic>))
              .toList(),
          PrimarycontactModel: json['PrimarycontactModel'] == null
              ? null
              : PrimarycontactModel2.fromJson(
                  json['PrimarycontactModel'] as Map<String, dynamic>),
          ContactGstRegistered:
              (json['ContactGstRegistered'] as num?)?.toInt() ?? 2,
          LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
        );

Map<String, dynamic> _$$UpdateManagementAgreementParamsImplToJson(
        _$UpdateManagementAgreementParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'Rent': instance.Rent,
      'BondAmount': instance.BondAmount,
      'Period': instance.Period,
      'PropertyFurnished': instance.PropertyFurnished,
      'PropertyUnfurnished': instance.PropertyUnfurnished,
      'ContactlistModel': instance.ContactlistModel,
      'PrimarycontactModel': instance.PrimarycontactModel,
      'ContactGstRegistered': instance.ContactGstRegistered,
      'LoggedUserId': instance.LoggedUserId,
    };

_$ContactlistModel2Impl _$$ContactlistModel2ImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactlistModel2Impl(
      fName: json['fName'] as String?,
      lName: json['lName'] as String?,
      abn: json['abn'] as String?,
      address: json['address'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      phone: json['phone'] as String?,
      contactEmail: json['contactEmail'] as String?,
    );

Map<String, dynamic> _$$ContactlistModel2ImplToJson(
        _$ContactlistModel2Impl instance) =>
    <String, dynamic>{
      'fName': instance.fName,
      'lName': instance.lName,
      'abn': instance.abn,
      'address': instance.address,
      'mobileNumber': instance.mobileNumber,
      'phone': instance.phone,
      'contactEmail': instance.contactEmail,
    };

_$PrimarycontactModel2Impl _$$PrimarycontactModel2ImplFromJson(
        Map<String, dynamic> json) =>
    _$PrimarycontactModel2Impl(
      fName: json['fName'] as String?,
      lName: json['lName'] as String?,
      address: json['address'],
      mobileNumber: json['mobileNumber'] as String?,
      contactUniqueId: json['contactUniqueId'] as String? ?? 'ef58a8e69ff94',
      landlineNumber: json['landlineNumber'],
      landlineNumber1: json['landlineNumber1'],
      companyName: json['companyName'],
      abn: json['abn'] as String?,
      acn: json['acn'],
      postcode: json['postcode'],
      regions: json['regions'],
      contactType: json['contactType'],
      isUserVerified: json['isUserVerified'] as bool? ?? false,
      isProofSubmited: json['isProofSubmited'] as bool? ?? false,
      getFullAddress: json['getFullAddress'] as String?,
      getFullName: json['getFullName'] as String?,
      ownerId: json['ownerId'],
      contactUId: json['contactUId'],
      isPrimary: json['isPrimary'] as bool? ?? true,
      contactName: json['contactName'],
      contactEmail: json['contactEmail'] as String?,
      name: json['name'] as String?,
      firstName: json['firstName'],
      lastName: json['lastName'],
      phone: json['phone'] as String?,
      fromDate: json['fromDate'],
      toDate: json['toDate'],
      title: json['title'],
      isVerificationLinkSend: json['isVerificationLinkSend'] as bool? ?? false,
      typeIAM: json['typeIAM'],
      verificationProofs: json['verificationProofs'],
    );

Map<String, dynamic> _$$PrimarycontactModel2ImplToJson(
        _$PrimarycontactModel2Impl instance) =>
    <String, dynamic>{
      'fName': instance.fName,
      'lName': instance.lName,
      'address': instance.address,
      'mobileNumber': instance.mobileNumber,
      'contactUniqueId': instance.contactUniqueId,
      'landlineNumber': instance.landlineNumber,
      'landlineNumber1': instance.landlineNumber1,
      'companyName': instance.companyName,
      'abn': instance.abn,
      'acn': instance.acn,
      'postcode': instance.postcode,
      'regions': instance.regions,
      'contactType': instance.contactType,
      'isUserVerified': instance.isUserVerified,
      'isProofSubmited': instance.isProofSubmited,
      'getFullAddress': instance.getFullAddress,
      'getFullName': instance.getFullName,
      'ownerId': instance.ownerId,
      'contactUId': instance.contactUId,
      'isPrimary': instance.isPrimary,
      'contactName': instance.contactName,
      'contactEmail': instance.contactEmail,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'fromDate': instance.fromDate,
      'toDate': instance.toDate,
      'title': instance.title,
      'isVerificationLinkSend': instance.isVerificationLinkSend,
      'typeIAM': instance.typeIAM,
      'verificationProofs': instance.verificationProofs,
    };

_$ManagementAgreementPeriodDetailsParamsImpl
    _$$ManagementAgreementPeriodDetailsParamsImplFromJson(
            Map<String, dynamic> json) =>
        _$ManagementAgreementPeriodDetailsParamsImpl(
          AgreementId: (json['AgreementId'] as num?)?.toInt(),
          AgreementDate: json['AgreementDate'] == null
              ? null
              : DateTime.parse(json['AgreementDate'] as String),
          LeasePremisesAtMarketRent: json['LeasePremisesAtMarketRent'] as bool?,
          ReferToPrincipalForReLease:
              json['ReferToPrincipalForReLease'] as bool?,
          ReviewRentBfrRLease: json['ReviewRentBfrRLease'] as bool?,
          LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
        );

Map<String, dynamic> _$$ManagementAgreementPeriodDetailsParamsImplToJson(
        _$ManagementAgreementPeriodDetailsParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'AgreementDate': instance.AgreementDate?.toIso8601String(),
      'LeasePremisesAtMarketRent': instance.LeasePremisesAtMarketRent,
      'ReferToPrincipalForReLease': instance.ReferToPrincipalForReLease,
      'ReviewRentBfrRLease': instance.ReviewRentBfrRLease,
      'LoggedUserId': instance.LoggedUserId,
    };

_$ManagementAgreementFeeChargesParamsImpl
    _$$ManagementAgreementFeeChargesParamsImplFromJson(
            Map<String, dynamic> json) =>
        _$ManagementAgreementFeeChargesParamsImpl(
          AgreementId: (json['AgreementId'] as num?)?.toInt(),
          InitialWeekRent: json['InitialWeekRent'] as String?,
          PrprtyLeasdPrdDuringAgrmnt:
              json['PrprtyLeasdPrdDuringAgrmnt'] as bool?,
          PrprtyLeasdPrdWithinMonth: json['PrprtyLeasdPrdWithinMonth'] as bool?,
          ManagementFee: (json['ManagementFee'] as num?)?.toInt(),
          MarketingFee: (json['MarketingFee'] as num?)?.toInt(),
          AdministrationFee: (json['AdministrationFee'] as num?)?.toInt(),
          ManagementFeeGST:
              (json['ManagementFeeGST'] as num?)?.toDouble() ?? 0.5,
          LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
        );

Map<String, dynamic> _$$ManagementAgreementFeeChargesParamsImplToJson(
        _$ManagementAgreementFeeChargesParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'InitialWeekRent': instance.InitialWeekRent,
      'PrprtyLeasdPrdDuringAgrmnt': instance.PrprtyLeasdPrdDuringAgrmnt,
      'PrprtyLeasdPrdWithinMonth': instance.PrprtyLeasdPrdWithinMonth,
      'ManagementFee': instance.ManagementFee,
      'MarketingFee': instance.MarketingFee,
      'AdministrationFee': instance.AdministrationFee,
      'ManagementFeeGST': instance.ManagementFeeGST,
      'LoggedUserId': instance.LoggedUserId,
    };

_$ManagementAgremntTribunalParamsImpl
    _$$ManagementAgremntTribunalParamsImplFromJson(Map<String, dynamic> json) =>
        _$ManagementAgremntTribunalParamsImpl(
          AgreementId: (json['AgreementId'] as num?)?.toInt(),
          OfficeExpenses: (json['OfficeExpenses'] as num?)?.toInt(),
          Redirect: json['Redirect'] as bool?,
          STRATA: json['STRATA'] as bool?,
          Water: json['Water'] as bool?,
          CouncilRates: json['CouncilRates'] as bool?,
          Insurance: json['Insurance'] as bool?,
          PAccountName: json['PAccountName'] as String?,
          PBSB: json['PBSB'] as String?,
          PAccountNo: json['PAccountNo'] as String?,
          ApplicationFeesForUtilites:
              (json['ApplicationFeesForUtilites'] as num?)?.toInt(),
          LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
        );

Map<String, dynamic> _$$ManagementAgremntTribunalParamsImplToJson(
        _$ManagementAgremntTribunalParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'OfficeExpenses': instance.OfficeExpenses,
      'Redirect': instance.Redirect,
      'STRATA': instance.STRATA,
      'Water': instance.Water,
      'CouncilRates': instance.CouncilRates,
      'Insurance': instance.Insurance,
      'PAccountName': instance.PAccountName,
      'PBSB': instance.PBSB,
      'PAccountNo': instance.PAccountNo,
      'ApplicationFeesForUtilites': instance.ApplicationFeesForUtilites,
      'LoggedUserId': instance.LoggedUserId,
    };

_$ManagementAgremntPromotionParamsImpl
    _$$ManagementAgremntPromotionParamsImplFromJson(
            Map<String, dynamic> json) =>
        _$ManagementAgremntPromotionParamsImpl(
          AgreementId: (json['AgreementId'] as num?)?.toInt(),
          isListedOnREA: json['isListedOnREA'] as bool?,
          isListedOnDomain: json['isListedOnDomain'] as bool?,
          SocialMedia: json['SocialMedia'] as bool?,
          Signboard: json['Signboard'] as bool?,
          ThirdPartyName: json['ThirdPartyName'] as String?,
          AmountOfRebateDiscount: json['AmountOfRebateDiscount'] as String?,
          ObtainReferenceFromTenant: json['ObtainReferenceFromTenant'] as bool?,
          EnterIntoSignTenacyAgrmnt: json['EnterIntoSignTenacyAgrmnt'] as bool?,
          UndertakeInspection: json['UndertakeInspection'] as bool?,
          EffectRepairMaintainProprty:
              json['EffectRepairMaintainProprty'] as bool?,
          PayDisbursemnt: json['PayDisbursemnt'] as bool?,
          CollectReceiveRent: json['CollectReceiveRent'] as bool?,
          ServeNoticeForBreachTenancy:
              json['ServeNoticeForBreachTenancy'] as bool?,
          UndrtakeStpsToRecvrMony: json['UndrtakeStpsToRecvrMony'] as bool?,
          RepresentPrincipalCourt: json['RepresentPrincipalCourt'] as bool?,
          PayAccountsForAmount: json['PayAccountsForAmount'] as bool?,
          AdvertisePropertyLetting: json['AdvertisePropertyLetting'] as bool?,
          ReviewRentEndTenancy: json['ReviewRentEndTenancy'] as bool?,
          LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
        );

Map<String, dynamic> _$$ManagementAgremntPromotionParamsImplToJson(
        _$ManagementAgremntPromotionParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'isListedOnREA': instance.isListedOnREA,
      'isListedOnDomain': instance.isListedOnDomain,
      'SocialMedia': instance.SocialMedia,
      'Signboard': instance.Signboard,
      'ThirdPartyName': instance.ThirdPartyName,
      'AmountOfRebateDiscount': instance.AmountOfRebateDiscount,
      'ObtainReferenceFromTenant': instance.ObtainReferenceFromTenant,
      'EnterIntoSignTenacyAgrmnt': instance.EnterIntoSignTenacyAgrmnt,
      'UndertakeInspection': instance.UndertakeInspection,
      'EffectRepairMaintainProprty': instance.EffectRepairMaintainProprty,
      'PayDisbursemnt': instance.PayDisbursemnt,
      'CollectReceiveRent': instance.CollectReceiveRent,
      'ServeNoticeForBreachTenancy': instance.ServeNoticeForBreachTenancy,
      'UndrtakeStpsToRecvrMony': instance.UndrtakeStpsToRecvrMony,
      'RepresentPrincipalCourt': instance.RepresentPrincipalCourt,
      'PayAccountsForAmount': instance.PayAccountsForAmount,
      'AdvertisePropertyLetting': instance.AdvertisePropertyLetting,
      'ReviewRentEndTenancy': instance.ReviewRentEndTenancy,
      'LoggedUserId': instance.LoggedUserId,
    };

_$ManagementAgremntRepairDetailsParamsImpl
    _$$ManagementAgremntRepairDetailsParamsImplFromJson(
            Map<String, dynamic> json) =>
        _$ManagementAgremntRepairDetailsParamsImpl(
          AgreementId: (json['AgreementId'] as num?)?.toInt(),
          TradesmanPayment: json['TradesmanPayment'] as String?,
          SupplyUrgentRepairToTenant:
              json['SupplyUrgentRepairToTenant'] as bool?,
          LooseFillAsbestosInstallation:
              json['LooseFillAsbestosInstallation'] as bool?,
          SwimmingPoolRegistered: json['SwimmingPoolRegistered'] as bool?,
          SmokeAlarm: json['SmokeAlarm'] as bool?,
          HealthIssues: json['HealthIssues'] as bool?,
          Flooding: json['Flooding'] as bool?,
          Bushfire: json['Bushfire'] as bool?,
          SeriousViolentCrime: json['SeriousViolentCrime'] as bool?,
          ParkingRestriction: json['ParkingRestriction'] as bool?,
          ShareDriveway: json['ShareDriveway'] as bool?,
          AffectdFlooding: json['AffectdFlooding'] as bool?,
          AffectdBushfire: json['AffectdBushfire'] as bool?,
          AffectdSeriousViolent: json['AffectdSeriousViolent'] as bool?,
          IsContractForSalePremises: json['IsContractForSalePremises'] as bool?,
          IsProposelToSell: json['IsProposelToSell'] as bool?,
          HasMortgageeCommenced: json['HasMortgageeCommenced'] as bool?,
          isMortgageeTakgActnPossssion:
              json['isMortgageeTakgActnPossssion'] as bool?,
          WaterEfficiencyByNSW: json['WaterEfficiencyByNSW'] as bool?,
          PrincipalWarrantsSmokeAlarm:
              json['PrincipalWarrantsSmokeAlarm'] as bool?,
          AgencyId: (json['AgencyId'] as num?)?.toInt() ?? 1,
          UserId: (json['UserId'] as num?)?.toInt() ?? 2,
          LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
        );

Map<String, dynamic> _$$ManagementAgremntRepairDetailsParamsImplToJson(
        _$ManagementAgremntRepairDetailsParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'TradesmanPayment': instance.TradesmanPayment,
      'SupplyUrgentRepairToTenant': instance.SupplyUrgentRepairToTenant,
      'LooseFillAsbestosInstallation': instance.LooseFillAsbestosInstallation,
      'SwimmingPoolRegistered': instance.SwimmingPoolRegistered,
      'SmokeAlarm': instance.SmokeAlarm,
      'HealthIssues': instance.HealthIssues,
      'Flooding': instance.Flooding,
      'Bushfire': instance.Bushfire,
      'SeriousViolentCrime': instance.SeriousViolentCrime,
      'ParkingRestriction': instance.ParkingRestriction,
      'ShareDriveway': instance.ShareDriveway,
      'AffectdFlooding': instance.AffectdFlooding,
      'AffectdBushfire': instance.AffectdBushfire,
      'AffectdSeriousViolent': instance.AffectdSeriousViolent,
      'IsContractForSalePremises': instance.IsContractForSalePremises,
      'IsProposelToSell': instance.IsProposelToSell,
      'HasMortgageeCommenced': instance.HasMortgageeCommenced,
      'isMortgageeTakgActnPossssion': instance.isMortgageeTakgActnPossssion,
      'WaterEfficiencyByNSW': instance.WaterEfficiencyByNSW,
      'PrincipalWarrantsSmokeAlarm': instance.PrincipalWarrantsSmokeAlarm,
      'AgencyId': instance.AgencyId,
      'UserId': instance.UserId,
      'LoggedUserId': instance.LoggedUserId,
    };
