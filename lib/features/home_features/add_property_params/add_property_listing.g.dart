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
      listingStatus: (json['ListingStatus'] as num?)?.toInt(),
      propertyAgreementType: (json['PropertyAgreementType'] as num?)?.toInt(),
      propertyPrice: (json['PropertyPrice'] as num?)?.toInt(),
      rentPrice: (json['RentPrice'] as num?)?.toInt() ?? 0,
      isCommercial: json['IsCommercial'] as bool?,
      isDualAgent: json['IsDualAgent'] as bool?,
      isShowPrice: json['IsShowPrice'] as bool?,
      listingAgentId: (json['ListingAgentId'] as num?)?.toInt() ?? 4,
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
      'ListingAgentId': instance.listingAgentId,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listingParamsDataHash() => r'2232304bfef69da994722498e40ec3da8d75f640';

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
