
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/network/api_client.dart';
import 'package:foreal_property/core/network/apiend_points.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/features/home_features/home_param/home_params.dart';
import 'package:foreal_property/features/home_features/models/contact_detail_model.dart';
import 'package:foreal_property/features/home_features/models/contact_list_model.dart';
import 'package:foreal_property/features/home_features/models/get_open_home_detail_model.dart';
import 'package:foreal_property/features/home_features/models/get_openhomelist_model.dart';
import 'package:foreal_property/features/home_features/models/get_property_details.dart';
import 'package:foreal_property/features/home_features/models/get_property_list_model.dart';
import 'package:foreal_property/features/home_features/models/get_property_listing_model.dart';
import 'package:foreal_property/features/home_features/models/sale_and_lease_model.dart';
import 'package:foreal_property/features/home_features/models/searchforpropertylisting.dart';
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
      final response = await _client.get(ApiEndPoints.getPropertyDetailsById,
          queryParams: {'propertyID': id});
      final data = response.data['object'];
      print('Response: ${response.data}');
      return PropertyDetailModel.fromJson(data);
    });
  }

  Future<ContactDetailModel> getContactDetail(String id) async {
    return asyncGuard(() async {
      final response = await _client.get(
        ApiEndPoints.getContactDetail(id),
      );
      final data = response.data['object'];
      return ContactDetailModel.fromJson(data);
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

  Future<List<PropertyListingList>> getPropertyListing({
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

      final List<dynamic> jsonList =
          response.data['object']['propertyListingList']; // yeh sei trika hai

      return jsonList.map((e) => PropertyListingList.fromJson(e)).toList();
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
      if (search != null) "search": search,
    };
    return asyncGuard(() async {
      final response = await _client.post(
        ApiEndPoints.getPropertyList,
        data: bodyData,
      );
      final List<dynamic> jsonList = response.data['object']['propertyListing'];

      return jsonList.map((e) => GetPropertyList.fromJson(e)).toList();
    });
  }

  Future<List<ContactList>> getContactList({
    AgencyUniqueId = "",
    sortBy = "CreatedDate",
    sortOrder = "Desc",
    int agencyId = 1,
    search = "",
    searchContactType = "",
    loggedUserId = 2,
  }) async {
    final bodyData = {
      "AgencyUniqueId": AgencyUniqueId,
      "SortBy": sortBy,
      "SortOrder": sortOrder,
      "AgencyId": agencyId,
      "Serach": search,
      "SearchcontactType": searchContactType,
      "LoggedUserId": loggedUserId
    };
    return asyncGuard(() async {
      final response = await _client.post(
        ApiEndPoints.getContactList,
        data: bodyData,
      );
      final List<dynamic> jsonList = response.data['list'];

      return jsonList.map((e) => ContactList.fromJson(e)).toList();
    });
  }

  Future<List<GetOpenHomeListModel>> getOpenhomelist(
      {SortBy = "CreatedOn",
      SortOrder = "Desc",
      RecordsPerPage = 10,
      AgencyId = 1,
      Search = "",
      PageNo = 1,
      IsCurrent = true,
      LoggedUserId = 2}) async {
    final bodyData = {
      "SortBy": SortBy,
      "SortOrder": SortOrder,
      "RecordsPerPage": RecordsPerPage,
      "AgencyId": AgencyId,
      "Search": Search,
      "PageNo": PageNo,
      "IsCurrent": IsCurrent,
      "LoggedUserId": LoggedUserId
    };
    return asyncGuard(() async {
      final response =
          await _client.post(ApiEndPoints.getOpenHomeList, data: bodyData);
      final List<dynamic> jsonList = response.data['list'];
      return jsonList.map((e) => GetOpenHomeListModel.fromJson(e)).toList();
    });
  }

  Future<GetOpenHomeDetail> getOpenHomeDetail({
    openHomeUniqueId = '',
    recordsPerPage = 10,
    agencyId = 1,
    sortBy = 'CreatedOn',
    sortOrder = 'Desc',
    loggedUserId = 2,
  }) async {
    final bodyData = {
      "openHomeUniqueId": openHomeUniqueId,
      "RecordsPerPage": recordsPerPage,
      "AgencyId": agencyId,
      "SortBy": sortBy,
      "SortOrder": sortOrder,
      "LoggedUserId": loggedUserId
    };
    return asyncGuard(() async {
      final response =
          await _client.post(ApiEndPoints.getOpenHomeDetail, data: bodyData);
      final data = response.data['object'];

      return GetOpenHomeDetail.fromJson(data);
    });
  }

  Future<List<SearchPropertyListingForSelect2>> getsSearchPropertyListing({
    String search = 'a',
    int recordsPerPage = 10,
    int pageNo = 1,
    String agencyUniqueId = 'ba137a8612994',
  }) async {
    final bodyData = {
      "Search": search,
      "RecordsPerPage": recordsPerPage,
      "PageNo": pageNo,
      "AgencyUniqueID": agencyUniqueId,
    };

    return asyncGuard(() async {
      final response = await _client.post(
        ApiEndPoints.searchPropertyListingForSelect2,
        data: bodyData,
      );

      final List<dynamic> jsonList = response.data['list'];
      return jsonList
          .map((e) => SearchPropertyListingForSelect2.fromJson(e))
          .toList();
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
