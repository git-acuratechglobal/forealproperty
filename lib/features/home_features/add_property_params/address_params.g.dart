// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressParamsImpl _$$AddressParamsImplFromJson(Map<String, dynamic> json) =>
    _$AddressParamsImpl(
      propertyId: (json['PropertyId'] as num?)?.toInt() ?? 0,
      propertySaleRental: (json['PropertySaleRental'] as num?)?.toInt() ?? 1,
      propertyType: json['PropertyType'] as String?,
      agentId: (json['AgentId'] as num?)?.toInt() ?? 2,
      agencyId: (json['AgencyId'] as num?)?.toInt() ?? 1,
      propertyGooglePlacesLocation:
          json['PropertyGooglePlacesLocation'] as String?,
      state: json['State'] as String?,
      suburb: json['Suburb'] as String?,
      postCode: json['PostCode'] as String?,
      unitNumber: json['UnitNumber'] as String?,
      streetNumber: json['StreetNumber'] as String?,
      streetName: json['StreetName'] as String?,
      userId: (json['UserId'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$AddressParamsImplToJson(_$AddressParamsImpl instance) =>
    <String, dynamic>{
      'PropertyId': instance.propertyId,
      'PropertySaleRental': instance.propertySaleRental,
      'PropertyType': instance.propertyType,
      'AgentId': instance.agentId,
      'AgencyId': instance.agencyId,
      'PropertyGooglePlacesLocation': instance.propertyGooglePlacesLocation,
      'State': instance.state,
      'Suburb': instance.suburb,
      'PostCode': instance.postCode,
      'UnitNumber': instance.unitNumber,
      'StreetNumber': instance.streetNumber,
      'StreetName': instance.streetName,
      'UserId': instance.userId,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addressParamsDataHash() => r'8f94c04bdb2777c8b47c1ec32eafddeb7071664a';

/// See also [AddressParamsData].
@ProviderFor(AddressParamsData)
final addressParamsDataProvider =
    NotifierProvider<AddressParamsData, AddressParams>.internal(
  AddressParamsData.new,
  name: r'addressParamsDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$addressParamsDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AddressParamsData = Notifier<AddressParams>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
