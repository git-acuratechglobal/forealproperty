// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_template_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubTemplateModel _$SubTemplateModelFromJson(Map<String, dynamic> json) =>
    SubTemplateModel(
      templateId: (json['templateId'] as num?)?.toInt(),
      selectedFacilities: (json['selectedFacilities'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      facilities: (json['facilities'] as List<dynamic>?)
          ?.map((e) => Facility.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Facility _$FacilityFromJson(Map<String, dynamic> json) => Facility(
      id: (json['id'] as num?)?.toInt(),
      facility: json['facility'] as String?,
    );
