// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspection_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InspectionActivityModel _$InspectionActivityModelFromJson(
        Map<String, dynamic> json) =>
    InspectionActivityModel(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      userType: (json['userType'] as num?)?.toInt(),
      isSystemGenerated: json['isSystemGenerated'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      moduleId: (json['moduleId'] as num?)?.toInt(),
      recordId: (json['recordId'] as num?)?.toInt(),
      isHide: json['isHide'] as bool?,
      hasAttachment: json['hasAttachment'] as bool?,
      url: json['url'],
      description: json['description'] as String?,
      notes: json['notes'],
      activityType: (json['activityType'] as num?)?.toInt(),
      userName: json['userName'] as String?,
    );
