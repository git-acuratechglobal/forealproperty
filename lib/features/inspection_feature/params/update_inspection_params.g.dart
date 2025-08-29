// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_inspection_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateInspectionParamsImpl _$$UpdateInspectionParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateInspectionParamsImpl(
      InspectionId: (json['InspectionId'] as num).toInt(),
      TemplateId: (json['TemplateId'] as num).toInt(),
      SelectedAttributeList: (json['SelectedAttributeList'] as List<dynamic>)
          .map((e) => SelectedAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      TemplateNotes: json['TemplateNotes'] as String,
      AddUpdatePictures: json['AddUpdatePictures'] as List<dynamic>,
    );

Map<String, dynamic> _$$UpdateInspectionParamsImplToJson(
        _$UpdateInspectionParamsImpl instance) =>
    <String, dynamic>{
      'InspectionId': instance.InspectionId,
      'TemplateId': instance.TemplateId,
      'SelectedAttributeList': instance.SelectedAttributeList,
      'TemplateNotes': instance.TemplateNotes,
      'AddUpdatePictures': instance.AddUpdatePictures,
    };

_$SelectedAttributeImpl _$$SelectedAttributeImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectedAttributeImpl(
      Id: (json['Id'] as num).toInt(),
      Cleaned: json['Cleaned'] as bool,
      Undermanaged: json['Undermanaged'] as bool,
      Working: json['Working'] as bool,
      AgentComment: json['AgentComment'],
      TenantComment: json['TenantComment'],
      IsTenantAgree: json['IsTenantAgree'],
      CleanedByTenant: json['CleanedByTenant'],
      WorkingByTenant: json['WorkingByTenant'],
      UndermanagedByTenant: json['UndermanagedByTenant'],
      AddUpdatePictures: (json['AddUpdatePictures'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SelectedAttributeImplToJson(
        _$SelectedAttributeImpl instance) =>
    <String, dynamic>{
      'Id': instance.Id,
      'Cleaned': instance.Cleaned,
      'Undermanaged': instance.Undermanaged,
      'Working': instance.Working,
      'AgentComment': instance.AgentComment,
      'TenantComment': instance.TenantComment,
      'IsTenantAgree': instance.IsTenantAgree,
      'CleanedByTenant': instance.CleanedByTenant,
      'WorkingByTenant': instance.WorkingByTenant,
      'UndermanagedByTenant': instance.UndermanagedByTenant,
      'AddUpdatePictures': instance.AddUpdatePictures,
    };
