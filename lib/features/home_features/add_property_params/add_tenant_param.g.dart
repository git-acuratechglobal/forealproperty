// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_tenant_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TenantParamsImpl _$$TenantParamsImplFromJson(Map<String, dynamic> json) =>
    _$TenantParamsImpl(
      tenantId: (json['TenantId'] as num?)?.toInt() ?? 0,
      propertyId: (json['PropertyId'] as num?)?.toInt() ?? 0,
      tenantFname: json['TenantFname'] as String?,
      tenantLname: json['TenantLname'] as String?,
      tenantMobile: json['TenantMobile'] as String?,
      tenantEmail: json['TenantEmail'] as String?,
      userId: (json['UserId'] as num?)?.toInt() ?? 2,
      agencyId: (json['AgencyId'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$TenantParamsImplToJson(_$TenantParamsImpl instance) =>
    <String, dynamic>{
      'TenantId': instance.tenantId,
      'PropertyId': instance.propertyId,
      'TenantFname': instance.tenantFname,
      'TenantLname': instance.tenantLname,
      'TenantMobile': instance.tenantMobile,
      'TenantEmail': instance.tenantEmail,
      'UserId': instance.userId,
      'AgencyId': instance.agencyId,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tenantParamsDataHash() => r'02ba3ba16b2bc4a83eb9d2920d3668720b652b9b';

/// See also [TenantParamsData].
@ProviderFor(TenantParamsData)
final tenantParamsDataProvider =
    NotifierProvider<TenantParamsData, TenantParams>.internal(
  TenantParamsData.new,
  name: r'tenantParamsDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tenantParamsDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TenantParamsData = Notifier<TenantParams>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
