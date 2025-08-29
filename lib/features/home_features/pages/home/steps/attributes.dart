import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/home_features/add_property_params/attributes_params.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/models/get_property_details.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/provider_steps/attributes_provider.dart';

class AttributeWidget extends ConsumerStatefulWidget {
  final bool isEdit;
  final PropertyDetailModel? propertyData;
  final int? PropertyId;
  const AttributeWidget(
      {super.key, this.isEdit = false, this.PropertyId, this.propertyData});

  @override
  ConsumerState<AttributeWidget> createState() => _AttributeWidgetState();
}

class _AttributeWidgetState extends ConsumerState<AttributeWidget> {
  late bool isEdit;
  TextEditingController bedsController = TextEditingController();

  TextEditingController bathsController = TextEditingController();
  TextEditingController garageController = TextEditingController();
  TextEditingController toiletsController = TextEditingController();
  TextEditingController ensuitesController = TextEditingController();
  TextEditingController livingAreasController = TextEditingController();
  TextEditingController carPortsController = TextEditingController();
  TextEditingController landAreaController = TextEditingController();

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
final propertyData = ref.watch(propertyAttributeDetailsDataProvider);
    bedsController.text = propertyData.countBedrooms?.toString() ?? '';

    bathsController.text = propertyData.countBathrooms?.toString() ?? '';
    garageController.text = propertyData.countGarageSpace?.toString() ?? '';
    toiletsController.text = propertyData.countToilets?.toString() ?? '';
    ensuitesController.text = propertyData.countEnsuites?.toString() ?? '';
    livingAreasController.text = propertyData.countLivingAreas?.toString() ?? '';
    carPortsController.text = propertyData.countCarParking?.toString() ?? '';
    landAreaController.text = propertyData.countLivingAreas?.toString() ?? '';

    // ref.read(propertyAttributeDetailsDataProvider.notifier).updateAttributes(widget.propertyData);
    //   ref
    //       .read(propertyAttributeDetailsDataProvider.notifier)
    //       .updateAttributes(widget.propertyData);
     
