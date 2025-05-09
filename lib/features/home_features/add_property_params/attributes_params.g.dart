// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyAttributesModelImpl _$$PropertyAttributesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyAttributesModelImpl(
      propertyId: (json['PropertyId'] as num?)?.toInt(),
      userId: (json['UserId'] as num?)?.toInt() ?? 2,
      propertyAttibuteDetails: json['PropertyAttibuteDetails'] == null
          ? null
          : PropertyAttributeDetails.fromJson(
              json['PropertyAttibuteDetails'] as Map<String, dynamic>),
      propertyFeaturesOutdoorDetails: json['PropertyFeaturesOutdoorDetails'] ==
              null
          ? null
          : PropertyFeaturesOutdoorDetails.fromJson(
              json['PropertyFeaturesOutdoorDetails'] as Map<String, dynamic>),
      propertyFeaturesIndoorDetails: json['PropertyFeaturesIndoorDetails'] ==
              null
          ? null
          : PropertyFeaturesIndoorDetails.fromJson(
              json['PropertyFeaturesIndoorDetails'] as Map<String, dynamic>),
      propertyFeaturesHeatCoolDetails:
          json['PropertyFeaturesHeatCoolDetails'] == null
              ? null
              : PropertyFeaturesHeatCoolDetails.fromJson(
                  json['PropertyFeaturesHeatCoolDetails']
                      as Map<String, dynamic>),
      propertyEcoFriendlyFeaturesDetails:
          json['PropertyEcoFriendlyFeaturesDetails'] == null
              ? null
              : PropertyEcoFriendlyFeaturesDetails.fromJson(
                  json['PropertyEcoFriendlyFeaturesDetails']
                      as Map<String, dynamic>),
      loggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$PropertyAttributesModelImplToJson(
        _$PropertyAttributesModelImpl instance) =>
    <String, dynamic>{
      'PropertyId': instance.propertyId,
      'UserId': instance.userId,
      'PropertyAttibuteDetails': instance.propertyAttibuteDetails,
      'PropertyFeaturesOutdoorDetails': instance.propertyFeaturesOutdoorDetails,
      'PropertyFeaturesIndoorDetails': instance.propertyFeaturesIndoorDetails,
      'PropertyFeaturesHeatCoolDetails':
          instance.propertyFeaturesHeatCoolDetails,
      'PropertyEcoFriendlyFeaturesDetails':
          instance.propertyEcoFriendlyFeaturesDetails,
      'LoggedUserId': instance.loggedUserId,
    };

_$PropertyAttributeDetailsImpl _$$PropertyAttributeDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyAttributeDetailsImpl(
      propertyLandAreaL: (json['PropertyLandAreaL'] as num?)?.toInt(),
      propertyLandAreaW: (json['PropertyLandAreaW'] as num?)?.toInt(),
      countBedrooms: (json['CountBedrooms'] as num?)?.toInt(),
      countBathrooms: (json['CountBathrooms'] as num?)?.toInt(),
      countCarParking: (json['CountCarParking'] as num?)?.toInt(),
      countEnsuites: (json['CountEnsuites'] as num?)?.toInt(),
      countGarageSpace: (json['CountGarageSpace'] as num?)?.toInt(),
      countLivingAreas: (json['CountLivingAreas'] as num?)?.toInt(),
      countToilets: (json['CountToilets'] as num?)?.toInt(),
      coutryard: json['Coutryard'] as bool?,
    );

Map<String, dynamic> _$$PropertyAttributeDetailsImplToJson(
        _$PropertyAttributeDetailsImpl instance) =>
    <String, dynamic>{
      'PropertyLandAreaL': instance.propertyLandAreaL,
      'PropertyLandAreaW': instance.propertyLandAreaW,
      'CountBedrooms': instance.countBedrooms,
      'CountBathrooms': instance.countBathrooms,
      'CountCarParking': instance.countCarParking,
      'CountEnsuites': instance.countEnsuites,
      'CountGarageSpace': instance.countGarageSpace,
      'CountLivingAreas': instance.countLivingAreas,
      'CountToilets': instance.countToilets,
      'Coutryard': instance.coutryard,
    };

_$PropertyFeaturesOutdoorDetailsImpl
    _$$PropertyFeaturesOutdoorDetailsImplFromJson(Map<String, dynamic> json) =>
        _$PropertyFeaturesOutdoorDetailsImpl(
          balcony: json['Balcony'] as bool?,
          deck: json['Deck'] as bool?,
          outdoorEntertainmentArea: json['OutdoorEntertainmentArea'] as bool?,
          remoteGarage: json['RemoteGarage'] as bool?,
          shed: json['Shed'] as bool?,
          swimmingPoolInGround: json['SwimmingPoolInGround'] as bool?,
          fullyFenced: json['FullyFenced'] as bool?,
          outsideSpa: json['OutsideSpa'] as bool?,
          secureParking: json['SecureParking'] as bool?,
          SwimmmingPoolAboveGround: json['SwimmmingPoolAboveGround'] as bool?,
          tennisCourt: json['TennisCourt'] as bool?,
        );

