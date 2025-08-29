// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationParamImpl _$$RegistrationParamImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationParamImpl(
      firstName: json['FirstName'] as String?,
      lastName: json['LastName'] as String?,
      email: json['Email'] as String?,
      phone: json['Phone'] as String?,
      openHomeUniqueId: json['OpenHomeUniqueId'] as String?,
      fromBackend: json['FromBackend'] as bool? ?? true,
      loggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$RegistrationParamImplToJson(
        _$RegistrationParamImpl instance) =>
    <String, dynamic>{
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'Email': instance.email,
      'Phone': instance.phone,
      'OpenHomeUniqueId': instance.openHomeUniqueId,
      'FromBackend': instance.fromBackend,
      'LoggedUserId': instance.loggedUserId,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$registrationParamDataHash() =>
    r'f3e88dd52ede3930134f0ef38202f9851c734305';

/// See also [RegistrationParamData].
@ProviderFor(RegistrationParamData)
final registrationParamDataProvider =
    NotifierProvider<RegistrationParamData, RegistrationParam>.internal(
  RegistrationParamData.new,
  name: r'registrationParamDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$registrationParamDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RegistrationParamData = Notifier<RegistrationParam>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
