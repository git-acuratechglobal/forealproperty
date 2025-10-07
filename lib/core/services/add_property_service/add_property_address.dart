// ignore_for_file: unused_field

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/network/api_client.dart';
import 'package:foreal_property/core/network/apiend_points.dart';
import 'package:foreal_property/core/s3_sigleton/s3_singleton.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/features/auth_feature/model/add_property_model.dart';
import 'package:foreal_property/features/home_features/add_property_params/add_image_param.dart';
import 'package:foreal_property/features/home_features/add_property_params/attributes_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../features/home_features/pages/home/steps/provider_steps/photo_provider.dart';

final addPropertyServiceProvider = Provider<AddPropertyService>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  final localStorageService = ref.watch(localStorageServiceProvider);
  return AddPropertyService(apiClient, localStorageService);
});

class AddPropertyService {
  final ApiClient _client;
  final LocalStorageService _localStorageService;
  AddPropertyService(this._client, this._localStorageService);
  final minioService = MinioService();
  Future<String> addPropertyAddress({required dynamic params}) async {
    return asyncGuard(() async {
      final response = await _client.post(
        ApiEndPoints.address,
        data: params.toJson(),
      );

      // final propertyModel = AddPropertyModel.fromJson(response.data);
      // if (propertyModel.id != 0)
      //   await _localStorageService.setPropertyModel(propertyModel);

      return response.data['message'];
    });
  }

  Future<String> addPropertyAttribute(
      {required PropertyAttributesModel params}) async {
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

  Future<String> addPropertyImage(
      {required AddImage params, required PhotoForm imageForm}) async {
    return asyncGuard(() async {
      if (params.propertyImages != null &&
          imageForm.propertyImages.isNotEmpty &&
          params.propertyImages!.isNotEmpty &&
          imageForm.propertyImages.length == params.propertyImages!.length) {
        final result = await Future.wait([
          for (var i = 0; i < params.propertyImages!.length; i++)
            minioService.uploadPropertyImage(
              imageForm.propertyImages[i],
              params.propertyImages![i],
            )
        ]);
        print(result.map((e) => e.key).toList());
        params = params.copyWith(
          propertyImages: [
            ...result.map((e) => e.key ?? '').toList(),
            ...params.updatePropertyImages ?? []
          ],
        );
      }

      if (params.floorImages != null &&
          imageForm.floorImages.isNotEmpty &&
          params.floorImages!.isNotEmpty &&
          imageForm.floorImages.length == params.floorImages!.length) {
        final result = await Future.wait([
          for (var i = 0; i < params.floorImages!.length; i++)
            minioService.uploadPropertyImage(
              imageForm.floorImages[i],
              params.floorImages![i],
            )
        ]);

        params = params.copyWith(
          floorImages: [
            ...result.map((e) => e.key ?? '').toList(),
            ...params.UpdatedfloorImages ?? []
          ],
        );
      }

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
      final propertyModel = AddPropertyModel.fromJson(response.data);
      if (propertyModel.id != 0)
        await _localStorageService.setPropertyModel(propertyModel);
      return response.data['message'];
    });
  }

  Future<String> addUpdateOpenHomes({required dynamic params}) async {
    return asyncGuard(() async {
      final response = await _client
          .post(ApiEndPoints.addUpadteOpenHomesProperty, data: params.toJson());
      return response.data['message'];
    });
  }

  Future<String> addOpenHomeRegistration({required dynamic params}) async {
    return asyncGuard(() async {
      final response = await _client.post(ApiEndPoints.addOpenHomeRegistration,
          data: params.toJson());
      return response.data['message'];
    });
  }

  Future<String> deleteOpenHome(String openHomeUniqueId) async {
    return asyncGuard(() async {
      await _client.delete(
        ApiEndPoints.deleteOpenHome(openHomeUniqueId),
      );
      return 'Open Home deleted successfully';
    });
  }

  Future<String> addTenant({required dynamic params}) async {
    return asyncGuard(() async {
      final response =
          await _client.post(ApiEndPoints.addTenant, data: params.toJson());
      return response.data['message'];
    });
  }

  Future<String> addMultipleOwners({required dynamic params}) async {
    return asyncGuard(() async {
      final response = await _client.post(ApiEndPoints.addMultipleOwners,
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
