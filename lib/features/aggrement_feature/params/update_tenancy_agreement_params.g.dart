// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_tenancy_agreement_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TenantUpdateParamsImpl _$$TenantUpdateParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$TenantUpdateParamsImpl(
      AgreementId: (json['AgreementId'] as num?)?.toInt(),
      AgencyId: (json['AgencyId'] as num?)?.toInt(),
      AgentId: (json['AgentId'] as num?)?.toInt(),
      PropertyId: (json['PropertyId'] as num?)?.toInt(),
      TenantFolioId: (json['TenantFolioId'] as num?)?.toInt(),
      TenantList: (json['TenantList'] as List<dynamic>?)
          ?.map((e) => TenantList2.fromJson(e as Map<String, dynamic>))
          .toList(),
      LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$TenantUpdateParamsImplToJson(
        _$TenantUpdateParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'AgencyId': instance.AgencyId,
      'AgentId': instance.AgentId,
      'PropertyId': instance.PropertyId,
      'TenantFolioId': instance.TenantFolioId,
      'TenantList': instance.TenantList,
      'LoggedUserId': instance.LoggedUserId,
    };

_$TenantList2Impl _$$TenantList2ImplFromJson(Map<String, dynamic> json) =>
    _$TenantList2Impl(
      tenantFname: json['tenantFname'] as String?,
      tenantLname: json['tenantLname'] as String?,
      tenantMobile: json['tenantMobile'] as String?,
      tenantEmail: json['tenantEmail'] as String?,
      contactId: (json['contactId'] as num?)?.toInt() ?? null,
      tenantId: (json['tenantId'] as num?)?.toInt() ?? null,
    );

Map<String, dynamic> _$$TenantList2ImplToJson(_$TenantList2Impl instance) =>
    <String, dynamic>{
      'tenantFname': instance.tenantFname,
      'tenantLname': instance.tenantLname,
      'tenantMobile': instance.tenantMobile,
      'tenantEmail': instance.tenantEmail,
      'contactId': instance.contactId,
      'tenantId': instance.tenantId,
    };

_$UpdateLandlordTenantDetailsParamsImpl
    _$$UpdateLandlordTenantDetailsParamsImplFromJson(
            Map<String, dynamic> json) =>
        _$UpdateLandlordTenantDetailsParamsImpl(
          AgreementId: (json['AgreementId'] as num?)?.toInt(),
          LandlordAgentName: json['LandlordAgentName'] as String?,
          LandlordBusinessAddress: json['LandlordBusinessAddress'] as String?,
          LandlordAgentPostcode: json['LandlordAgentPostcode'] as String?,
          LandlordAgentSuburb: json['LandlordAgentSuburb'] as String?,
          LandlordAgentState: json['LandlordAgentState'] as String?,
          LandlordAgentContact: json['LandlordAgentContact'] as String?,
          TenantAgentName: json['TenantAgentName'] as String?,
          TenantBusinessAddress: json['TenantBusinessAddress'] as String?,
          TenantAgentPostcode: json['TenantAgentPostcode'] as String?,
          TenantAgentSuburb: json['TenantAgentSuburb'] as String?,
          TenantAgentState: json['TenantAgentState'] as String?,
          TenantAgentContact: json['TenantAgentContact'] as String?,
          PropertySuburb: json['PropertySuburb'] as String?,
          PropertyPostCode: json['PropertyPostCode'] as String?,
          PropertyState: json['PropertyState'] as String?,
          PropertyAddress: json['PropertyAddress'] as String?,
          OtherSpace: json['OtherSpace'],
          TermsAgreement: (json['TermsAgreement'] as num?)?.toInt(),
          TermsAgreementNote: json['TermsAgreementNote'] as String?,
          AgreementStart: json['AgreementStart'] as String?,
          AgreementEnd: json['AgreementEnd'] as String?,
          LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
        );

Map<String, dynamic> _$$UpdateLandlordTenantDetailsParamsImplToJson(
        _$UpdateLandlordTenantDetailsParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'LandlordAgentName': instance.LandlordAgentName,
      'LandlordBusinessAddress': instance.LandlordBusinessAddress,
      'LandlordAgentPostcode': instance.LandlordAgentPostcode,
      'LandlordAgentSuburb': instance.LandlordAgentSuburb,
      'LandlordAgentState': instance.LandlordAgentState,
      'LandlordAgentContact': instance.LandlordAgentContact,
      'TenantAgentName': instance.TenantAgentName,
      'TenantBusinessAddress': instance.TenantBusinessAddress,
      'TenantAgentPostcode': instance.TenantAgentPostcode,
      'TenantAgentSuburb': instance.TenantAgentSuburb,
      'TenantAgentState': instance.TenantAgentState,
      'TenantAgentContact': instance.TenantAgentContact,
      'PropertySuburb': instance.PropertySuburb,
      'PropertyPostCode': instance.PropertyPostCode,
      'PropertyState': instance.PropertyState,
      'PropertyAddress': instance.PropertyAddress,
      'OtherSpace': instance.OtherSpace,
      'TermsAgreement': instance.TermsAgreement,
      'TermsAgreementNote': instance.TermsAgreementNote,
      'AgreementStart': instance.AgreementStart,
      'AgreementEnd': instance.AgreementEnd,
      'LoggedUserId': instance.LoggedUserId,
    };

