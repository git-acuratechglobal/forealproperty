import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/home_features/add_property_params/attributes_params.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/provider_steps/attributes_provider.dart';

class AttributeWidget extends ConsumerStatefulWidget {
  final bool isEdit;
  const AttributeWidget({super.key, this.isEdit = false});

  @override
  ConsumerState<AttributeWidget> createState() => _AttributeWidgetState();
}

class _AttributeWidgetState extends ConsumerState<AttributeWidget> {
  late bool isEdit;

  late TextEditingController bedsController;
  late TextEditingController bathsController;
  late TextEditingController garageController;
  late TextEditingController toiletsController;
  late TextEditingController ensuitesController;
  late TextEditingController livingAreasController;
  late TextEditingController carPortsController;
  late TextEditingController landAreaController;
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    bedsController.dispose();
    bathsController.dispose();
    garageController.dispose();
    toiletsController.dispose();
    ensuitesController.dispose();
    livingAreasController.dispose();
    carPortsController.dispose();
    landAreaController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    isEdit = widget.isEdit;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final propertyId =
          ref.watch(localStorageServiceProvider).getPropertyModel()?.id;

      if (propertyId != null) {
        ref.read(propertyAttributesModelDataProvider.notifier).update(
              (p) => p!.copyWith(propertyId: propertyId),
            );
      }
    });

    final attribute = ref.read(attributeProvider);

    bedsController =
        TextEditingController(text: attribute.beds?.toString() ?? '');
    bathsController =
        TextEditingController(text: attribute.baths?.toString() ?? '');
    garageController =
        TextEditingController(text: attribute.garageSpace?.toString() ?? '');
    toiletsController =
        TextEditingController(text: attribute.toilets?.toString() ?? '');
    ensuitesController =
        TextEditingController(text: attribute.ensuites?.toString() ?? '');
    livingAreasController =
        TextEditingController(text: attribute.livingAreas?.toString() ?? '');
    carPortsController =
        TextEditingController(text: attribute.carPorts?.toString() ?? '');
    landAreaController =
        TextEditingController(text: attribute.landArea?.toString() ?? '');
  }

  @override
  Widget build(BuildContext context) {
    final attribute = ref.read(attributeProvider);
    return Scaffold(
      appBar: isEdit
          ? AppBar(
              title: Text('Attribute Form'),
              centerTitle: true,
            )
          : null,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.verticalSpace,
              Text(
                'BASIC DETALIS',
                style: TextStyle(
                  color: const Color(0xFF164C63),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              16.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beds',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        12.verticalSpace,
                        CommonTextField(
                          label: '0',
                          controller: bedsController,
                          onChanged: (val) {
                            final value = int.tryParse(val) ?? 0;
                            ref
                                .read(attributeProvider.notifier)
                                .updateField('beds', value);
                          },
                          onSaved: (newValue) {
                            final value = int.tryParse(newValue ?? '') ?? 0;
                            ref
                                .read(propertyAttributesModelDataProvider
                                    .notifier)
                                .update(
                                  (p) => p!.copyWith(
                                      propertyAttibuteDetails:
                                          PropertyAttributeDetails(
                                              countBedrooms: value)),
                                );
                          },
                        ),
                      ],
                    ),
                  ),
                  18.horizontalSpace,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Baths',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        12.verticalSpace,
                        CommonTextField(
                            label: '0',
                            controller: bathsController,
                            onChanged: (val) {
                              ref.read(attributeProvider.notifier).updateField(
                                  'baths', int.parse(bathsController.text));
                            },
                            onSaved: (newValue) {
                              ref
                                  .read(propertyAttributesModelDataProvider
                                      .notifier)
                                  .update((p) => p!.copyWith(
                                      propertyAttibuteDetails:
                                          PropertyAttributeDetails(
                                              countBathrooms: int.parse(
                                                  bathsController.text))));
                            })
                      ],
                    ),
                  ),
                ],
              ),
              16.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Garage Space',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        12.verticalSpace,
                        CommonTextField(
                            label: '0',
                            controller: garageController,
                            onChanged: (val) {
                              ref.read(attributeProvider.notifier).updateField(
                                  'garageSpace',
                                  int.parse(garageController.text));
                            },
                            onSaved: (newValue) {
                              ref
                                  .read(propertyAttributesModelDataProvider
                                      .notifier)
                                  .update((p) => p!.copyWith(
                                      propertyAttibuteDetails:
                                          PropertyAttributeDetails(
                                              countGarageSpace: int.parse(
                                                  garageController.text))));
                            })
                      ],
                    ),
                  ),
                  18.horizontalSpace,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Toilets',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        12.verticalSpace,
                        CommonTextField(
                            label: '0',
                            controller: toiletsController,
                            onChanged: (val) {
                              ref.read(attributeProvider.notifier).updateField(
                                  'toilets', int.parse(toiletsController.text));
                            },
                            onSaved: (newValue) {
                              ref
                                  .read(propertyAttributesModelDataProvider
                                      .notifier)
                                  .update((p) => p!.copyWith(
                                      propertyAttibuteDetails: PropertyAttributeDetails(countToilets: int.parse(toiletsController.text) )
                                          ));
                            })
                      ],
                    ),
                  ),
                ],
              ),
              16.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ensuites',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        12.verticalSpace,
                        CommonTextField(
                            label: '0',
                            controller: ensuitesController,
                            onChanged: (val) {
                              ref.read(attributeProvider.notifier).updateField(
                                  'ensuites',
                                  int.parse(ensuitesController.text));
                            },
                            onSaved: (newValue) {
                              ref
                                  .read(propertyAttributesModelDataProvider
                                      .notifier)
                                  .update((p) => p!.copyWith(
                                      propertyAttibuteDetails: PropertyAttributeDetails(countEnsuites: int.parse(ensuitesController.text))
                                          ));
                            })
                      ],
                    ),
                  ),
                  18.horizontalSpace,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Living Areas',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        12.verticalSpace,
                        CommonTextField(
                            label: '0',
                            controller: livingAreasController,
                            onChanged: (val) {
                              ref.read(attributeProvider.notifier).updateField(
                                  'livingAreas',
                                  int.parse(livingAreasController.text));
                            },
                            onSaved: (newValue) {
                              ref
                                  .read(propertyAttributesModelDataProvider
                                      .notifier)
                                  .update((p) => p!.copyWith(
                                      propertyAttibuteDetails: PropertyAttributeDetails(propertyLandAreaL: int.parse(
                                          livingAreasController.text) )
                                     ));
                            })
                      ],
                    ),
                  ),
                ],
              ),
              16.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Car Ports',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        12.verticalSpace,
                        CommonTextField(
                            label: '0',
                            controller: carPortsController,
                            onChanged: (val) {
                              ref.read(attributeProvider.notifier).updateField(
                                  'carPorts',
                                  int.parse(carPortsController.text));
                            },
                            onSaved: (newValue) {
                              ref
                                  .read(propertyAttributeDetailsDataProvider
                                      .notifier)
                                  .update((p) => p!.copyWith(
                                      countCarParking:
                                          int.parse(carPortsController.text)));
                            })
                      ],
                    ),
                  ),
                  18.horizontalSpace,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Land Area',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        12.verticalSpace,
                        CommonTextField(
                            label: '0',
                            controller: landAreaController,
                            onChanged: (val) {
                              ref.read(attributeProvider.notifier).updateField(
                                  'landArea',
                                  int.parse(landAreaController.text));
                            },
                            onSaved: (newValue) {
                              ref
                                  .read(propertyAttributeDetailsDataProvider
                                      .notifier)
                                  .update((p) => p!.copyWith(
                                      countLivingAreas:
                                          int.parse(landAreaController.text)));
                            })
                      ],
                    ),
                  ),
                ],
              ),
              24.verticalSpace,
              Divider(
                height: 1,
                color: Color(0xFFE2E2E2),
              ),
              24.verticalSpace,
              Text(
                'OPTIONAL FEATURES',
                style: TextStyle(
                  color: const Color(0xFF164C63),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              16.verticalSpace,
              Text(
                'Outdoor Features',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              16.verticalSpace,
              OptionalFeatures(
                [
                  'Balcony',
                  'Swimming Pool - In Ground',
                  'Deck',
                  'Fully Fenced',
                  'Outdoor Entertainment Are',
                  'Outdoor Spa',
                  'Remote Garage',
                  'Secure Parking',
                  'Shed',
                  'Swimming Pool - Above Ground',
                  'Tennis Court',
                  'Coutryard'
                ],
                selectedItems: attribute.outdoorFeatures ?? [],
                onChanged: (selectedList) {
                  ref
                      .read(attributeProvider.notifier)
                      .updateField('outdoorFeatures', selectedList);

                  final outdoorDetails = PropertyFeaturesOutdoorDetails(
                    balcony: selectedList.contains('Balcony'),
                    deck: selectedList.contains('Deck'),
                    outdoorEntertainmentArea: selectedList
                        .contains('Outdoor Entertainment Are'), // typo?
                    remoteGarage: selectedList.contains('Remote Garage'),
                    shed: selectedList.contains('Shed'),
                    swimmingPoolInGround:
                        selectedList.contains('Swimming Pool - In Ground'),
                    fullyFenced: selectedList.contains('Fully Fenced'),
                    outsideSpa: selectedList.contains('Outdoor Spa'),
                    secureParking: selectedList.contains('Secure Parking'),
                    SwimmmingPoolAboveGround:
                        selectedList.contains('Swimmming Pool - AboveGround'),
                    tennisCourt: selectedList.contains('Tennis Court'),
                  );
                  print('Updating Outdoor Details: ${outdoorDetails.toJson()}');

                  ref.read(propertyAttributesModelDataProvider.notifier).update(
                      (p) => p!.copyWith(
                          propertyFeaturesOutdoorDetails: outdoorDetails));
                },
              ),
              24.verticalSpace,
              Divider(
                height: 1,
                color: Color(0xFFE2E2E2),
              ),
              24.verticalSpace,
              Text(
                'Indoor  Features',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              16.verticalSpace,
              OptionalFeatures(
                [
                  'Alarm System',
                  'Workshop',
                  'Build-in-Wardrobes',
                  'Broadband Internet Available', // Fixed typo in Broadband
                  'Ducted Vacuum System', // Fixed typo in Vacuum
                  'Dishwasher',
                  'Gym',
                  'Floorboards',
                  'Intercom',
                  'Inside Spa',
                  'Rumpus Room',

                  'Study'
                ],
                selectedItems: attribute.indoorFeatures ?? [],
                onChanged: (selectedList) {
                  ref
                      .read(attributeProvider.notifier)
                      .updateField('indoorFeatures', selectedList);

                  final indoorDetails = PropertyFeaturesIndoorDetails(
                    alarmSystem: selectedList.contains('Alarm System'),
                    workshop: selectedList.contains('Workshop'),
                    builtInWardrobes:
                        selectedList.contains('Build-in-Wardrobes'),
                    broadbandInternetAvailable:
                        selectedList.contains('Broadband Internet Available'),
                    ductedVacuumSystem:
                        selectedList.contains('Ducted Vacuum System'),
                    dishwasher: selectedList.contains('Dishwasher'),
                    gym: selectedList.contains('Gym'),
                    floorboards: selectedList.contains('Floorboards'),
                    intercom: selectedList.contains('Intercom'),
                    insideSpa: selectedList.contains('Inside Spa'),
                    rumpusRoom: selectedList.contains('Rumpus Room'),
                    payTvaccess: selectedList.contains('Pay Tv Access'),
                    study: selectedList.contains('Study'),
                  );

                  print('Updating Indoor Details: ${indoorDetails.toJson()}');

                  ref.read(propertyAttributesModelDataProvider.notifier).update(
                        (p) => p!.copyWith(
                            propertyFeaturesIndoorDetails: indoorDetails),
                      );
                },
              ),
              24.verticalSpace,
              Divider(
                height: 1,
                color: Color(0xFFE2E2E2),
              ),
              24.verticalSpace,
              Text(
                'Heating/Cooling',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              16.verticalSpace,
              OptionalFeatures(
                [
                  'Air Conditioning',
                  'Ducted Cooling',
                  'Ducted Heating',
                  'Evaporative Cooling',
                  'Gas Heating',
                  'Hydraulic Heating',
                  'Open FirePlace',
                  'Reverse Cycle Air Conditioning',
                  'Split System Air Conditioning',
                  'Split System Heating',
                ],
                selectedItems: attribute.heatingCooling ?? [],
                onChanged: (selectedList) {
                  ref
                      .read(attributeProvider.notifier)
                      .updateField('heatingCooling', selectedList);

                  final heatCoolDetails = PropertyFeaturesHeatCoolDetails(
                    airConditioning: selectedList.contains('Air Conditioning'),
                    ductedCooling: selectedList.contains('Ducted Cooling'),
                    ductedHeating: selectedList.contains('Ducted Heating'),
                    evaporativeCooling:
                        selectedList.contains('Evaporative Cooling'),
                    gasHeating: selectedList.contains('Gas Heating'),
                    hydraulicHeating:
                        selectedList.contains('Hydraulic Heating'),
                    openFireplace: selectedList.contains('Open FirePlace'),
                    reverseCycleAirConditioning:
                        selectedList.contains('Reverse Cycle Air Conditioning'),
                    splitSystemAirConditioning:
                        selectedList.contains('Split System Air Conditioning'),
                    splitSystemHeating:
                        selectedList.contains('Split System Heating'),
                  );

                  print(
                      'Updating Heat/Cool Details: ${heatCoolDetails.toJson()}');

                  ref.read(propertyAttributesModelDataProvider.notifier).update(
                        (p) => p!.copyWith(
                          propertyFeaturesHeatCoolDetails: heatCoolDetails,
                        ),
                      );
                },
              ),
              24.verticalSpace,
              Divider(
                height: 1,
                color: Color(0xFFE2E2E2),
              ),
              24.verticalSpace,
              Text(
                'Eco Friendly Feature',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              16.verticalSpace,
              OptionalFeatures(
                [
                  'Grey Water System',
                  'Solar Hot Water',
                  'Solar Panels',
                  'Water Tank',
                ],
                selectedItems: attribute.ecoFriendlyFeatures ?? [],
                onChanged: (selectedList) {
                  ref
                      .read(attributeProvider.notifier)
                      .updateField('ecoFriendlyFeatures', selectedList);

                  final ecoFriendlyDetails = PropertyEcoFriendlyFeaturesDetails(
                    greyWaterSystem: selectedList.contains('Grey Water System'),
                    solarHotWater: selectedList.contains('Solar Hot Water'),
                    solarPanels: selectedList.contains('Solar Panels'),
                    waterTank: selectedList.contains('Water Tank'),
                  );

                  print(
                      'Updating Eco-Friendly Details: ${ecoFriendlyDetails.toJson()}');

                  ref.read(propertyAttributesModelDataProvider.notifier).update(
                        (p) => p!.copyWith(
                          propertyEcoFriendlyFeaturesDetails:
                              ecoFriendlyDetails,
                        ),
                      );
                },
              ),
              60.verticalSpace,
              if (isEdit)
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF164C63),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(38),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Save')),
              24.verticalSpace,
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
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
            title: isEdit ? 'Save' : 'Next',
            onClick: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                ref
                    .read(propertyNotifierProvider.notifier)
                    .addProprtyAttribute();
              }
            },
          ),
        ),
      ),
    );
  }
}
