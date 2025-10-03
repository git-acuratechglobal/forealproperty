// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_compliance_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InspectionComplianceParamsImpl _$$InspectionComplianceParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$InspectionComplianceParamsImpl(
      InspectionId: (json['InspectionId'] as num?)?.toInt(),
      PremisesStrctlySound: json['PremisesStrctlySound'] as bool?,
      LightingInRoom: json['LightingInRoom'] as bool?,
      Ventilation: json['Ventilation'] as bool?,
      ElctrcityOutletsSockt: json['ElctrcityOutletsSockt'] as bool?,
      PlumbingandDrainage: json['PlumbingandDrainage'] as bool?,
      SuppliedElectricty: json['SuppliedElectricty'] as bool?,
      SuppliedGas: json['SuppliedGas'] as bool?,
      ConnectdToWaterSupply: json['ConnectdToWaterSupply'] as bool?,
      ContainBathrm: json['ContainBathrm'] as bool?,
      TenantAgreesUtilities: json['TenantAgreesUtilities'] as bool?,
      AdditionalUtilitiesTerms: json['AdditionalUtilitiesTerms'],
      SignsMuds: json['SignsMuds'] as bool?,
      PestsVermin: json['PestsVermin'] as bool?,
      Rubbish: json['Rubbish'] as bool?,
      ListedLooseFill: json['ListedLooseFill'] as bool?,
      SmokeAlarmInstalled: json['SmokeAlarmInstalled'] as bool?,
      SmokeAlarmWorking: json['SmokeAlarmWorking'] as bool?,
      SmokeAlaramLastChecked: json['SmokeAlaramLastChecked'] == null
          ? null
          : DateTime.parse(json['SmokeAlaramLastChecked'] as String),
      SmokeAlarmBttryReplaced: json['SmokeAlarmBttryReplaced'] as bool?,
      BattryChangedDate: json['BattryChangedDate'] == null
          ? null
          : DateTime.parse(json['BattryChangedDate'] as String),
      HaveRemovableBattry: json['HaveRemovableBattry'] as bool?,
      RemovableBattryChangedDate: json['RemovableBattryChangedDate'] == null
          ? null
          : DateTime.parse(json['RemovableBattryChangedDate'] as String),
      VisibleSIgnDamage: json['VisibleSIgnDamage'] as bool?,
      VisibleElectricityHazard: json['VisibleElectricityHazard'] as bool?,
      VisibleGasHazard: json['VisibleGasHazard'] as bool?,
      TenantAgreeSafetyIssues: json['TenantAgreeSafetyIssues'] as bool?,
      AdditionalTermSafetyIssues: json['AdditionalTermSafetyIssues'] as bool?,
      TelephoneConnectd: json['TelephoneConnectd'] as bool?,
      InternetConnected: json['InternetConnected'] as bool?,
      SeperatedMetered: json['SeperatedMetered'] as bool?,
      ShowerheadMaximumFlow: json['ShowerheadMaximumFlow'] as bool?,
      DualFlushToilet: json['DualFlushToilet'] as bool?,
      ColdWatrTapsMaximumFlow: json['ColdWatrTapsMaximumFlow'] as bool?,
      CheckedWaterLeakage: json['CheckedWaterLeakage'] as bool?,
      WaterEfficiencyDateChecked: json['WaterEfficiencyDateChecked'] == null
          ? null
          : DateTime.parse(json['WaterEfficiencyDateChecked'] as String),
      WatermeterReadingStart: json['WatermeterReadingStart'],
      DateofWaterMeterReadingStart: json['DateofWaterMeterReadingStart'] == null
          ? null
          : DateTime.parse(json['DateofWaterMeterReadingStart'] as String),
      WatermeterReadingEnd: json['WatermeterReadingEnd'],
      DateOdWaterMeterReadingEnd: json['DateOdWaterMeterReadingEnd'] == null
          ? null
          : DateTime.parse(json['DateOdWaterMeterReadingEnd'] as String),
      AdditionalComments: json['AdditionalComments'] as String?,
      LastDatePaintingExternal: json['LastDatePaintingExternal'] == null
          ? null
          : DateTime.parse(json['LastDatePaintingExternal'] as String),
      LastDatePaintingInternal: json['LastDatePaintingInternal'] == null
          ? null
          : DateTime.parse(json['LastDatePaintingInternal'] as String),
      LastDateInstalledSmokeAlarms: json['LastDateInstalledSmokeAlarms'] == null
          ? null
          : DateTime.parse(json['LastDateInstalledSmokeAlarms'] as String),
      LastDateFloorCleaned: json['LastDateFloorCleaned'] == null
          ? null
          : DateTime.parse(json['LastDateFloorCleaned'] as String),
      LandlordAgreeToUndrtakeWork: json['LandlordAgreeToUndrtakeWork'] as bool?,
      LandLordWorkDoneBy: (json['LandLordWorkDoneBy'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      LandLordWorkDoneNote: (json['LandLordWorkDoneNote'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      TenantReceivedOn: json['TenantReceivedOn'] == null
          ? null
          : DateTime.parse(json['TenantReceivedOn'] as String),
      WaterMeterReading: json['WaterMeterReading'] as num?,
    );

Map<String, dynamic> _$$InspectionComplianceParamsImplToJson(
        _$InspectionComplianceParamsImpl instance) =>
    <String, dynamic>{
      'InspectionId': instance.InspectionId,
      'PremisesStrctlySound': instance.PremisesStrctlySound,
      'LightingInRoom': instance.LightingInRoom,
      'Ventilation': instance.Ventilation,
      'ElctrcityOutletsSockt': instance.ElctrcityOutletsSockt,
      'PlumbingandDrainage': instance.PlumbingandDrainage,
      'SuppliedElectricty': instance.SuppliedElectricty,
      'SuppliedGas': instance.SuppliedGas,
      'ConnectdToWaterSupply': instance.ConnectdToWaterSupply,
      'ContainBathrm': instance.ContainBathrm,
      'TenantAgreesUtilities': instance.TenantAgreesUtilities,
      'AdditionalUtilitiesTerms': instance.AdditionalUtilitiesTerms,
      'SignsMuds': instance.SignsMuds,
      'PestsVermin': instance.PestsVermin,
      'Rubbish': instance.Rubbish,
      'ListedLooseFill': instance.ListedLooseFill,
      'SmokeAlarmInstalled': instance.SmokeAlarmInstalled,
      'SmokeAlarmWorking': instance.SmokeAlarmWorking,
      'SmokeAlaramLastChecked':
          instance.SmokeAlaramLastChecked?.toIso8601String(),
      'SmokeAlarmBttryReplaced': instance.SmokeAlarmBttryReplaced,
      'BattryChangedDate': instance.BattryChangedDate?.toIso8601String(),
      'HaveRemovableBattry': instance.HaveRemovableBattry,
      'RemovableBattryChangedDate':
          instance.RemovableBattryChangedDate?.toIso8601String(),
      'VisibleSIgnDamage': instance.VisibleSIgnDamage,
      'VisibleElectricityHazard': instance.VisibleElectricityHazard,
      'VisibleGasHazard': instance.VisibleGasHazard,
      'TenantAgreeSafetyIssues': instance.TenantAgreeSafetyIssues,
      'AdditionalTermSafetyIssues': instance.AdditionalTermSafetyIssues,
      'TelephoneConnectd': instance.TelephoneConnectd,
      'InternetConnected': instance.InternetConnected,
      'SeperatedMetered': instance.SeperatedMetered,
      'ShowerheadMaximumFlow': instance.ShowerheadMaximumFlow,
      'DualFlushToilet': instance.DualFlushToilet,
      'ColdWatrTapsMaximumFlow': instance.ColdWatrTapsMaximumFlow,
      'CheckedWaterLeakage': instance.CheckedWaterLeakage,
      'WaterEfficiencyDateChecked':
          instance.WaterEfficiencyDateChecked?.toIso8601String(),
      'WatermeterReadingStart': instance.WatermeterReadingStart,
      'DateofWaterMeterReadingStart':
          instance.DateofWaterMeterReadingStart?.toIso8601String(),
      'WatermeterReadingEnd': instance.WatermeterReadingEnd,
      'DateOdWaterMeterReadingEnd':
          instance.DateOdWaterMeterReadingEnd?.toIso8601String(),
      'AdditionalComments': instance.AdditionalComments,
      'LastDatePaintingExternal':
          instance.LastDatePaintingExternal?.toIso8601String(),
      'LastDatePaintingInternal':
          instance.LastDatePaintingInternal?.toIso8601String(),
      'LastDateInstalledSmokeAlarms':
          instance.LastDateInstalledSmokeAlarms?.toIso8601String(),
      'LastDateFloorCleaned': instance.LastDateFloorCleaned?.toIso8601String(),
      'LandlordAgreeToUndrtakeWork': instance.LandlordAgreeToUndrtakeWork,
      'LandLordWorkDoneBy': instance.LandLordWorkDoneBy,
      'LandLordWorkDoneNote': instance.LandLordWorkDoneNote,
      'TenantReceivedOn': instance.TenantReceivedOn?.toIso8601String(),
      'WaterMeterReading': instance.WaterMeterReading,
    };
