// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaseFilterParamsImpl _$$LeaseFilterParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaseFilterParamsImpl(
      sortBy: json['SortBy'] as String? ?? "CreatedDate",
      sortOrder: json['SortOrder'] as String? ?? "Desc",
      recordsPerPage: (json['RecordsPerPage'] as num?)?.toInt() ?? 10,
      pageNo: (json['PageNo'] as num?)?.toInt() ?? 1,
      propertyType: json['PropertyType'] as String? ?? "",
      minPrice: (json['MinPrice'] as num?)?.toDouble(),
      maxPrice: (json['MaxPrice'] as num?)?.toDouble(),
      minBeds: (json['Minbeds'] as num?)?.toInt(),
      bathrooms: (json['Bathrooms'] as num?)?.toInt(),
      carParking: (json['CarParking'] as num?)?.toInt(),
      livingArea: (json['LivingArea'] as num?)?.toDouble(),
      minLand: (json['MinLand'] as num?)?.toDouble(),
      maxLand: (json['MaxLand'] as num?)?.toDouble(),
      isNew: json['IsNew'] as bool?,
      cat: json['cat'] as String? ?? "3",
      search: json['Search'] as String?,
    );

Map<String, dynamic> _$$LeaseFilterParamsImplToJson(
        _$LeaseFilterParamsImpl instance) =>
    <String, dynamic>{
      'SortBy': instance.sortBy,
      'SortOrder': instance.sortOrder,
      'RecordsPerPage': instance.recordsPerPage,
      'PageNo': instance.pageNo,
      'PropertyType': instance.propertyType,
      'MinPrice': instance.minPrice,
      'MaxPrice': instance.maxPrice,
      'Minbeds': instance.minBeds,
      'Bathrooms': instance.bathrooms,
      'CarParking': instance.carParking,
      'LivingArea': instance.livingArea,
      'MinLand': instance.minLand,
      'MaxLand': instance.maxLand,
      'IsNew': instance.isNew,
      'cat': instance.cat,
      'Search': instance.search,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$leaseFilterParamsDataHash() =>
    r'90b05aeae5f2d24f6c3f61e6c1606bb47f52412c';

/// See also [LeaseFilterParamsData].
@ProviderFor(LeaseFilterParamsData)
final leaseFilterParamsDataProvider = AutoDisposeNotifierProvider<
    LeaseFilterParamsData, LeaseFilterParams>.internal(
  LeaseFilterParamsData.new,
  name: r'leaseFilterParamsDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$leaseFilterParamsDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LeaseFilterParamsData = AutoDisposeNotifier<LeaseFilterParams>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
