// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_multiple_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactImpl _$$ContactImplFromJson(Map<String, dynamic> json) =>
    _$ContactImpl(
      address: json['Address'] as String?,
      firstName: json['FirstName'] as String?,
      lastName: json['LastName'] as String?,
      email: json['Email'] as String?,
      mobileNumber: json['MobileNumber'] as String?,
      contactType: (json['ContactType'] as num?)?.toInt(),
      title: json['Title'] as String?,
      isPrimary: json['IsPrimary'] as bool? ?? false,
    );

Map<String, dynamic> _$$ContactImplToJson(_$ContactImpl instance) =>
    <String, dynamic>{
      'Address': instance.address,
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'Email': instance.email,
      'MobileNumber': instance.mobileNumber,
      'ContactType': instance.contactType,
      'Title': instance.title,
      'IsPrimary': instance.isPrimary,
    };

_$MultipleContactImpl _$$MultipleContactImplFromJson(
        Map<String, dynamic> json) =>
    _$MultipleContactImpl(
      agencyId: (json['AgencyId'] as num?)?.toInt() ?? 1,
      agentId: (json['AgentId'] as num?)?.toInt() ?? 2,
      propertyUniqueId: json['PropertyUniqueId'] as String?,
      userId: (json['UserId'] as num?)?.toInt() ?? 2,
      contacts: (json['Contacts'] as List<dynamic>?)
          ?.map((e) => Contact.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MultipleContactImplToJson(
        _$MultipleContactImpl instance) =>
    <String, dynamic>{
      'AgencyId': instance.agencyId,
      'AgentId': instance.agentId,
      'PropertyUniqueId': instance.propertyUniqueId,
      'UserId': instance.userId,
      'Contacts': instance.contacts,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$multipleContactDataHash() =>
    r'd9c91f15ee9c4e93c227b37e781e1033d351c5bd';

/// Riverpod state notifier
///
/// Copied from [MultipleContactData].
@ProviderFor(MultipleContactData)
final multipleContactDataProvider =
    NotifierProvider<MultipleContactData, MultipleContact>.internal(
  MultipleContactData.new,
  name: r'multipleContactDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$multipleContactDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MultipleContactData = Notifier<MultipleContact>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
