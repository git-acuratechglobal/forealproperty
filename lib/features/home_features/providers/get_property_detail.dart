import 'package:foreal_property/core/services/home_services/home_services.dart';
import 'package:foreal_property/features/home_features/add_property_params/add_image_param.dart';
import 'package:foreal_property/features/home_features/add_property_params/address_params.dart';
import 'package:foreal_property/features/home_features/add_property_params/attributes_params.dart';
import 'package:foreal_property/features/home_features/add_property_params/ownership_params.dart';
import 'package:foreal_property/features/home_features/models/get_property_details.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'get_property_detail.g.dart';

@riverpod
class GetPropertyDetail extends _$GetPropertyDetail {
  Future<void> getDetail(String id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
          
      final propertyData = await ref.read(homeServiceProvider).getPropertyDetails(id);
      ref.read(addressParamsDataProvider.notifier).updateAddressParam(propertyData);
      ref.read(propertyAttributeDetailsDataProvider.notifier).updateAttributes(propertyData);
      ref.read(ownershipParamsDataProvider.notifier).updateOwnership(propertyData);
      ref.read(addImageDataProvider.notifier).updateAddImage(propertyData);
     
      return propertyData;
    });

     // ref.invalidate(provider)
  }

  @override
  FutureOr<PropertyDetailModel?> build() {
    return null;
  }
}
