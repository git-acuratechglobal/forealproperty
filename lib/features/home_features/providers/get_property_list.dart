import 'package:foreal_property/core/services/home_services/home_services.dart';
import 'package:foreal_property/features/home_features/models/get_property_list_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_property_list.g.dart';

@riverpod
class GetAddedPropertyList extends _$GetAddedPropertyList {

 @override
  FutureOr<List<GetPropertyList>?> build() async {
    return await ref.read(homeServiceProvider).getPropertyList(
        agencyId: 1,
        recordsPerPage: 10,
        search: "",
        sortBy: "CreatedDate",
        sortOrder: "Desc",
        purpose: "");
  }

  Future<void> getaddedPropertyList({
    int agencyId = 1,
    int recordsPerPage = 10,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      return await ref.read(homeServiceProvider).getPropertyList(
          agencyId: agencyId,
          recordsPerPage: recordsPerPage,
          search: "",
          sortBy: "Desc",
          purpose: "");
    });
  }
}
