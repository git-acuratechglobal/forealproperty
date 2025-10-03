// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_inspection_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanInspectionParamsImpl _$$PlanInspectionParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$PlanInspectionParamsImpl(
      InspectionType: (json['InspectionType'] as num?)?.toInt(),
      InspectionDate: json['InspectionDate'] == null
          ? null
          : DateTime.parse(json['InspectionDate'] as String),
      AssignedAgent: (json['AssignedAgent'] as num?)?.toInt(),
      AgencyId: (json['AgencyId'] as num?)?.toInt() ?? 1,
      PropertyDetails: (json['PropertyDetails'] as List<dynamic>?)
          ?.map((e) => PropertyDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      LoggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$PlanInspectionParamsImplToJson(
        _$PlanInspectionParamsImpl instance) =>
    <String, dynamic>{
      'InspectionType': instance.InspectionType,
      'InspectionDate': instance.InspectionDate?.toIso8601String(),
      'AssignedAgent': instance.AssignedAgent,
      'AgencyId': instance.AgencyId,
      'PropertyDetails': instance.PropertyDetails,
      'LoggedUserId': instance.LoggedUserId,
    };

_$PropertyDetailImpl _$$PropertyDetailImplFromJson(Map<String, dynamic> json) =>
    _$PropertyDetailImpl(
      PropertyId: (json['PropertyId'] as num?)?.toInt(),
      StartTime: json['StartTime'] == null
          ? null
          : DateTime.parse(json['StartTime'] as String),
      EndTime: json['EndTime'] == null
          ? null
          : DateTime.parse(json['EndTime'] as String),
    );

Map<String, dynamic> _$$PropertyDetailImplToJson(
        _$PropertyDetailImpl instance) =>
    <String, dynamic>{
      'PropertyId': instance.PropertyId,
      'StartTime': instance.StartTime?.toIso8601String(),
      'EndTime': instance.EndTime?.toIso8601String(),
    };
