// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddPropertyModelImpl _$$AddPropertyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddPropertyModelImpl(
      id: (json['id'] as num?)?.toInt(),
      sUID: json['sUID'] as String?,
      pUID: json['pUID'] as String?,
      viewMode: (json['viewMode'] as num?)?.toInt(),
      hasError: json['hasError'] as bool?,
      message: json['message'] as String?,
      status: (json['status'] as num?)?.toInt(),
      ss: json['ss'],
      doNestedAction: json['doNestedAction'] as bool?,
    );

Map<String, dynamic> _$$AddPropertyModelImplToJson(
        _$AddPropertyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sUID': instance.sUID,
      'pUID': instance.pUID,
      'viewMode': instance.viewMode,
      'hasError': instance.hasError,
      'message': instance.message,
      'status': instance.status,
      'ss': instance.ss,
      'doNestedAction': instance.doNestedAction,
    };

_$AddPropertyImpl _$$AddPropertyImplFromJson(Map<String, dynamic> json) =>
    _$AddPropertyImpl(
      userId: (json['userId'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      userRoleId: (json['userRoleId'] as num?)?.toInt(),
      userRoleLabel: json['userRoleLabel'] as String?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$$AddPropertyImplToJson(_$AddPropertyImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'userRoleId': instance.userRoleId,
      'userRoleLabel': instance.userRoleLabel,
      'isActive': instance.isActive,
    };
