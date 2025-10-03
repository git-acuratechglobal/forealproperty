import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/network/apiend_points.dart';
import 'package:foreal_property/core/services/auth_service/auth_service.dart';
import 'package:foreal_property/features/aggrement_feature/model/agreement_document_model.dart';
import 'package:foreal_property/features/aggrement_feature/model/management_agreement_model.dart';
import 'package:foreal_property/features/aggrement_feature/model/sales_agreement_model.dart';
import 'package:foreal_property/features/aggrement_feature/params/update_sales_agreement_params.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import '../../../features/aggrement_feature/model/tenancy_agreement_model.dart';
import '../../../features/aggrement_feature/model/tenant_contact_model.dart';
import '../../../features/aggrement_feature/params/update_management_agreement_params.dart';
import '../../../features/aggrement_feature/params/update_tenancy_agreement_params.dart';
import '../../../features/inspection_feature/model/property_for_inspection.dart';
import '../../network/dio_client.dart';
import '../../widgets/asyncwidget.dart';

final agreementServiceProvider = Provider<AgreementService>((ref) {
  final dio = ref.watch(dioProvider);

  return AgreementService(dio);
});

class AgreementService {
  final Dio _dio;

  AgreementService(
    this._dio,
  );

  Future<List<PropertyForInspection>> getPropertyForAgreement(
      [String? search]) async {
    return asyncGuard(() async {
      final response =
          await _dio.post(ApiEndPoints.getPropertyForAgreement, data: {
        "AgencyUniqueID": "ba137a8612994",
        "RecordsPerPage": 10,
        "PageNo": 1,
        "Search": search
      });
      final list = response.data['list'];
      final data = (list is List) ? list : <dynamic>[];
      return data.map((e) => PropertyForInspection.fromJson(e)).toList();
    });
  }

  Future<ManagementAgreementModel> getManagementAgreement(
      String propertyId) async {
    return asyncGuard(() async {
      final response = await _dio.get(
          ApiEndPoints.getManagementAgreementByPropertyId,
          queryParameters: {"propId": propertyId});
      final data = response.data['object'];
      if (data == null) {
        final response2 = await _dio
            .post(ApiEndPoints.createManagementAgreement, data: {
          "PropertyUId": propertyId,
          "AgencyId": 1,
          "isNew": null,
          "LoggedUserId": 2
        });

        final data2 = response2.data['object'];
        return ManagementAgreementModel.fromJson(data2);
      } else {
        return ManagementAgreementModel.fromJson(data);
      }
    });
  }

