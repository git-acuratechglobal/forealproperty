
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_password_params.freezed.dart';
part 'change_password_params.g.dart';

@freezed
class ChangePasswordParams with _$ChangePasswordParams {
  const factory ChangePasswordParams({
    @JsonKey(name: "ConfirmPassword") String? confirmPassword,
    @JsonKey(name: "NewPassword") String? newPassword,
    @JsonKey(name: "UserId") String? userId,
    @JsonKey(name: "UserRoleId") @Default("0") String? userRoleId,
    @JsonKey(name: "withPass") @Default(true) bool? withPass,
  }) = _ChangePasswordParams;

  factory ChangePasswordParams.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordParamsFromJson(json);
}
@riverpod
class ChangePasswordParamsData extends _$ChangePasswordParamsData {
  @override
  ChangePasswordParams build() {
    return const ChangePasswordParams();
  }

  void update(ChangePasswordParams Function(ChangePasswordParams p) updateParam) {
    state = updateParam(state);
  }
}