Map<String, dynamic> _$$PropertyFeaturesOutdoorDetailsImplToJson(
        _$PropertyFeaturesOutdoorDetailsImpl instance) =>
    <String, dynamic>{
      'Balcony': instance.balcony,
      'Deck': instance.deck,
      'OutdoorEntertainmentArea': instance.outdoorEntertainmentArea,
      'RemoteGarage': instance.remoteGarage,
      'Shed': instance.shed,
      'SwimmingPoolInGround': instance.swimmingPoolInGround,
      'FullyFenced': instance.fullyFenced,
      'OutsideSpa': instance.outsideSpa,
      'SecureParking': instance.secureParking,
      'SwimmmingPoolAboveGround': instance.SwimmmingPoolAboveGround,
      'TennisCourt': instance.tennisCourt,
    };

_$PropertyFeaturesIndoorDetailsImpl
    _$$PropertyFeaturesIndoorDetailsImplFromJson(Map<String, dynamic> json) =>
        _$PropertyFeaturesIndoorDetailsImpl(
          alarmSystem: json['AlarmSystem'] as bool?,
          builtInWardrobes: json['BuiltInWardrobes'] as bool?,
          ductedVacuumSystem: json['DuctedVacuumSystem'] as bool?,
          gym: json['Gym'] as bool?,
          intercom: json['Intercom'] as bool?,
          rumpusRoom: json['RumpusRoom'] as bool?,
          workshop: json['Workshop'] as bool?,
          broadbandInternetAvailable:
              json['BroadbandInternetAvailable'] as bool?,
          dishwasher: json['Dishwasher'] as bool?,
          floorboards: json['Floorboards'] as bool?,
          insideSpa: json['InsideSpa'] as bool?,
          payTvaccess: json['PayTvaccess'] as bool?,
          study: json['Study'] as bool?,
        );

Map<String, dynamic> _$$PropertyFeaturesIndoorDetailsImplToJson(
        _$PropertyFeaturesIndoorDetailsImpl instance) =>
    <String, dynamic>{
      'AlarmSystem': instance.alarmSystem,
      'BuiltInWardrobes': instance.builtInWardrobes,
      'DuctedVacuumSystem': instance.ductedVacuumSystem,
      'Gym': instance.gym,
      'Intercom': instance.intercom,
      'RumpusRoom': instance.rumpusRoom,
      'Workshop': instance.workshop,
      'BroadbandInternetAvailable': instance.broadbandInternetAvailable,
      'Dishwasher': instance.dishwasher,
      'Floorboards': instance.floorboards,
      'InsideSpa': instance.insideSpa,
      'PayTvaccess': instance.payTvaccess,
      'Study': instance.study,
    };

_$PropertyFeaturesHeatCoolDetailsImpl
    _$$PropertyFeaturesHeatCoolDetailsImplFromJson(Map<String, dynamic> json) =>
        _$PropertyFeaturesHeatCoolDetailsImpl(
          airConditioning: json['AirConditioning'] as bool?,
          ductedHeating: json['DuctedHeating'] as bool?,
          gasHeating: json['GasHeating'] as bool?,
          openFireplace: json['OpenFireplace'] as bool?,
          splitSystemAirConditioning:
              json['SplitSystemAirConditioning'] as bool?,
          ductedCooling: json['DuctedCooling'] as bool?,
          evaporativeCooling: json['EvaporativeCooling'] as bool?,
          hydraulicHeating: json['HydraulicHeating'] as bool?,
          reverseCycleAirConditioning:
              json['ReverseCycleAirConditioning'] as bool?,
          splitSystemHeating: json['SplitSystemHeating'] as bool?,
        );

Map<String, dynamic> _$$PropertyFeaturesHeatCoolDetailsImplToJson(
        _$PropertyFeaturesHeatCoolDetailsImpl instance) =>
    <String, dynamic>{
      'AirConditioning': instance.airConditioning,
      'DuctedHeating': instance.ductedHeating,
      'GasHeating': instance.gasHeating,
      'OpenFireplace': instance.openFireplace,
      'SplitSystemAirConditioning': instance.splitSystemAirConditioning,
      'DuctedCooling': instance.ductedCooling,
      'EvaporativeCooling': instance.evaporativeCooling,
      'HydraulicHeating': instance.hydraulicHeating,
      'ReverseCycleAirConditioning': instance.reverseCycleAirConditioning,
      'SplitSystemHeating': instance.splitSystemHeating,
    };

_$PropertyEcoFriendlyFeaturesDetailsImpl
    _$$PropertyEcoFriendlyFeaturesDetailsImplFromJson(
            Map<String, dynamic> json) =>
        _$PropertyEcoFriendlyFeaturesDetailsImpl(
          waterTank: json['WaterTank'] as bool?,
          greyWaterSystem: json['GreyWaterSystem'] as bool?,
          solarPanels: json['SolarPanels'] as bool?,
          solarHotWater: json['SolarHotWater'] as bool?,
        );

