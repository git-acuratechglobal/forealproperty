import 'package:foreal_property/features/auth_feature/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "auth_state.freezed.dart";

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthEvent authEvent,
    String? response,
    UserModel? user
  }) = _AuthState;
}

enum AuthEvent {
 login,
 register,
 changePassword
}