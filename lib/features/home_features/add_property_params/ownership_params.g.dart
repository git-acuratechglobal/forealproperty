// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ownership_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnershipParamsImpl _$$OwnershipParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$OwnershipParamsImpl(
      agentId: (json['AgentId'] as num?)?.toInt() ?? 2,
      agencyId: (json['AgencyId'] as num?)?.toInt() ?? 1,
      address: json['Address'] as String?,
      userRoleID: (json['UserRoleID'] as num?)?.toInt() ?? 10,
      propertyUniqueId: json['PropertyUniqueId'] as String?,
      firstName: json['FirstName'] as String?,
      lastName: json['LastName'] as String?,
      email: json['Email'] as String?,
      mobileNumber: json['MobileNumber'] as String?,
      contactType: (json['ContactType'] as num?)?.toInt() ?? 1,
      title: (json['Title'] as num?)?.toInt() ?? 2,
      contactUniqueId: json['ContactUniqueId'] as String?,
    );

Map<String, dynamic> _$$OwnershipParamsImplToJson(
        _$OwnershipParamsImpl instance) =>
    <String, dynamic>{
      'AgentId': instance.agentId,
      'AgencyId': instance.agencyId,
      'Address': instance.address,
      'UserRoleID': instance.userRoleID,
      'PropertyUniqueId': instance.propertyUniqueId,
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'Email': instance.email,
      'MobileNumber': instance.mobileNumber,
      'ContactType': instance.contactType,
      'Title': instance.title,
      'ContactUniqueId': instance.contactUniqueId,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ownershipParamsDataHash() =>
    r'fc0b0474d9eff0e1478465b485e86c08d2a2fdf8';

/// See also [OwnershipParamsData].
@ProviderFor(OwnershipParamsData)
final ownershipParamsDataProvider =
    NotifierProvider<OwnershipParamsData, OwnershipParams>.internal(
  OwnershipParamsData.new,
  name: r'ownershipParamsDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$ownershipParamsDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$OwnershipParamsData = Notifier<OwnershipParams>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
