import 'package:foreal_property/core/services/home_services/home_services.dart';
import 'package:foreal_property/features/home_features/models/get_property_details.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'get_property_detail.g.dart';

@riverpod
class GetPropertyDetail extends _$GetPropertyDetail {
  Future<void> getDetail(String id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      return await ref.read(homeServiceProvider).getPropertyDetails(id);
    });
  }

  @override
  FutureOr<PropertyDetailModel?> build() {
    return null;
  }
}
