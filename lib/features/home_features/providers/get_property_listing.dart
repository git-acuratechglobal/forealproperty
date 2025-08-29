import 'package:foreal_property/core/services/home_services/home_services.dart';
import 'package:foreal_property/features/home_features/models/get_property_listing_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
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
