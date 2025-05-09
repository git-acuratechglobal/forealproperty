// ignore_for_file: unused_field


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/network/api_client.dart';
import 'package:foreal_property/core/network/apiend_points.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/features/auth_feature/model/add_property_model.dart';
import 'package:foreal_property/features/home_features/add_property_params/attributes_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final addPropertyServiceProvider = Provider<AddPropertyService>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  final localStorageService = ref.watch(localStorageServiceProvider);
  return AddPropertyService(apiClient, localStorageService);
});

class AddPropertyService {
  final ApiClient _client;
  final LocalStorageService _localStorageService;
  AddPropertyService(this._client, this._localStorageService);

  Future<String> addPropertyAddress({required dynamic params}) async {
    return asyncGuard(() async {
      final response = await _client.post(
        ApiEndPoints.address,
        data: params.toJson(),
      );

      final propertyModel = AddPropertyModel.fromJson(response.data);
if(propertyModel.id != 0)
      await _localStorageService.setPropertyModel(propertyModel);

      return response.data['message'];
    });
  }

  Future<String> addPropertyAttribute({required PropertyAttributesModel params}) async {
    return asyncGuard(() async {
      print(params.toJson());
      final response = await _client.post(ApiEndPoints.addPropertyAttributes,
          data: params.toJson());
      return response.data['message'];
    });
  }

  Future<String> addPropertyContact({required dynamic params}) async {
    return asyncGuard(() async {
      final respons =
          await _client.post(ApiEndPoints.contact, data: params.toJson());
      return respons.data['message'];
    });
  }

  Future<String> addPropertyImage({required dynamic params}) async {
    return asyncGuard(() async {
      final response =
          await _client.post(ApiEndPoints.addImage, data: params.toJson());
      // final propertyModel = AddPropertyModel.fromJson(response.data);
      // await _localStorageService.setPropertyModel(propertyModel);
      return response.data['message'];
    });
  }

  Future<String> addPropertyListing({
    required dynamic params,
  }) async {
    return asyncGuard(() async {
      final response = await _client.post(ApiEndPoints.addPropertyListing,
          data: params.toJson());
      return response.data['message'];
    });
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
}