Map<String, dynamic> _$$PropertyEcoFriendlyFeaturesDetailsImplToJson(
        _$PropertyEcoFriendlyFeaturesDetailsImpl instance) =>
    <String, dynamic>{
      'WaterTank': instance.waterTank,
      'GreyWaterSystem': instance.greyWaterSystem,
      'SolarPanels': instance.solarPanels,
      'SolarHotWater': instance.solarHotWater,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$propertyAttributesModelDataHash() =>
    r'487b587149f906e31e2c78069ceb8e71e5304543';

/// See also [PropertyAttributesModelData].
@ProviderFor(PropertyAttributesModelData)
final propertyAttributesModelDataProvider = NotifierProvider<
    PropertyAttributesModelData, PropertyAttributesModel>.internal(
  PropertyAttributesModelData.new,
  name: r'propertyAttributesModelDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$propertyAttributesModelDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PropertyAttributesModelData = Notifier<PropertyAttributesModel>;
String _$propertyAttributeDetailsDataHash() =>
    r'2c212633a9339a678a6faa21ab8440999860b8b0';

/// See also [PropertyAttributeDetailsData].
@ProviderFor(PropertyAttributeDetailsData)
final propertyAttributeDetailsDataProvider = NotifierProvider<
    PropertyAttributeDetailsData, PropertyAttributeDetails>.internal(
  PropertyAttributeDetailsData.new,
  name: r'propertyAttributeDetailsDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$propertyAttributeDetailsDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PropertyAttributeDetailsData = Notifier<PropertyAttributeDetails>;
String _$propertyFeaturesOutdoorDetailsDataHash() =>
    r'e3a380fec9042e8977b4032805f74e4fe09fc89c';

/// See also [PropertyFeaturesOutdoorDetailsData].
@ProviderFor(PropertyFeaturesOutdoorDetailsData)
final propertyFeaturesOutdoorDetailsDataProvider = NotifierProvider<
    PropertyFeaturesOutdoorDetailsData,
    PropertyFeaturesOutdoorDetails>.internal(
  PropertyFeaturesOutdoorDetailsData.new,
  name: r'propertyFeaturesOutdoorDetailsDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$propertyFeaturesOutdoorDetailsDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PropertyFeaturesOutdoorDetailsData
    = Notifier<PropertyFeaturesOutdoorDetails>;
String _$propertyFeaturesIndoorDetailsDataHash() =>
    r'6ba983fda8958cd9b8239b65e7760236b829eb01';

/// See also [PropertyFeaturesIndoorDetailsData].
@ProviderFor(PropertyFeaturesIndoorDetailsData)
final propertyFeaturesIndoorDetailsDataProvider = NotifierProvider<
    PropertyFeaturesIndoorDetailsData, PropertyFeaturesIndoorDetails>.internal(
  PropertyFeaturesIndoorDetailsData.new,
  name: r'propertyFeaturesIndoorDetailsDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$propertyFeaturesIndoorDetailsDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PropertyFeaturesIndoorDetailsData
    = Notifier<PropertyFeaturesIndoorDetails>;
String _$propertyFeaturesHeatCoolDetailsDataHash() =>
    r'69b60436949ebbb9abec060b6178325a77eef24a';

/// See also [PropertyFeaturesHeatCoolDetailsData].
@ProviderFor(PropertyFeaturesHeatCoolDetailsData)
final propertyFeaturesHeatCoolDetailsDataProvider = NotifierProvider<
    PropertyFeaturesHeatCoolDetailsData,
    PropertyFeaturesHeatCoolDetails>.internal(
  PropertyFeaturesHeatCoolDetailsData.new,
  name: r'propertyFeaturesHeatCoolDetailsDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$propertyFeaturesHeatCoolDetailsDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PropertyFeaturesHeatCoolDetailsData
    = Notifier<PropertyFeaturesHeatCoolDetails>;
String _$propertyEcoFriendlyFeaturesDetailsDataHash() =>
    r'9326e1df29cee1ddb028be98b97bc4d3aaad2eb5';

/// See also [PropertyEcoFriendlyFeaturesDetailsData].
@ProviderFor(PropertyEcoFriendlyFeaturesDetailsData)
final propertyEcoFriendlyFeaturesDetailsDataProvider = NotifierProvider<
    PropertyEcoFriendlyFeaturesDetailsData,
    PropertyEcoFriendlyFeaturesDetails>.internal(
  PropertyEcoFriendlyFeaturesDetailsData.new,
  name: r'propertyEcoFriendlyFeaturesDetailsDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$propertyEcoFriendlyFeaturesDetailsDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PropertyEcoFriendlyFeaturesDetailsData
    = Notifier<PropertyEcoFriendlyFeaturesDetails>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
