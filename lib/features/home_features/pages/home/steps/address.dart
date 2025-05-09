import 'dart:convert';

import 'package:extended_image/extended_image.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/utils/appsnackbar.dart';
import 'package:foreal_property/features/home_features/add_property_params/address_params.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/add_property_state/add_property_state.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/provider_steps/address_provider.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_places_flutter/model/prediction.dart';

class AdressWidget extends ConsumerStatefulWidget {
  final bool isEdit;
  const AdressWidget({super.key, this.isEdit = false});

  @override
  ConsumerState<AdressWidget> createState() => _AdressWidgetState();
}

class _AdressWidgetState extends ConsumerState<AdressWidget> {
  late bool isEdit;
  final TextEditingController streetNumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController unitNumberController = TextEditingController();
  final TextEditingController streetNameController = TextEditingController();
  final TextEditingController suburbController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController postcodeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    isEdit = widget.isEdit;
    streetNumberController.text = ref.read(addressProvider).streetNumber ?? '';
    addressController.text = ref.read(addressProvider).address ?? '';
    unitNumberController.text = ref.read(addressProvider).unitNumber ?? '';
    streetNameController.text = ref.read(addressProvider).streetName ?? '';
    suburbController.text = ref.read(addressProvider).suburb ?? '';
    stateController.text = ref.read(addressProvider).state ?? '';
    postcodeController.text = ref.read(addressProvider).postcode ?? '';

