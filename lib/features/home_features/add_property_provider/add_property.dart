import 'package:foreal_property/core/services/add_property_service/add_property_address.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/features/home_features/add_property_params/add_image_param.dart';
import 'package:foreal_property/features/home_features/add_property_params/add_multiple_owner.dart';
import 'package:foreal_property/features/home_features/add_property_params/add_property_listing.dart';
import 'package:foreal_property/features/home_features/add_property_params/add_tenant_param.dart';
import 'package:foreal_property/features/home_features/add_property_params/address_params.dart';
import 'package:foreal_property/features/home_features/add_property_params/attributes_params.dart';
import 'package:foreal_property/features/home_features/add_property_params/open_home_params.dart';
import 'package:foreal_property/features/home_features/add_property_params/ownership_params.dart';
import 'package:foreal_property/features/home_features/add_property_params/registration_param.dart';
import 'package:foreal_property/features/home_features/add_property_state/add_property_state.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/provider_steps/photo_provider.dart';
import 'package:foreal_property/features/home_features/providers/get_contact_list.dart';
import 'package:foreal_property/features/home_features/providers/get_open_home_details.dart';
import 'package:foreal_property/features/home_features/providers/get_property_list.dart';
import 'package:foreal_property/features/home_features/providers/get_property_listing.dart';
import 'package:foreal_property/features/home_features/providers/openhomelist.dart';
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
      ref.invalidate(getAddedPropertyListProvider);

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
      ref.invalidate(addressParamsDataProvider);
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
      ref.invalidate(propertyAttributeDetailsDataProvider);
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
      ref.invalidate(getPropertyListingProvider);
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
      ref.invalidate(getContactListProvider);
      // ref.invalidate(openHomeListProvider);
      //  ref.invalidate(openHomeDetailListProvider);
      return AddPropertyState(
          addPropertyEvent: AddPropertyEvent.contact, response: message);
    });
  }

  Future<void> updateContact() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(ownershipParamsDataProvider);
      final message = await ref
          .watch(addPropertyServiceProvider)
          .addPropertyContact(params: params);
      ref.invalidate(getContactListProvider);
      // ref.invalidate(openHomeListProvider);
      //  ref.invalidate(openHomeDetailListProvider);
      return AddPropertyState(
          addPropertyEvent: AddPropertyEvent.updateContact, response: message);
    });
  }

  Future<void> addPropertyImage() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(addImageDataProvider);
      final imageParams = ref.watch(photoFormProvider);
      final message = await ref
          .watch(addPropertyServiceProvider)
          .addPropertyImage(params: params, imageForm: imageParams);
      ref.invalidate(addImageDataProvider);
      ref.invalidate(photoFormProvider);
      return AddPropertyState(
          addPropertyEvent: AddPropertyEvent.addImage, response: message);
    });
  }

  Future<void> addUpdateOpenHome() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(openHomeParamsDataProvider);
      final message = await ref
          .watch(addPropertyServiceProvider)
          .addUpdateOpenHomes(params: params);
      ref.invalidate(openHomeListProvider);
      return AddPropertyState(
          addPropertyEvent: AddPropertyEvent.addUpdateOpenHome,
          response: message);
    });
  }

  Future<void> addOpenHomeRegistration() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(registrationParamDataProvider);
      final message = await ref
          .watch(addPropertyServiceProvider)
          .addOpenHomeRegistration(params: params);
      ref.invalidate(registrationParamDataProvider);
      ref.invalidate(openHomeDetailListProvider);
      return AddPropertyState(
          addPropertyEvent: AddPropertyEvent.addOpenHomesRegistration,
          response: message);
    });
  }

  Future<void> addTenant() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(tenantParamsDataProvider);
      final message =
          await ref.watch(addPropertyServiceProvider).addTenant(params: params);

      ref.invalidate(tenantParamsDataProvider);
      //ref.invalidate(getPropertyDetailProvider);
      return AddPropertyState(
          addPropertyEvent: AddPropertyEvent.addTenant, response: message);
    });
  }

  Future<void> addMultipleOwners() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final params = ref.watch(multipleContactDataProvider);
      final message = await ref
          .watch(addPropertyServiceProvider)
          .addMultipleOwners(params: params);
      return AddPropertyState(
          addPropertyEvent: AddPropertyEvent.addMultipleOwner,
          response: message);
    });
  }

  Future<void> deleteOpenHomes(String openHomeUniqueId) async {
    state = const AsyncLoading();
    await ref.read(addPropertyServiceProvider).deleteOpenHome(openHomeUniqueId);
    final responseMessage = "Open Home deleted successfully.";
    AddPropertyState(
      addPropertyEvent: AddPropertyEvent.deleteOpenHome,
      response: responseMessage,
    );
  }
}
