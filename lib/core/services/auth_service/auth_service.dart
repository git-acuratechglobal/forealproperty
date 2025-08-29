import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/network/api_client.dart';
import 'package:foreal_property/core/network/apiend_points.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/features/auth_feature/model/login_response.dart';
import 'package:foreal_property/features/auth_feature/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final authServiceProvider = Provider<AuthService>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  final localStorageService = ref.watch(localStorageServiceProvider);
  return AuthService(apiClient, localStorageService);
});

class AuthService {
  final ApiClient _client;
  final LocalStorageService _localStorageService;
  AuthService(this._client, this._localStorageService);

  Future<LoginResponse> login(
      {required String email, required String password}) async {
    return asyncGuard(() async {
      final response = await _client.post(ApiEndPoints.login,
          data: {'UserName': email, 'Password': password});
      final message = response.data['message'];
      final userJson = response.data['object'];
      if (userJson != null) {
        final UserModel user = UserModel.fromJson(userJson);
        await _localStorageService.setUser(user);
        return LoginResponse(user: user, message: message);
      }

      return LoginResponse( message: message);
    });
  }

  Future<String> register({required dynamic params}) async {
    return asyncGuard(() async {
      final response =
          await _client.post(ApiEndPoints.register, data: params.toJson());
      return response.data['message'];
    });
  }

  Future<String> changePassword({required dynamic params}) async {
    return asyncGuard(() async {
      final response = await _client.post(ApiEndPoints.changePassword,
          data: params.toJson());
      return response.data['message'];
    });
  }


}
Future<Response> asyncGuard<Response>(
    Future<Response> Function() apiCall) async {
  try {
    return await apiCall();
  } on CheckedFromJsonException catch (e) {
    throw "Something went wrong! ${e.toString()}"
        .replaceAll("CheckedFromJsonException", "");
  } on FormatException catch (e) {
    throw "Unable to process data from server. reason: ${e.message}";
  } catch (e) {
    rethrow;
  }
}