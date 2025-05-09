import 'package:foreal_property/core/services/home_services/home_services.dart';
import 'package:foreal_property/features/home_features/models/sale_and_lease_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'get_sale_and_lease_property.g.dart';

@riverpod
class GetSelaAndLeaseProperty extends _$GetSelaAndLeaseProperty {
  @override
  FutureOr<List<PropertyModel>> build() async{
    return await ref.read(homeServiceProvider).getSaleAndLeaseProperty(
          pageNo: 1, recordsPerPage: 10);
  }

  Future<void> getSaleAndLeaseList({
    int pageNo = 1,
    int recordsPerPage = 10,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      return await ref.read(homeServiceProvider).getSaleAndLeaseProperty(
          pageNo: pageNo, recordsPerPage: recordsPerPage);
    });
  }
}
