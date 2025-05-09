import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/network/api_client.dart';
import 'package:foreal_property/core/network/apiend_points.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/features/home_features/home_param/home_params.dart';
import 'package:foreal_property/features/home_features/models/get_property_details.dart';
import 'package:foreal_property/features/home_features/models/get_property_list_model.dart';
import 'package:foreal_property/features/home_features/models/get_property_listing_model.dart';
import 'package:foreal_property/features/home_features/models/sale_and_lease_model.dart';
import 'package:foreal_property/features/home_features/providers/get_property_listing.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

final homeServiceProvider = Provider<HomeServices>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  final localStorageService = ref.watch(localStorageServiceProvider);
  return HomeServices(apiClient, localStorageService);
});

class HomeServices {
  final ApiClient _client;
  final LocalStorageService _localStorageService;
  HomeServices(this._client, this._localStorageService);

  Future<PropertyDetailModel> getPropertyDetails(String id) async {
    return asyncGuard(() async {
      final response = await _client.post(ApiEndPoints.getPropertyDetails,
          data: {"PropertyUniqueId": id});
      final data = response.data['object'];
      return PropertyDetailModel.fromJson(data);
    });
  }

  Future<List<PropertyModel>> getSaleAndLeaseProperty({
    int pageNo = 1,
    int recordsPerPage = 10,
  }) {
    return asyncGuard(() async {
      final params = LeaseFilterParams(
        pageNo: pageNo,
        recordsPerPage: recordsPerPage,
      );

      final response = await _client.post(
        ApiEndPoints.saleAndLeaseUrl,
        data: params.toJson(), // Converts LeaseFilterParams to a proper map
      );

      final List<dynamic> data = response.data['list'];

      return data.map((e) => PropertyModel.fromJson(e)).toList();
    });
  }

  Future<List<PropertyListingModel>> getPropertyListing({
    int propertyType = 1,
    int agencyId = 1,
    int recordsPerPage = 10,
    sortBy = "CreatedDate",
    sortOrder = "Desc",
  }) async {
    final bodyData = {
      "AgencyId": agencyId,
      "SortBy": sortBy,
      "SortOrder": sortOrder,
      "RecordsPerPage": recordsPerPage,
      "PropertyType": propertyType,
    };

    return asyncGuard(() async {
      final response = await _client.post(
        ApiEndPoints.getPropertyListing,
        data: bodyData,
      );

      final List<dynamic> data =
          response.data['list'] != null ? response.data['list'] : [];

      return data.map((e) => PropertyListingModel.fromJson(e)).toList();
    });
  }

  Future<List<GetPropertyList>> getPropertyList({
    int agencyId = 1,
    int recordsPerPage = 10,
    sortBy = "CreatedDate",
    sortOrder = "Desc",
    purpose = "",
    search = "",
  }) async {
    final bodyData = {
      "AgencyId": agencyId,
      "SortBy": sortBy,
      "SortOrder": sortOrder,
      "RecordsPerPage": recordsPerPage,
      "search": search,
      "purpose": purpose,
    };

    try {
      final response = await _client.post(
        ApiEndPoints.getPropertyList,
        data: bodyData,
      );

      if (response.statusCode == 200) {
        final List<dynamic> data =
            response.data['list'] != null ? response.data['list'] : [];
        print('API Response: $response');
        return data.map((e) => GetPropertyList.fromJson(e)).toList();
      } else {
        print('Error: ${response.statusCode} - ${response.statusMessage}');

        return [];
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
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