  Future<String> updateManagementAgreementPropertyDetails(
      UpdateManagementAgreementParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(
          ApiEndPoints.updateAgreementPropertyDetails,
          data: jsonEncode(params.toJson()));
      return response.data['message'];
    });
  }

  Future<String> updateAgreementPeriodDetails(
      ManagementAgreementPeriodDetailsParams param) async {
    return asyncGuard(() async {
      final response = await _dio.post(
          ApiEndPoints.updateAgreementPeriodDetails,
          data: jsonEncode(param.toJson()));
      return response.data['message'];
    });
  }

  Future<String> updateAgreementFeeCharges(
      ManagementAgreementFeeChargesParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(
          ApiEndPoints.updateAgreementChargeDetails,
          data: jsonEncode(params.toJson()));
      return response.data['message'];
    });
  }

  Future<String> updateTribunalFees(
      ManagementAgremntTribunalParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(
          ApiEndPoints.updateAgreementTeribunalinsurance,
          data: jsonEncode(params.toJson()));
      return response.data['message'];
    });
  }

  Future<String> updatePromotionalActivity(
      ManagementAgremntPromotionParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(
          ApiEndPoints.updateAgreementPromotionalDetails,
          data: jsonEncode(params.toJson()));
      return response.data['message'];
    });
  }

  Future<String> updateAgreementRepairDetails(
      ManagementAgremntRepairDetailsParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(
          ApiEndPoints.updateAgreementRepairDetails,
          data: jsonEncode(params.toJson()));
      return response.data['message'];
    });
  }

  Future<void> generatePdfReport(String propertyId) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.generatePdfReport,
          data: {"PropertyUId": propertyId},
          options: Options(
            responseType: ResponseType.bytes,
            followRedirects: true,
          ));
      final bytes = Uint8List.fromList(response.data ?? <int>[]);
      final dir = await getTemporaryDirectory();
      final file = File('${dir.path}/agreement.pdf');
      await file.writeAsBytes(bytes, flush: true);
      await OpenFilex.open(file.path);
    });
  }

  Future<void> generateTenantPdfReport(String propertyId) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.generateTenantPdfReport,
          data: {"PropertyUId": propertyId},
          options: Options(
            responseType: ResponseType.bytes,
            followRedirects: true,
          ));
      final bytes = Uint8List.fromList(response.data ?? <int>[]);
      final dir = await getTemporaryDirectory();
      final file = File('${dir.path}/agreement.pdf');
      await file.writeAsBytes(bytes, flush: true);
      await OpenFilex.open(file.path);
    });
  }

  Future<void> generateSalesPdfReport(String propertyId) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.generateSalesPdfReport,
          data: {"PropertyUId": propertyId},
          options: Options(
            responseType: ResponseType.bytes,
            followRedirects: true,
          ));
      final bytes = Uint8List.fromList(response.data ?? <int>[]);
      final dir = await getTemporaryDirectory();
      final file = File('${dir.path}/agreement.pdf');
      await file.writeAsBytes(bytes, flush: true);
      await OpenFilex.open(file.path);
    });
  }

  Future<TenantAgreementModel> getTenancyAgreement(String propertyId) async {
    return asyncGuard(() async {
      final response = await _dio.get(
          ApiEndPoints.getTenancyAgreementByPropertyId,
          queryParameters: {"propId": propertyId});
      final data = response.data['object'];
      if (data != null) {
        return TenantAgreementModel.fromJson(data);
      } else {
        final response2 = await _dio.post(ApiEndPoints.createTenantAgreement,
            data: {
              "PropertyUId": propertyId,
              "AgencyId": 1,
              "isNew": true,
              "LoggedUserId": 2
            });
        final data2 = response2.data['object'];
        return TenantAgreementModel.fromJson(data2);
      }
    });
  }

  Future<List<SearchContactModel>> serachContact(String name) async {
    return asyncGuard(() async {
      final response = await _dio.post(
        ApiEndPoints.serachContact,
        data: {
          "Search": name,
          "RecordsPerPage": 10,
          "PageNo": 1,
          "AgentID": 1,
          "LoggedUserId": 2
        },
      );
      final List<dynamic> data = response.data['list'];
      return data.map((e) => SearchContactModel.fromJson(e)).toList();
    });
  }

  Future<TenantContactModel> getTenantContactDetails(String contactId) async {
    return asyncGuard(() async {
      final response = await _dio
          .get(ApiEndPoints.getTenantContactDetails, queryParameters: {
        'contactUniqueId': contactId,
      });
      final data = response.data['object'];
      return TenantContactModel.fromJson(data);
    });
  }

  Future<String> updateTenantDetails(TenantUpdateParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.updateAgreementTenants,
          data: jsonEncode(params.toJson()));
      final data = response.data['message'];

      return data;
    });
  }

  Future<String> updateLandlordTenantAgreementDetails(
      UpdateLandlordTenantDetailsParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(
          ApiEndPoints.updateLandlordTenantAgreementDetails,
          data: jsonEncode(params.toJson()));
      final data = response.data['message'];

      return data;
    });
  }

  Future<String> updateRentBond(UpdateRentBondParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(
          ApiEndPoints.updateRentBondTenantAgreementDetails,
          data: jsonEncode(params.toJson()));
      final data = response.data['message'];

      return data;
    });
  }

  Future<String> updateTenantAgreementInfo(
      UpdateTenantAgreementInfoParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.updateInfoOfTenantAgreement,
          data: jsonEncode(params.toJson()));
      final data = response.data['message'];

      return data;
    });
  }

  Future<SalesAgreementModel> getSalesAgreement(String propertyId) async {
    return asyncGuard(() async {
      final response = await _dio.get(ApiEndPoints.getSalesAgreementByPropId,
          queryParameters: {"propId": propertyId});
      final data = response.data['object'];
      if (data != null) {
        return SalesAgreementModel.fromJson(data);
      } else {
        final response2 = await _dio.post(ApiEndPoints.createSalesAgreement,
            data: {
              "PropertyUId": propertyId,
              "AgencyId": 1,
              "isNew": true,
              "LoggedUserId": 2
            });

        final data2 = response2.data['object'];
        return SalesAgreementModel.fromJson(data2);
      }
    });
  }

  Future<String> updateSalesAgreement1(
      UpdateSalesAgreementParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.saleAgreementUpdateForm1,
          data: jsonEncode(params.toJson()));
      return response.data['message'];
    });
  }

  Future<String> updateSalesAgreement2(
      UpdateSolicitorDetailsParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.saleAgreementUpdateForm2,
          data: jsonEncode(params.toJson()));
      return response.data['message'];
    });
  }

  Future<String> updateSalesAgreement3(UpdatePeriodDetailsParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.saleAgreementUpdateForm3,
          data: jsonEncode(params.toJson()));
      return response.data['message'];
    });
  }

  Future<String> updateSalesAgreement4(
      UpdateRemunerationDetailsParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.saleAgreementUpdateForm4,
          data: jsonEncode(params.toJson()));
      return response.data['message'];
    });
  }

  Future<String> updateSalesAgreement5(
      UpdateExpensesChargeDetailsParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.saleAgreementUpdateForm5,
          data: jsonEncode(params.toJson()));
      return response.data['message'];
    });
  }

  Future<String> updateSalesAgreement6(
      UpdateSalesPromotionDetailsParams params) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.saleAgreementUpdateForm6,
          data: jsonEncode(params.toJson()));
      return response.data['message'];
    });
  }

  Future<PaginationResponse<AgreementDocument>> getAgreementDocList(
      {int page = 1, String? search, bool? isCompleted}) async {
    return asyncGuard(() async {
      final response =
          await _dio.post(ApiEndPoints.getAgreementDocumentList, data: {
        "SortBy": "CreatedDate",
        "SortOrder": "Desc",
        "AgencyId": 1,
        "IsCompleted": isCompleted,
        "AgreementType": null,
        "PageNo": page,
        "Search": "",
        "LoggedUserId": 2
      });

      final List<dynamic> list = response.data['list'] ?? [];
      final totalCount = response.data['totalCount'] ?? 0;

      final totalPages = (totalCount / 10).ceil();

      final agreement =
          list.map((item) => AgreementDocument.fromJson(item)).toList();
      return PaginationResponse<AgreementDocument>(
          currentPage: page, totalPages: totalPages, data: agreement);
    });
  }

  Future<String> deleteAgreement(int agreementId, int agreementType) async {
    return asyncGuard(() async {
      final response = await _dio.post(ApiEndPoints.deleteAgreement, data: {
        "AgreementId": agreementId,
        "AgreementType": agreementType,
        "LoggedUserId": 2
      });

      final msg = response.data['message'];
      return msg;
    });
  }
}
