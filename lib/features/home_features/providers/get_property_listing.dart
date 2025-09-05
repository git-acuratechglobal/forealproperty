import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/core/services/home_services/home_services.dart';
import 'package:foreal_property/features/home_features/models/get_property_listing_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../inspection_feature/model/property_for_inspection.dart';
part 'get_property_listing.g.dart';

@riverpod
class GetPropertyListing extends _$GetPropertyListing {
  @override
  FutureOr<List<PropertyListingList>?> build(int propertyType) async {
    return await ref.read(homeServiceProvider).getPropertyListing(
          propertyType: propertyType,
          agencyId: 1,
          recordsPerPage: 10,
          sortBy: "CreatedDate",
          sortOrder: "Desc",
        );
  }
}

// @riverpod
// Future<List<PropertyListingList>> searchPropertyForInspection(Ref ref,) async {
//   return await ref.read(homeServiceProvider).searchPropertyForInspection();
// }

@riverpod
class SearchPropertyForInspection extends _$SearchPropertyForInspection {
  @override
  FutureOr<List<PropertyForInspection>> build() async {
    return await ref.read(homeServiceProvider).searchPropertyForInspection();
  }

  Future<void> searchProperty({String search = ""}) async {
     // state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      return await ref
          .read(homeServiceProvider)
          .searchPropertyForInspection(search: search);
    });
  }
}
