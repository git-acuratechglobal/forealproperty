import 'package:foreal_property/core/services/home_services/home_services.dart';
import 'package:foreal_property/features/home_features/models/get_property_listing_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'get_property_listing.g.dart';

@riverpod
class GetPropertyListing extends _$GetPropertyListing {


  @override
  FutureOr<List<PropertyListingModel>?> build() async{
    return  await ref.read(homeServiceProvider).getPropertyListing(
      propertyType: 1,
      agencyId: 1,
      recordsPerPage: 10,
      sortBy: "CreatedDate",
      sortOrder: "Desc"
    );
  }

  
  Future<void> getPropertyListing({
    int agencyId = 1,
    int recordsPerPage = 10,
    int propertyType = 1
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async{
      return await ref.read(homeServiceProvider).getPropertyListing(
        agencyId: agencyId,
        recordsPerPage: recordsPerPage,
        propertyType: propertyType,
        sortBy: "Desc",
        sortOrder: "CreatedDate"
      );
    });
    
  }
  
}

