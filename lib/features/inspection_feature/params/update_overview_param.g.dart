// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_overview_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateOverviewParamImpl _$$UpdateOverviewParamImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateOverviewParamImpl(
      Id: (json['Id'] as num).toInt(),
      Summary: json['Summary'] as String? ?? "",
      AssignedAgent: json['AssignedAgent'] as String,
      TenantFolioId: (json['TenantFolioId'] as num?)?.toInt(),
      Label: json['Label'] as String? ?? "",
    );

Map<String, dynamic> _$$UpdateOverviewParamImplToJson(
        _$UpdateOverviewParamImpl instance) =>
    <String, dynamic>{
      'Id': instance.Id,
      'Summary': instance.Summary,
      'AssignedAgent': instance.AssignedAgent,
      'TenantFolioId': instance.TenantFolioId,
      'Label': instance.Label,
    };
