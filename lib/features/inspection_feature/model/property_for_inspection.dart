import 'package:json_annotation/json_annotation.dart';

part 'property_for_inspection.g.dart';

@JsonSerializable(createToJson: false)
class PropertyForInspection {
  PropertyForInspection({
    required this.id,
    required this.listingId,
    required this.name,
    required this.propertyUId,
    required this.postCode,
    required this.propertyFor,
    required this.isSaleListed,
    required this.isRentalListed,
    required this.ownerFolio,
    required this.tenantReference,
    required this.tenantAccountFolio,
    required this.tenantFolioId,
  });

  final int? id;
  final int? listingId;
  final String? name;
  final String? propertyUId;
  final String? postCode;
  final dynamic propertyFor;
  final bool? isSaleListed;
  final bool? isRentalListed;
  final dynamic ownerFolio;
  final dynamic tenantReference;
  final dynamic tenantAccountFolio;
  final dynamic tenantFolioId;

  factory PropertyForInspection.fromJson(Map<String, dynamic> json) => _$PropertyForInspectionFromJson(json);

}
