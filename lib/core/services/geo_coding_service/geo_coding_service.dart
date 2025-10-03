import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/features/inspection_feature/model/property_address_model.dart';

import '../../network/dio_exception.dart';
import '../auth_service/auth_service.dart';

final geoCodeDioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://maps.googleapis.com/maps/api',
      responseType: ResponseType.json,
      receiveTimeout: const Duration(minutes: 1),
      sendTimeout: const Duration(minutes: 1),
      connectTimeout: const Duration(minutes: 1),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ),
  );

  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
    requestHeader: true,
    responseHeader: false,
  ));

  dio.interceptors.add(
    InterceptorsWrapper(
      onError: (e, handler) {
        final message = DioExceptions.fromDioError(e);
        return handler.reject(
          DioException(requestOptions: e.requestOptions, error: message),
        );
      },
    ),
  );

  return dio;
});


final geoCodingServiceProvider = Provider<GeoCodingService>((ref) {
  final _dio = ref.watch(geoCodeDioProvider);
  return GeoCodingService(_dio);
});


class GeoCodingService {
  final Dio _dio;
  GeoCodingService(this._dio);

  final String apiKey = "AIzaSyBNA6taSRhBuugfKk7MyQQdCVfcz2fJ4tI";

  Future<PropertyLatLngModel?> getLatLang(
      {required PlanInspectionModel address}) async {
    return asyncGuard(() async {
      final response = await _dio.get('/geocode/json',
          queryParameters: {'address': address.address, 'key': apiKey});
      if (response.statusCode == 200 &&
          response.data["status"] == "OK" &&
          response.data["results"].isNotEmpty) {
        final location = response.data["results"][0]["geometry"]["location"];
        return PropertyLatLngModel(
            id: address.id, lat: location["lat"], lng: location["lng"]);
      }
      return null;
    });
  }
}
