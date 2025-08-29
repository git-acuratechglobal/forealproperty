import 'package:foreal_property/core/services/home_services/home_services.dart';
import 'package:foreal_property/features/home_features/models/get_property_list_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_property_list.g.dart';

@riverpod
class GetAddedPropertyList extends _$GetAddedPropertyList {
  @override
  FutureOr<List<GetPropertyList>?> build() async {
   await Future.delayed(const Duration(seconds: 2));
    return await ref.watch(homeServiceProvider).getPropertyList(
        agencyId: 1,
        recordsPerPage:15,
        sortBy: "CreatedDate",
        sortOrder: "Desc",
        );
  }

  Future<void> searchProperty({required searchQuery}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      return await ref.read(homeServiceProvider).getPropertyList(
            agencyId: 1,
            recordsPerPage: 15,
            search: searchQuery,
            sortBy: "CreatedDate",
            sortOrder: "Desc",
            purpose: "",
          );
    });
  }
}
