// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_inspection_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddInspectionParamsImpl _$$AddInspectionParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$AddInspectionParamsImpl(
      CreatedBy: (json['CreatedBy'] as num).toInt(),
      InspectionType: (json['InspectionType'] as num).toInt(),
      PropertyId: (json['PropertyId'] as num).toInt(),
      InspectionDate: json['InspectionDate'] as String,
      StartTime: json['StartTime'] as String,
      EndTime: json['EndTime'] as String,
      Summary: json['Summary'] as String,
      AssignedAgent: (json['AssignedAgent'] as num?)?.toInt() ?? 1,
      AgencyId: (json['AgencyId'] as num).toInt(),
      LoggedUserId: (json['LoggedUserId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AddInspectionParamsImplToJson(
        _$AddInspectionParamsImpl instance) =>
    <String, dynamic>{
      'CreatedBy': instance.CreatedBy,
      'InspectionType': instance.InspectionType,
      'PropertyId': instance.PropertyId,
      'InspectionDate': instance.InspectionDate,
      'StartTime': instance.StartTime,
      'EndTime': instance.EndTime,
      'Summary': instance.Summary,
      'AssignedAgent': instance.AssignedAgent,
      'AgencyId': instance.AgencyId,
      'LoggedUserId': instance.LoggedUserId,
    };
