// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchforpropertylisting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchPropertyListingForSelect2 _$SearchPropertyListingForSelect2FromJson(
        Map<String, dynamic> json) =>
    SearchPropertyListingForSelect2(
      id: (json['id'] as num?)?.toInt(),
      listingId: (json['listingId'] as num?)?.toInt(),
      name: json['name'] as String?,
      propertyUId: json['propertyUId'] as String?,
      postCode: json['postCode'] as String?,
      propertyFor: json['propertyFor'] as String?,
      isSaleListed: json['isSaleListed'] as bool?,
      isRentalListed: json['isRentalListed'] as bool?,
      ownerFolio: json['ownerFolio'],
      tenantReference: json['tenantReference'],
      tenantAccountFolio: json['tenantAccountFolio'],
      tenantFolioId: json['tenantFolioId'],
    );

Map<String, dynamic> _$SearchPropertyListingForSelect2ToJson(
        SearchPropertyListingForSelect2 instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listingId': instance.listingId,
      'name': instance.name,
      'propertyUId': instance.propertyUId,
      'postCode': instance.postCode,
      'propertyFor': instance.propertyFor,
      'isSaleListed': instance.isSaleListed,
      'isRentalListed': instance.isRentalListed,
      'ownerFolio': instance.ownerFolio,
      'tenantReference': instance.tenantReference,
      'tenantAccountFolio': instance.tenantAccountFolio,
      'tenantFolioId': instance.tenantFolioId,
    };
