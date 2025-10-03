import 'package:json_annotation/json_annotation.dart';

part 'property_address_model.g.dart';



@JsonSerializable(createToJson: false)
class PropertyAddressModel {
  PropertyAddressModel({
    required this.id,
    required this.address,
  });

  final int? id;
  final String? address;

  factory PropertyAddressModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyAddressModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class PropertyLatLngModel {
  PropertyLatLngModel({required this.id, required this.lat, required this.lng});

  final int? id;
  final double? lat;
  final double? lng;

  factory PropertyLatLngModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyLatLngModelFromJson(json);
}



@JsonSerializable(createToJson: false)
class PlanInspectionModel {
  final int id;
  final String address;
  final double? lat;
  final double? lng;

  PlanInspectionModel({
    required this.id,
    required this.address,
    this.lat,
    this.lng,
  });

  factory PlanInspectionModel.fromJson(Map<String, dynamic> json) =>
      _$PlanInspectionModelFromJson(json);

  PlanInspectionModel copyWith({
    int? id,
    String? address,
    double? lat,
    double? lng,
  }) {
    return PlanInspectionModel(
      id: id ?? this.id,
      address: address ?? this.address,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }
}
