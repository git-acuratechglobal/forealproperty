// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyAddressModel _$PropertyAddressModelFromJson(
        Map<String, dynamic> json) =>
    PropertyAddressModel(
      id: (json['id'] as num?)?.toInt(),
      address: json['address'] as String?,
    );

PropertyLatLngModel _$PropertyLatLngModelFromJson(Map<String, dynamic> json) =>
    PropertyLatLngModel(
      id: (json['id'] as num?)?.toInt(),
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

PlanInspectionModel _$PlanInspectionModelFromJson(Map<String, dynamic> json) =>
    PlanInspectionModel(
      id: (json['id'] as num).toInt(),
      address: json['address'] as String,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );
