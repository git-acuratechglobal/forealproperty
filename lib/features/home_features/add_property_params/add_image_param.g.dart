// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_image_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddImageImpl _$$AddImageImplFromJson(Map<String, dynamic> json) =>
    _$AddImageImpl(
      propertyBuildingTypeZoning:
          json['PropertyBuildingTypeZoning'] as String? ?? "A2",
      propertyDescription: json['PropertyDescription'] as String?,
      propertyHeading: json['PropertyHeading'] as String?,
      propertyId: (json['PropertyId'] as num?)?.toInt(),
      propertyImages: (json['PropertyImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propertyLandAreaL: json['PropertyLandAreaL'] as String? ?? "400",
      propertyLandAreaW: (json['PropertyLandAreaW'] as num?)?.toInt() ?? 8,
      floorImages: (json['FloorImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AddImageImplToJson(_$AddImageImpl instance) =>
    <String, dynamic>{
      'PropertyBuildingTypeZoning': instance.propertyBuildingTypeZoning,
      'PropertyDescription': instance.propertyDescription,
      'PropertyHeading': instance.propertyHeading,
      'PropertyId': instance.propertyId,
      'PropertyImages': instance.propertyImages,
      'PropertyLandAreaL': instance.propertyLandAreaL,
      'PropertyLandAreaW': instance.propertyLandAreaW,
      'FloorImages': instance.floorImages,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addImageDataHash() => r'b9b057a2620cef1b8225acc6007754312887a648';

/// See also [AddImageData].
@ProviderFor(AddImageData)
final addImageDataProvider = NotifierProvider<AddImageData, AddImage>.internal(
  AddImageData.new,
  name: r'addImageDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$addImageDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AddImageData = Notifier<AddImage>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
