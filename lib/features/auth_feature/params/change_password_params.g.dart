// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePasswordParamsImpl _$$ChangePasswordParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordParamsImpl(
      confirmPassword: json['ConfirmPassword'] as String?,
      newPassword: json['NewPassword'] as String?,
      userId: json['UserId'] as String?,
      userRoleId: json['UserRoleId'] as String? ?? "0",
      withPass: json['withPass'] as bool? ?? true,
    );

Map<String, dynamic> _$$ChangePasswordParamsImplToJson(
        _$ChangePasswordParamsImpl instance) =>
    <String, dynamic>{
      'ConfirmPassword': instance.confirmPassword,
      'NewPassword': instance.newPassword,
      'UserId': instance.userId,
      'UserRoleId': instance.userRoleId,
      'withPass': instance.withPass,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$changePasswordParamsDataHash() =>
    r'4eeb265fa968d966c20b0aba3f0de21bc1941b6a';

/// See also [ChangePasswordParamsData].
@ProviderFor(ChangePasswordParamsData)
final changePasswordParamsDataProvider = AutoDisposeNotifierProvider<
    ChangePasswordParamsData, ChangePasswordParams>.internal(
  ChangePasswordParamsData.new,
  name: r'changePasswordParamsDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$changePasswordParamsDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ChangePasswordParamsData = AutoDisposeNotifier<ChangePasswordParams>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
