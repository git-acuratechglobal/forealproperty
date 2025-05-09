// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpParamsImpl _$$SignUpParamsImplFromJson(Map<String, dynamic> json) =>
    _$SignUpParamsImpl(
      firstName: json['FirstName'] as String?,
      email: json['Email'] as String?,
      password: json['Password'] as String?,
      confirmPassword: json['ConfirmPassword'] as String?,
      terms: json['Terms'] as bool? ?? true,
      userRoleId: (json['userRoleID'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$$SignUpParamsImplToJson(_$SignUpParamsImpl instance) =>
    <String, dynamic>{
      'FirstName': instance.firstName,
      'Email': instance.email,
      'Password': instance.password,
      'ConfirmPassword': instance.confirmPassword,
      'Terms': instance.terms,
      'userRoleID': instance.userRoleId,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signUpParamsDataHash() => r'c5aedcb1b0cd5c59a22a40980d51a9264d1f1883';

/// See also [SignUpParamsData].
@ProviderFor(SignUpParamsData)
final signUpParamsDataProvider =
    AutoDisposeNotifierProvider<SignUpParamsData, SignUpParams>.internal(
  SignUpParamsData.new,
  name: r'signUpParamsDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$signUpParamsDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SignUpParamsData = AutoDisposeNotifier<SignUpParams>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
