import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/network/apiend_points.dart';
import 'package:foreal_property/core/s3_sigleton/s3_singleton.dart';
import 'package:foreal_property/core/services/geo_coding_service/geo_coding_service.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/inspection_feature/model/inspection_details_model.dart';
import 'package:foreal_property/features/inspection_feature/model/inspection_list_model.dart';
import 'package:foreal_property/features/inspection_feature/model/property_address_model.dart';
import 'package:foreal_property/features/inspection_feature/params/plan_inspection_param.dart';
import '../../../features/inspection_feature/model/active_agent_model.dart';
import '../../../features/inspection_feature/model/inspection_activity_model.dart';
import '../../../features/inspection_feature/model/inspection_overview_model.dart';
import '../../../features/inspection_feature/model/sub_template_model.dart';
import '../../../features/inspection_feature/params/add_inspection_params.dart';
import '../../../features/inspection_feature/params/add_template_param.dart';
import '../../../features/inspection_feature/params/inspection_compliance_params.dart';
import '../../../features/inspection_feature/params/update_inspection_params.dart';
import '../../../features/inspection_feature/params/update_overview_param.dart';
import '../../network/dio_client.dart';
import '../auth_service/auth_service.dart';
import 'package:path/path.dart' as path;

final inspectionServiceProvider = Provider<InspectionService>((ref) {
  final dio = ref.watch(dioProvider);
  final minioService = ref.watch(miniServiceProvider);
  final geoCodingService = ref.watch(geoCodingServiceProvider);
  return InspectionService(dio, minioService, geoCodingService);
});

class InspectionService {
  final Dio _dio;
  final MinioService _minioService;
  final minioService = MinioService();
  final GeoCodingService _geoCodingService;
  InspectionService(this._dio, this._minioService, this._geoCodingService);

  Future<PaginationResponse<InspectionListModel>> getInspectionList(
      {int page = 1, String? search, int pageSize = 15, int tabId = 1}) async {
    return asyncGuard(() async {
      final response =
          await _dio.post(ApiEndPoints.getInspectionPageList, data: {
        "AgencyId": 1,
        "Search": search,
        "TenantFolioId": null,
        "TabId": tabId,
        "PageNo": page,
        "LoggedUserId": 2
      });

      final List<dynamic> list = response.data['list'] ?? [];
      final totalCount = response.data['totalCount'] ?? 0;

      final totalPages = (totalCount / pageSize).ceil();

      final inspections =
          list.map((item) => InspectionListModel.fromJson(item)).toList();
      return PaginationResponse<InspectionListModel>(
          currentPage: page, totalPages: totalPages, data: inspections);
    });
  }

