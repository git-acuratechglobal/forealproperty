import 'package:foreal_property/core/services/add_property_service/add_property_address.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/features/auth_feature/model/add_property_model.dart';
import 'package:foreal_property/features/home_features/add_property_params/add_image_param.dart';
import 'package:foreal_property/features/home_features/add_property_params/add_property_listing.dart';
import 'package:foreal_property/features/home_features/add_property_params/address_params.dart';
import 'package:foreal_property/features/home_features/add_property_params/attributes_params.dart';
import 'package:foreal_property/features/home_features/add_property_params/ownership_params.dart';
import 'package:foreal_property/features/home_features/add_property_state/add_property_state.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'add_property.g.dart';

@riverpod
class PropertyNotifier extends _$PropertyNotifier {
  @override
  FutureOr<AddPropertyState?> build() {
    return null;
  }

//   Future<void> addPropertyAddress() async {
//     state = const AsyncLoading();
//     state = await AsyncValue.guard(() async {
//       final params = ref.watch(addressParamsDataProvider);
//       final message = await ref
//           .watch(addPropertyServiceProvider)
//           .addPropertyAddress(params: params);
// final propertyId = ref.watch(localStorageServiceProvider).getPropertyModel()?.id;
//  ref.read(addressParamsDataProvider.notifier).update((p) => p!.copyWith(propertyId: propertyId!));
//       return AddPropertyState(
//           addPropertyEvent: AddPropertyEvent.addAddress, response: message);
//     });
//   }

  Future<void> addPropertyAddress() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(addressParamsDataProvider);
      final message = await ref
          .watch(addPropertyServiceProvider)
          .addPropertyAddress(params: params);
      ref.invalidate(localStorageServiceProvider);

      return AddPropertyState(
        addPropertyEvent: AddPropertyEvent.addAddress,
        response: message,
      );
    });
  }

  Future<void> updatePropertyAddress() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(addressParamsDataProvider);
      final message = await ref
          .watch(addPropertyServiceProvider)
          .addPropertyAddress(params: params);

      return AddPropertyState(
        addPropertyEvent: AddPropertyEvent.addressUpdate,
        response: message,
      );
    });
  }

  Future<void> addProprtyAttribute() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(propertyAttributesModelDataProvider);
      final message = await ref
          .watch(addPropertyServiceProvider)
          .addPropertyAttribute(params: params);

      return AddPropertyState(
          addPropertyEvent: AddPropertyEvent.addPropertyAttribute,
          response: message);
    });
  }

  Future<void> addPropertyListing() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(listingParamsDataProvider);

      final message = await ref
          .watch(addPropertyServiceProvider)
          .addPropertyListing(params: params);
      return AddPropertyState(
          addPropertyEvent: AddPropertyEvent.listing, response: message);
    });
  }

  Future<void> addPropertyContact() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(ownershipParamsDataProvider);
      final message = await ref
          .watch(addPropertyServiceProvider)
          .addPropertyContact(params: params);
      return AddPropertyState(
          addPropertyEvent: AddPropertyEvent.contact, response: message);
    });
  }

  Future<void> addPropertyImage() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(addImageDataProvider);
      final message = await ref
          .watch(addPropertyServiceProvider)
          .addPropertyImage(params: params);
      return AddPropertyState(
          addPropertyEvent: AddPropertyEvent.addImage, response: message);
    });
  }
}
