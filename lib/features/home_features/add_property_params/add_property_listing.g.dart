// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_property_listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListingParamsImpl _$$ListingParamsImplFromJson(Map<String, dynamic> json) =>
    _$ListingParamsImpl(
      listingId: (json['ListingId'] as num?)?.toInt() ?? 0,
      propertySaleRental: (json['PropertySaleRental'] as num?)?.toInt() ?? 1,
      propertyId: (json['PropertyId'] as num?)?.toInt(),
      listingStatus: (json['ListingStatus'] as num?)?.toInt() ?? 1,
      propertyAgreementType:
          (json['PropertyAgreementType'] as num?)?.toInt() ?? 2,
      propertyPrice: (json['PropertyPrice'] as num?)?.toInt(),
      rentPrice: (json['RentPrice'] as num?)?.toInt() ?? 0,
      isCommercial: json['IsCommercial'] as bool? ?? false,
      isDualAgent: json['IsDualAgent'] as bool? ?? false,
      isShowPrice: json['IsShowPrice'] as bool? ?? true,
      showText: json['ShowText'] as String?,
      listingAgentId: (json['ListingAgentId'] as num?)?.toInt() ?? 4,
      rentTenure: (json['RentTenure'] as num?)?.toInt(),
      isNew: (json['IsNew'] as num?)?.toInt() ?? 1,
      reaUploadId: json['ReaUploadId'] as String?,
      dateAvailable: json['DateAvailable'] as String?,
      userId: (json['UserId'] as num?)?.toInt(),
      loggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$ListingParamsImplToJson(_$ListingParamsImpl instance) =>
    <String, dynamic>{
      'ListingId': instance.listingId,
      'PropertySaleRental': instance.propertySaleRental,
      'PropertyId': instance.propertyId,
      'ListingStatus': instance.listingStatus,
      'PropertyAgreementType': instance.propertyAgreementType,
      'PropertyPrice': instance.propertyPrice,
      'RentPrice': instance.rentPrice,
      'IsCommercial': instance.isCommercial,
      'IsDualAgent': instance.isDualAgent,
      'IsShowPrice': instance.isShowPrice,
      'ShowText': instance.showText,
      'ListingAgentId': instance.listingAgentId,
      'RentTenure': instance.rentTenure,
      'IsNew': instance.isNew,
      'ReaUploadId': instance.reaUploadId,
      'DateAvailable': instance.dateAvailable,
      'UserId': instance.userId,
      'LoggedUserId': instance.loggedUserId,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listingParamsDataHash() => r'a4e1b5722f690bd18d140911c5393feafde6c658';

/// See also [ListingParamsData].
@ProviderFor(ListingParamsData)
final listingParamsDataProvider =
    NotifierProvider<ListingParamsData, ListingParams>.internal(
  ListingParamsData.new,
  name: r'listingParamsDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$listingParamsDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ListingParamsData = Notifier<ListingParams>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