    ref.listenManual(propertyNotifierProvider, (_, next) {
      print('Provider state changed: $next');
      switch (next) {
        case AsyncData<AddPropertyState?> data when data.value != null:
          final addPropertyState = data.value;

          Utils.showSnackBar(context, addPropertyState?.response ?? "");

          if (addPropertyState?.addPropertyEvent ==
              AddPropertyEvent.addAddress) {
            //         ref.invalidate(addressProvider);

            final propertyId =
                ref.watch(localStorageServiceProvider).getPropertyModel()?.id;

            if (propertyId != null) {
              ref.read(addressParamsDataProvider.notifier).update(
                    (p) => p!.copyWith(propertyId: propertyId),
                  );
            }
            context.pop();
          }
        case AsyncError error:
          Utils.showSnackBar(context, error.error.toString());
      }
    });
  }

  @override
  void dispose() {
    streetNumberController.dispose();
    addressController.dispose();
    unitNumberController.dispose();
    streetNameController.dispose();
    suburbController.dispose();
    stateController.dispose();
    postcodeController.dispose();

    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isEdit
          ? AppBar(
              title: Text('Address Form'),
              centerTitle: true,
            )
          : null,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.verticalSpace,
              Text(
                'Property Type',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              12.verticalSpace,
              WidgetDropdown(
                propertyOptions: [
                  'House',
                  'Apartment',
                  'Flat',
                  'Alpine',
                  'Studio',
                  'Town House',
                  'Unit',
                  'Villa',
                  'Warehouse',
                  'Land',
                  'Other'
                ],
                selectedValue: ref.watch(addressProvider).propertyType,
                onChanged: (String? value) {
                  print('Selected Property Type: $value');
                  ref
                      .read(addressProvider.notifier)
                      .updateField('propertyType', value);
                  ref
                      .read(addressParamsDataProvider.notifier)
                      .update((p) => p!.copyWith(propertyType: value!));
                },
                hintText: 'Select',
              ),
              16.verticalSpace,
              Text(
                'Address',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              12.verticalSpace,
              GooglePlaceAutoCompleteTextField(
                inputDecoration: InputDecoration(
                  hintText: 'address',
                  hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: const Color(0xFFB9B9B9),
                      ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xFFE2E2E2)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                textEditingController: addressController,
                isLatLngRequired: true,
                countries: ["au"],
                debounceTime: 200,
                googleAPIKey: 'AIzaSyBNA6taSRhBuugfKk7MyQQdCVfcz2fJ4tI',
                itemClick: updateAddressDetails,
                validator: (value, context) {
                  if (value == null || value.isEmpty) {
                    return 'Address is required';
                  }

                  return null;
                },
              ),
              16.verticalSpace,
              Text(
                'Unit Number',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              12.verticalSpace,
              CommonTextField(
                label: 'Unit Number',
                controller: unitNumberController,
                // validator: (value) {
                //   if (value == null || value.trim().isEmpty) {
                //     return 'This field is required';
                //   }
                //   return null;
                // },
                onChanged: (value) => ref
                    .read(addressProvider.notifier)
                    .updateField('unitNumber', value),
                onSaved: (value) => ref
                    .read(addressParamsDataProvider.notifier)
                    .update((p) => p!.copyWith(unitNumber: value)),
              ),
              16.verticalSpace,
              Text(
                'Street Number',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              12.verticalSpace,
              CommonTextField(
                label: 'Street Number',
                // validator: (value) {
                //   if (value.trim().isEmpty) {
                //     return 'This field is required';
                //   }
                //   return null;
                // },
                onChanged: (value) => ref
                    .read(addressProvider.notifier)
                    .updateField('streetNumber', value),
                onSaved: (value) => ref
                    .read(addressParamsDataProvider.notifier)
                    .update((p) => p!.copyWith(streetNumber: value)),
                controller: streetNumberController,
              ),
              16.verticalSpace,
              Text(
                'Street Name',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              12.verticalSpace,
              CommonTextField(
                label: 'Street Name',
                controller: streetNameController,
                // validator: (value) {
                //   if (value.trim().isEmpty) {
                //     return 'This field is required';
                //   }
                //   return null;
                // },
                onChanged: (value) => ref
                    .read(addressProvider.notifier)
                    .updateField('streetName', value),
                onSaved: (value) => ref
                    .read(addressParamsDataProvider.notifier)
                    .update((p) => p!.copyWith(streetName: value)),
              ),
              16.verticalSpace,
              Text(
                'Suburb',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              12.verticalSpace,
              CommonTextField(
                label: 'Suburb',
                // validator: (value) {
                //   if (value.trim().isEmpty) {
                //     return 'This field is required';
                //   }
                //   return null;
                // },
                controller: suburbController,
                onChanged: (value) => ref
                    .read(addressProvider.notifier)
                    .updateField('suburb', value),
                onSaved: (value) => ref
                    .read(addressParamsDataProvider.notifier)
                    .update((p) => p!.copyWith(suburb: value)),
              ),
              16.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'State',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        12.verticalSpace,
                        CommonTextField(
                          label: 'State',
                          controller: stateController,
                          // validator: (value) {
                          //   if ( value != null || value.trim().isEmpty) {
                          //     return 'This field is required';
                          //   }
                          //   return null;
                          // },
                          onChanged: (value) => ref
                              .read(addressProvider.notifier)
                              .updateField('state', value),
                          onSaved: (value) => ref
                              .read(addressParamsDataProvider.notifier)
                              .update((p) => p!.copyWith(state: value)),
                        ),
                      ],
                    ),
                  ),
                  19.horizontalSpace,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Postcode',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        12.verticalSpace,
                        CommonTextField(
                          label: 'Postcode',
                          // validator: (value) {
                          //   if (value != null || value.trim().isEmpty) {
                          //     return 'This field is required';
                          //   }
                          //   return null;
                          // },
                          controller: postcodeController,
                          onChanged: (value) => ref
                              .read(addressProvider.notifier)
                              .updateField('postcode', value),
                          onSaved: (value) => ref
                              .read(addressParamsDataProvider.notifier)
                              .update((p) => p!.copyWith(postCode: value)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              16.verticalSpace,
              Text(
                'AssignedTo',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              12.verticalSpace,
              WidgetDropdown(
                propertyOptions: ['Agent', 'Owner'],
                selectedValue: ref.watch(addressProvider).assignedTo,
                onChanged: (String? value) {
                  ref
                      .read(addressProvider.notifier)
                      .updateField('assignedTo', value);
                },
                hintText: 'Select',
              ),
              40.verticalSpace,
              if (isEdit)
                PrimaryButton(
                  isLoading: ref.watch(propertyNotifierProvider).isLoading,
                  title: 'Save',
                  onClick: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      ref
                          .read(propertyNotifierProvider.notifier)
                          .addPropertyAddress();
                    }
                  },
                ),
              40.verticalSpace
            ],
          ),
        ),
      ),
      bottomNavigationBar: isEdit
          ? null
          : Container(
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, -3),
                  ),
                ],
              ),
              child: BottomAppBar(
                color: Colors.white,
                child: PrimaryButton(
                  isLoading: ref.watch(propertyNotifierProvider).isLoading,
                  title: 'Next',
                  onClick: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      ref
                          .read(propertyNotifierProvider.notifier)
                          .updatePropertyAddress();
                    }
                  },
                ),
              ),
            ),
    );
  }

 Future<void> updateAddressDetails(Prediction prediction) async {
    final selectedAddress = prediction.description ?? "";
    String suburb = '';
   // String postcode = "";
    String streetName = '';
    String streetNumber = '';
    String unitNumber = '';

    ref.read(addressProvider.notifier).updateField('address', selectedAddress);
    ref.read(addressParamsDataProvider.notifier).update(
        (p) => p!.copyWith(propertyGooglePlacesLocation: selectedAddress));


   // ref.read(addressProvider.notifier).updateField('postcode', postcode);


    final placeId = prediction.placeId;
    if (placeId != null) {
      final url =
          'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=AIzaSyBNA6taSRhBuugfKk7MyQQdCVfcz2fJ4tI';
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final components =
            data['result']['address_components'] as List<dynamic>;

        for (final component in components) {
          final types = component['types'] as List<dynamic>;

          // Extract postcode
          if (types.contains('postal_code')) {
            final postcode = component['long_name'];
            print('Postcode: $postcode');
            postcodeController.text = postcode;
            ref
                .read(addressProvider.notifier)
                .updateField('postcode', postcode);
            break;
          }

          // Extract state
          if (types.contains('administrative_area_level_1')) {
            final state = component['short_name']; // 'NSW', 'VIC', etc.
            print('State: $state');
            stateController.text = state;
            ref.read(addressProvider.notifier).updateField('state', state);
          }

          // Extract suburb
          if (types.contains('locality') || types.contains('postal_town')) {
            suburb = component['long_name'];
            suburbController.text = suburb;
            ref.read(addressProvider.notifier).updateField('suburb', suburb);
          }

          // Extract street name
          if (types.contains('route')) {
            streetName = component['long_name'];
            streetNameController.text = streetName;
             ref
                .read(addressProvider.notifier)
                .updateField('streetName', streetName);
            print('Street Name: $streetName');
          }

          // Extract street number
          if (types.contains('street_number')) {
            streetNumber = component['long_name'];
            streetNumberController.text = streetNumber;
            ref
                .read(addressProvider.notifier)
                .updateField('streetNumber', streetNumber);
          }

          // Extract unit number
          if (types.contains('subpremise')) {
            unitNumber = component['long_name'];
            unitNumberController.text = unitNumber;
            ref
                .read(addressProvider.notifier)
                .updateField('unitNumber', unitNumber);
          }
        }
      } else {
        print('Failed to fetch details: ${response.body}');
      }
    }

    
    addressController.text = selectedAddress;
    addressController.selection = TextSelection.fromPosition(
      TextPosition(offset: selectedAddress.length),
    );
  }
}