      if (widget.propertyData!.propertyId != null) {
        ref.read(propertyAttributesModelDataProvider.notifier).update(
              (p) => p!.copyWith(propertyId: widget.PropertyId),
            );

        final userId = ref.read(localStorageServiceProvider).getuser()?.userId;
        if (userId != null) {
          ref.read(propertyAttributesModelDataProvider.notifier).update(
                (p) => p!.copyWith(userId: userId),
              );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
   // final propertData = ref.watch(propertyAttributeDetailsDataProvider);

 
    return Scaffold(
      appBar: isEdit
          ? AppBar(
              title: const Text('Attribute Form'),
              centerTitle: true,
            )
          : null,
      body: SingleChildScrollView(
     //   padding: EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
             padding: const EdgeInsets.symmetric(horizontal: 24),
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
                           //   initialValue: propertData.countBedrooms.toString(),
                                controller: ensuitesController,
                                // onChanged: (val) {
                                //   final value = int.tryParse(val);
                                //   ref
                                //       .read(attributeProvider.notifier)
                                //       .updateField('beds', value);
                                // },
                                   onSaved: (newValue) {
                                  
                                    ref
                                        .read(propertyAttributesModelDataProvider
                                            .notifier)
                                        .update((p) => p!.copyWith(
                                            propertyAttibuteDetails:
                                                PropertyAttributeDetails(
                                                    countEnsuites: int.tryParse(
                                                        ensuitesController.text))));
                                  }
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
                                  controller: livingAreasController,
                                //  initialValue: propertData.countBathrooms.toString(),
                                  // onChanged: (val) {
                                  //   ref.read(attributeProvider.notifier).updateField(
                                  //       'baths', int.tryParse(landAreaController.text));
                                  // },
                                  onSaved: (newValue) {
                                    // ref
                                    //   .read(propertyAttributeDetailsDataProvider
                                    //       .notifier)
                                    //   .update((p) => p!.copyWith(
                                    //       countBathrooms:
                                    //           int.parse(bathsController.text)));}
                                    ref
                                        .read(propertyAttributesModelDataProvider
                                            .notifier)
                                        .update((p) => p!.copyWith(
                                              propertyAttibuteDetails:
                                                  p.propertyAttibuteDetails?.copyWith(
                                                countLivingAreas: int.tryParse(
                                                    livingAreasController.text),
                                              ),
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
                                'Garage Space',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              12.verticalSpace,
                              CommonTextField(
                                  label: '0',
                                  controller: garageController,
                                        //   initialValue: propertData.countGarageSpace.toString(),
                                  onChanged: (val) {
                                    ref.read(attributeProvider.notifier).updateField(
                                        'garageSpace',
                                        int.tryParse(garageController.text));
                                  },
                                  onSaved: (newValue) {
                                  
                                    ref
                                        .read(propertyAttributesModelDataProvider
                                            .notifier)
                                        .update((p) => p!.copyWith(
                                            propertyAttibuteDetails:
                                                PropertyAttributeDetails(
                                                    countGarageSpace: int.tryParse(
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
                               //  initialValue: propertData.countToilets,
                                  onChanged: (val) {
                                    ref.read(attributeProvider.notifier).updateField(
                                        'toilets',
                                        int.tryParse(toiletsController.text));
                                  },
                                  onSaved: (newValue) {
                                    // ref
                                    //   .read(propertyAttributeDetailsDataProvider
                                    //       .notifier)
                                    //   .update((p) => p!.copyWith(
                                    //       countToilets:
                                    //           int.parse(toiletsController.text)));}
                                    ref
                                        .read(propertyAttributesModelDataProvider
                                            .notifier)
                                        .update((p) => p!.copyWith(
                                              propertyAttibuteDetails:
                                                  p.propertyAttibuteDetails?.copyWith(
                                                countToilets: int.tryParse(
                                                    toiletsController.text),
                                              ),
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
                                  controller: bedsController,
                             //    initialValue: propertData.countEnsuites,
                                  onChanged: (val) {
                                    ref.read(attributeProvider.notifier).updateField(
                                        'ensuites',
                                        int.tryParse(ensuitesController.text));
                                  },
                                  onSaved: (newValue) {
                                    // ref
                                    //   .read(propertyAttributeDetailsDataProvider
                                    //       .notifier)
                                    //   .update((p) => p!.copyWith(
                                    //       countEnsuites:
                                    //           int.parse(ensuitesController.text)));}
                                    ref
                                        .read(propertyAttributesModelDataProvider
                                            .notifier)
                                        .update((p) => p!.copyWith(
                                              propertyAttibuteDetails:
                                                  p.propertyAttibuteDetails?.copyWith(
                                                countEnsuites: int.tryParse(
                                                    ensuitesController.text),
                                              ),
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
                                  controller: bathsController,
                                    //    initialValue: propertData.countLivingAreas,
                                  onChanged: (val) {
                                    ref.read(attributeProvider.notifier).updateField(
                                        'livingAreas',
                                        int.tryParse(livingAreasController.text));
                                  },
                                  onSaved: (newValue) {
                                    // ref
                                    //   .read(propertyAttributeDetailsDataProvider
                                    //       .notifier)
                                    //   .update((p) => p!.copyWith(
                                    //       countLivingAreas:
                                    //           int.parse(livingAreasController.text)));}
                                    ref
                                        .read(propertyAttributesModelDataProvider
                                            .notifier)
                                        .update((p) => p!.copyWith(
                                              propertyAttibuteDetails:
                                                  p.propertyAttibuteDetails?.copyWith(
                                                countLivingAreas: int.tryParse(
                                                    livingAreasController.text),
                                              ),
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
                                  //      initialValue: propertData.countCarParking,
                                  onChanged: (val) {
                                    ref.read(attributeProvider.notifier).updateField(
                                        'carPorts',
                                        int.tryParse(carPortsController.text));
                                  },
                                  onSaved: (newValue) {
                                    //   ref
                                    //       .read(propertyAttributeDetailsDataProvider
                                    //           .notifier)
                                    //       .update((p) => p!.copyWith(
                                    //           countCarParking:
                                    //               int.parse(carPortsController.text)));
                                    // }
                
                                    ref
                                        .read(propertyAttributesModelDataProvider
                                            .notifier)
                                        .update((p) => p!.copyWith(
                                              propertyAttibuteDetails:
                                                  p.propertyAttibuteDetails?.copyWith(
                                                countCarParking: int.tryParse(
                                                    carPortsController.text),
                                              ),
                                            ));
                                  })
                            ],
                          ),
                        ),
                        18.horizontalSpace,
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text(
                              //   'Land Area',
                              //   style: Theme.of(context).textTheme.bodyLarge,
                              // ),
                              // 12.verticalSpace,
                              // CommonTextField(
                              //     label: '0',
                              //     controller: landAreaController,
                              //     onChanged: (val) {
                              //       ref.read(attributeProvider.notifier).updateField(
                              //           'landArea',
                              //           int.parse(landAreaController.text));
                              //     },
                              //     onSaved: (newValue) {
                              //       ref
                              //           .read(propertyAttributeDetailsDataProvider
                              //               .notifier)
                              //           .update((p) => p!.copyWith(
                              //               countLivingAreas:
                              //                   int.parse(landAreaController.text)));
                              //     })
                            ],
                          ),
                        ),
                      ],
                    ),
                    24.verticalSpace,
                    const Divider(
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
                      const [
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
                      // selectedItems: attribute.outdoorFeatures ?? [],
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
                    const Divider(
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
                      const [
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
                      // selectedItems: attribute.indoorFeatures ?? [],
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
                    const Divider(
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
                      const [
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
                      //  selectedItems: attribute.heatingCooling ?? [],
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
                    const Divider(
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
                      const [
                        'Grey Water System',
                        'Solar Hot Water',
                        'Solar Panels',
                        'Water Tank',
                      ],
                      //  selectedItems: attribute.ecoFriendlyFeatures ?? [],
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
                    // if (isEdit)
                    //   ElevatedButton(
                    //       style: ElevatedButton.styleFrom(
                    //         backgroundColor: const Color(0xFF164C63),
                    //         foregroundColor: Colors.white,
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(38),
                    //         ),
                    //       ),
                    //       onPressed: () {},
                    //       child: Text('Save')),
                    // 24.verticalSpace,
                  ],
                ),
              ),
              Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, -3),
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
            ],
          ),
        ),
      ),
 
    );
  }
}