_$UpdateRentBondParamsImpl _$$UpdateRentBondParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateRentBondParamsImpl(
      AgreementId: (json['AgreementId'] as num?)?.toInt(),
      RentAmount: (json['RentAmount'] as num?)?.toInt(),
      Period: (json['Period'] as num?)?.toInt(),
      LeaseCommencement: json['LeaseCommencement'] as String?,
      BSB: json['BSB'] as String?,
      AccountNo: json['AccountNo'] as String?,
      AccountName: json['AccountName'] as String?,
      PaymentReference: json['PaymentReference'] as String?,
      PaymentTo: json['PaymentTo'] as String?,
      PaymentAt: json['PaymentAt'] as String?,
      PaymentFollows: json['PaymentFollows'] as String?,
      BondAmount: (json['BondAmount'] as num?)?.toInt(),
      BondAmountProvidedTo: json['BondAmountProvidedTo'] as String?,
      LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$UpdateRentBondParamsImplToJson(
        _$UpdateRentBondParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'RentAmount': instance.RentAmount,
      'Period': instance.Period,
      'LeaseCommencement': instance.LeaseCommencement,
      'BSB': instance.BSB,
      'AccountNo': instance.AccountNo,
      'AccountName': instance.AccountName,
      'PaymentReference': instance.PaymentReference,
      'PaymentTo': instance.PaymentTo,
      'PaymentAt': instance.PaymentAt,
      'PaymentFollows': instance.PaymentFollows,
      'BondAmount': instance.BondAmount,
      'BondAmountProvidedTo': instance.BondAmountProvidedTo,
      'LoggedUserId': instance.LoggedUserId,
    };

_$UpdateTenantAgreementInfoParamsImpl
    _$$UpdateTenantAgreementInfoParamsImplFromJson(Map<String, dynamic> json) =>
        _$UpdateTenantAgreementInfoParamsImpl(
          AgreementId: (json['AgreementId'] as num?)?.toInt(),
          AgencyId: (json['AgencyId'] as num?)?.toInt(),
          MaximumTenant: (json['MaximumTenant'] as num?)?.toInt(),
          ElectricalRepair: json['ElectricalRepair'] as String?,
          ElectricalRepairContact: json['ElectricalRepairContact'] as String?,
          PlumbingRepair: json['PlumbingRepair'] as String?,
          PlumbingRepairContact: json['PlumbingRepairContact'] as String?,
          OtherRepair: json['OtherRepair'],
          OtherRepairContact: json['OtherRepairContact'],
          PayWaterBillSeperately: json['PayWaterBillSeperately'] as bool?,
          IsElectricitySupplied: json['IsElectricitySupplied'] as bool?,
          IsGasSupplied: json['IsGasSupplied'] as bool?,
          SmokeAlarmType: json['SmokeAlarmType'] as String?,
          SmokeAlarmBatteryReplacable:
              json['SmokeAlarmBatteryReplacable'] as bool?,
          BatteryType: json['BatteryType'] as String?,
          BackupBatteryReplacable: json['BackupBatteryReplacable'] as bool?,
          TypeOfBackupBattery: json['TypeOfBackupBattery'] as String?,
          StrataRsponsibleForReplacement:
              json['StrataRsponsibleForReplacement'] as bool?,
          StrataByLawsApplicable: json['StrataByLawsApplicable'] as bool?,
          DoesLandlordConsentElectronic:
              json['DoesLandlordConsentElectronic'] as bool?,
          LandlordElctrcConsentEmail:
              json['LandlordElctrcConsentEmail'] as String?,
          DoesTenantConsentElectronic:
              json['DoesTenantConsentElectronic'] as bool?,
          PetDetails: json['PetDetails'] as String?,
          AdditionalComments: json['AdditionalComments'] as String?,
          LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
        );

Map<String, dynamic> _$$UpdateTenantAgreementInfoParamsImplToJson(
        _$UpdateTenantAgreementInfoParamsImpl instance) =>
    <String, dynamic>{
      'AgreementId': instance.AgreementId,
      'AgencyId': instance.AgencyId,
      'MaximumTenant': instance.MaximumTenant,
      'ElectricalRepair': instance.ElectricalRepair,
      'ElectricalRepairContact': instance.ElectricalRepairContact,
      'PlumbingRepair': instance.PlumbingRepair,
      'PlumbingRepairContact': instance.PlumbingRepairContact,
      'OtherRepair': instance.OtherRepair,
      'OtherRepairContact': instance.OtherRepairContact,
      'PayWaterBillSeperately': instance.PayWaterBillSeperately,
      'IsElectricitySupplied': instance.IsElectricitySupplied,
      'IsGasSupplied': instance.IsGasSupplied,
      'SmokeAlarmType': instance.SmokeAlarmType,
      'SmokeAlarmBatteryReplacable': instance.SmokeAlarmBatteryReplacable,
      'BatteryType': instance.BatteryType,
      'BackupBatteryReplacable': instance.BackupBatteryReplacable,
      'TypeOfBackupBattery': instance.TypeOfBackupBattery,
      'StrataRsponsibleForReplacement': instance.StrataRsponsibleForReplacement,
      'StrataByLawsApplicable': instance.StrataByLawsApplicable,
      'DoesLandlordConsentElectronic': instance.DoesLandlordConsentElectronic,
      'LandlordElctrcConsentEmail': instance.LandlordElctrcConsentEmail,
      'DoesTenantConsentElectronic': instance.DoesTenantConsentElectronic,
      'PetDetails': instance.PetDetails,
      'AdditionalComments': instance.AdditionalComments,
      'LoggedUserId': instance.LoggedUserId,
    };
