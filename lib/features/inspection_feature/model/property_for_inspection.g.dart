// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_for_inspection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyForInspection _$PropertyForInspectionFromJson(
        Map<String, dynamic> json) =>
    PropertyForInspection(
      id: (json['id'] as num?)?.toInt(),
      listingId: (json['listingId'] as num?)?.toInt(),
      name: json['name'] as String?,
      propertyUId: json['propertyUId'] as String?,
      postCode: json['postCode'] as String?,
      propertyFor: json['propertyFor'],
      isSaleListed: json['isSaleListed'] as bool?,
      isRentalListed: json['isRentalListed'] as bool?,
      ownerFolio: json['ownerFolio'],
      tenantReference: json['tenantReference'],
      tenantAccountFolio: json['tenantAccountFolio'],
      tenantFolioId: json['tenantFolioId'],
    );