  Future<List<PlanInspectionModel>> getPropertyForPlanInspection() async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.getPropertyForInspection,
          data: {"AgencyId": 1, "LoggedUserId": 2});
      final List<dynamic> list = response.data['list'] ?? [];

      final properties = list
          .map((item) => PlanInspectionModel(
                id: item["id"],
                address: item["address"],
              ))
          .toList();

      final futures = properties.map((address) async {
        final latLng = await _geoCodingService.getLatLang(address: address);
        if (latLng != null) {
          return address.copyWith(lat: latLng.lat, lng: latLng.lng);
        }
        return address;
      }).toList();

      final results = await Future.wait(futures);

      return results;
    });
  }

  Future<String> addInspection({required AddInspectionParams param}) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.addInspection,
          data: jsonEncode(param.toJson()));
      return jsonEncode(response.data);
    });
  }

  Future<String> addMultipleInspection(
      {required PlanInspectionParams param}) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.addMultipleInspection,
          data: jsonEncode(param.toJson()));
      return response.data['message'];
    });
  }

  Future<String> updateInspection(
      {required UpdateInspectionParams param}) async {
    return asyncGuard(() async {
      List<SelectedAttribute> updatedAttributes = [];

      for (var i = 0; i < param.SelectedAttributeList.length; i++) {
        final attr = param.SelectedAttributeList[i];

        if (attr.AddUpdatePictures.isNotEmpty) {
          final timestamp = DateTime.now().millisecondsSinceEpoch;

          final customPaths = List.generate(
            attr.AddUpdatePictures.length,
            (j) {
              final filePath = attr.AddUpdatePictures[j]['PicturePath'];
              final extension = path.extension(filePath).toLowerCase();
              final safeExt = extension.isNotEmpty ? extension : ".jpg";

              return 'inspection${timestamp}_${i}_${j}$safeExt';
            },
          );

          final uploadResults = await Future.wait([
            for (var j = 0; j < customPaths.length; j++)
              minioService.uploadInspectionPropertyImage(
                File(attr.AddUpdatePictures[j]['PicturePath']),
                customPaths[j],
              )
          ]);

          print(
              'Uploaded images for attribute $i: ${uploadResults.map((e) => e.key)}');

          updatedAttributes.add(
            attr.copyWith(
              AddUpdatePictures: uploadResults
                  .map((e) => {"id": 0, "PicturePath": e.key})
                  .toList(),
            ),
          );
        } else {
          updatedAttributes.add(attr);
        }
      }

      param = param.copyWith(SelectedAttributeList: updatedAttributes);

      final response =
          await _dio.post(ApiEndPoints.updateInspection, data: param.toJson());
      return response.data['message'];
    });
  }

  Future<InspectionDetailsModel> getInspectionDetails(
      {required int inspectionId}) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.getEntryInspectionDetails,
          data: {'id': inspectionId});
      final jsonObj = response.data['object'];
      return InspectionDetailsModel.fromJson(jsonObj);
    });
  }

  Future<InspectionOverviewModel> getInspectionOverview(
      {required String inspectionUniqueId}) async {
    return asyncGuard(() async {
      final response = await _dio.get(ApiEndPoints.getInspectionOverview,
          queryParameters: {'InspectionUniqueId': inspectionUniqueId});
      final jsonObj = response.data['object'];
      return InspectionOverviewModel.fromJson(jsonObj);
    });
  }

  Future<TemplateAttribute> getTemplate({required int inspectionId}) async {
    return asyncGuard(() async {
      final response = await _dio.get(ApiEndPoints.getTemplate,
          queryParameters: {"InspectionId": inspectionId});
      final jsonObj = response.data['object'];

      return TemplateAttribute.fromJson(jsonObj);
    });
  }

  Future<String> addTemplate(
      {required int inspectionId, required AddTemplateParams param}) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.addTemplate, data: {
        'InspectionId': inspectionId,
        'Templates': [param.toJson()]
      });
      final jsonObj = response.data['message'];

      return jsonObj;
    });
  }

  Future<String> deleteTemplate(
      {required int inspectionId, required int templateId}) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.deleteTemplate,
          data: {"TemplateId": templateId, "InspectionId": inspectionId});
      final jsonObj = response.data['message'];

      return jsonObj;
    });
  }

  Future<SubTemplateModel> getSubTemplate(int id) async {
    return asyncGuard(() async {
      final response = await _dio.get(ApiEndPoints.getSubTemplate,
          queryParameters: {'TemplateId': id});
      final jsonObj = response.data['object'];
      return SubTemplateModel.fromJson(jsonObj);
    });
  }

  Future<String> deleteSubTemplate(int templateId, int facilityId) {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.removeSubTemplate,
          data: {"TemplateId": templateId, "FacilityId": facilityId});
      final jsonObj = response.data['message'];
      return jsonObj;
    });
  }

  Future<String> addSubTemplate(int templateId, String facility) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.addNewSubTemplate,
          data: {"TemplateId": templateId, "Facility": facility});
      final jsonObj = response.data['message'];
      return jsonObj;
    });
  }

  Future<String> shareInspection(
      {required String inspectionId,
      required int userType,
      required int userId}) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.shareInspection, data: {
        "InspectionUniqueId": inspectionId,
        "UserType": 2,
        "LoggedUserId": 2
      });
      final jsonObj = response.data['message'];
      return jsonObj;
    });
  }

  Future<String> updateOverview({required UpdateOverviewParam param}) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.updateOverviewInspection,
          data: param.toJson());
      final jsonObj = response.data['message'];
      return jsonObj;
    });
  }

  Future<List<ActiveAgentModel>> getActiveAgent(String agencyId) async {
    return asyncGuard(() async {
      final response = await _dio.get(ApiEndPoints.getActiveAgent,
          queryParameters: {"agencyUID": agencyId});
      final jsonObj = response.data['object'];
      return (jsonObj as List)
          .map((e) => ActiveAgentModel.fromJson(e))
          .toList();
    });
  }

  Future<List<InspectionActivityModel>> getInspectionActivity(
      {required int inspectionId}) async {
    return asyncGuard(() async {
      final response = await _dio.get(ApiEndPoints.getInspectionActivity,
          queryParameters: {'ModuleType': 6, 'RecordId': inspectionId});
      final jsonObj = response.data['list'];
      return (jsonObj as List)
          .map((e) => InspectionActivityModel.fromJson(e))
          .toList();
    });
  }

  Future<String> updateCompliance(InspectionComplianceParams param) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.addUpdateCompliance,
          data: param.toJson());
      final jsonObj = response.data['message'];
      return jsonObj;
    });
  }
}
