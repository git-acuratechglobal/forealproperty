import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/services/auth_service/auth_service.dart';
import 'package:foreal_property/features/auth_feature/auth_state/auth_state.dart';
import 'package:foreal_property/features/auth_feature/model/user_model.dart';
import 'package:foreal_property/features/auth_feature/params/change_password_params.dart';
import 'package:foreal_property/features/auth_feature/params/sign_up_params.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_provider.g.dart';

final userProvider = StateProvider<UserModel?>((ref) => null);


@riverpod
class AuthNotifier extends _$AuthNotifier {
  Map<String, String> _loginParams = {};

  @override
  FutureOr<AuthState?> build() {
    return null;
  }

  Future<void> login() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final loginResponse = await ref.watch(authServiceProvider).login(
          email: _loginParams['email'] ?? "",
          password: _loginParams['password'] ?? "");

      return AuthState(
          authEvent: AuthEvent.login,
          response: loginResponse.message,
          user: loginResponse.user);
    });
  }

  Future<void> register() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(signUpParamsDataProvider);
      final message =
          await ref.watch(authServiceProvider).register(params: params);
      return AuthState(authEvent: AuthEvent.register, response: message);
    });
  }

  Future<void> changePassword() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final user = ref.watch(userProvider)?.userId;
      ref
          .read(changePasswordParamsDataProvider.notifier)
          .update((val) => val.copyWith(userId: user.toString()));
      final params = ref.watch(changePasswordParamsDataProvider);
      final message =
          await ref.watch(authServiceProvider).changePassword(params: params);
      return AuthState(authEvent: AuthEvent.changePassword, response: message);
    });
  }


  
  void updateLoginParam(String key, String value) {
    _loginParams[key] = value;
  }
}
