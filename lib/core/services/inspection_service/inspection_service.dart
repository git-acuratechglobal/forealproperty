import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/network/apiend_points.dart';
import 'package:foreal_property/core/s3_sigleton/s3_singleton.dart';
import 'package:foreal_property/core/widgets/asyncwidget.dart';
import 'package:foreal_property/features/inspection_feature/model/inspection_details_model.dart';
import 'package:foreal_property/features/inspection_feature/model/inspection_list_model.dart';

import '../../../features/inspection_feature/params/add_inspection_params.dart';
import '../../../features/inspection_feature/params/add_template_param.dart';
import '../../../features/inspection_feature/params/update_inspection_params.dart';
import '../../network/dio_client.dart';
import '../auth_service/auth_service.dart';
import 'package:path/path.dart' as path;

final inspectionServiceProvider = Provider<InspectionService>((ref) {
  final dio = ref.watch(dioProvider);
  final minioService = ref.watch(miniServiceProvider);
  return InspectionService(dio, minioService);
});

class InspectionService {
  final Dio _dio;
  final MinioService _minioService;
  final minioService = MinioService();
  InspectionService(this._dio, this._minioService);

  Future<PaginationResponse<InspectionListModel>> getInspectionList({
    int page = 1,
    String? search,
    int pageSize = 15,
  }) async {
    return asyncGuard(() async {
      final response =
          await _dio.post(ApiEndPoints.getInspectionPageList, data: {
        "AgencyId": 1,
        "Search": search,
        "TenantFolioId": null,
        "TabId": 1,
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

  Future<String> addInspection({required AddInspectionParams param}) async {
    return asyncGuard(() async {
      final response =
          await _dio.post(ApiEndPoints.addInspection, data: param.toJson());
      return response.data['message'];
    });
  }

  Future<String> updateInspection(
      {required UpdateInspectionParams param}) async {
    return asyncGuard(() async {
      if (param.SelectedAttributeList[0].AddUpdatePictures.isNotEmpty) {
        final timestamp = DateTime.now().millisecondsSinceEpoch;
        final customPaths = List.generate(
          param.SelectedAttributeList[0].AddUpdatePictures.length,
          (i) {
            final filePath =
                param.SelectedAttributeList[0].AddUpdatePictures[i]['PicturePath'];
            final extension = path.extension(filePath).toLowerCase();

            final safeExt = extension.isNotEmpty ? extension : ".jpg";

            return 'inspection${timestamp + i}$safeExt';
          },
        );
        final result = await Future.wait([
          for (var i = 0; i < customPaths.length; i++)
            minioService.uploadInspectionPropertyImage(
              File(param.SelectedAttributeList[0].AddUpdatePictures[i]['PicturePath']),
              customPaths[i],
            )
        ]);
        print(result.map((e) => e.key));
        final updatedAttributes = param.SelectedAttributeList.asMap()
            .map((index, attr) {
              if (index == 0) {
                return MapEntry(
                  index,
                  attr.copyWith(
                      AddUpdatePictures:result.map((e) => {
                        "id":0,
                        "PicturePath":e.key
                      } ).toList()
                          ),
                );
              }
              return MapEntry(index, attr);
            })
            .values
            .toList();

        param = param.copyWith(SelectedAttributeList: updatedAttributes);
      }
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

  Future<String> shareInspection(
      {required String inspectionId,
      required int userType,
      required int userId}) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.shareInspection, data: {
        "InspectionUniqueId": inspectionId,
        "UserType": userType,
        "LoggedUserId": userId
      });
      final jsonObj = response.data['message'];
      return jsonObj;
    });
  }
}
