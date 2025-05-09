import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attributes_params.freezed.dart';
part 'attributes_params.g.dart';

@freezed
class PropertyAttributesModel with _$PropertyAttributesModel {
  factory PropertyAttributesModel({
    @JsonKey(name: "PropertyId")  int? propertyId,
    @JsonKey(name: "UserId") @Default(2) int userId,
    @JsonKey(name: "PropertyAttibuteDetails") PropertyAttributeDetails? propertyAttibuteDetails,
    @JsonKey(name: "PropertyFeaturesOutdoorDetails") PropertyFeaturesOutdoorDetails? propertyFeaturesOutdoorDetails,
    @JsonKey(name: "PropertyFeaturesIndoorDetails") PropertyFeaturesIndoorDetails? propertyFeaturesIndoorDetails,
    @JsonKey(name: "PropertyFeaturesHeatCoolDetails") PropertyFeaturesHeatCoolDetails? propertyFeaturesHeatCoolDetails,
    @JsonKey(name: "PropertyEcoFriendlyFeaturesDetails") PropertyEcoFriendlyFeaturesDetails? propertyEcoFriendlyFeaturesDetails,
    @JsonKey(name: "LoggedUserId") @Default(2) int loggedUserId,
  }) = _PropertyAttributesModel;

  factory PropertyAttributesModel.fromJson(Map<String, dynamic> json) =>
      _$PropertyAttributesModelFromJson(json);

      
}

@freezed
class PropertyAttributeDetails with _$PropertyAttributeDetails {
  factory PropertyAttributeDetails({
    @JsonKey(name: "PropertyLandAreaL")  @Default(4000) int propertyLandAreaL,
    @JsonKey(name: "PropertyLandAreaW") @Default(1) int? propertyLandAreaW,
    @JsonKey(name: "CountBedrooms") int? countBedrooms,
    @JsonKey(name: "CountBathrooms") int? countBathrooms,
    @JsonKey(name: "CountCarParking") int? countCarParking,
    @JsonKey(name: "CountEnsuites") int? countEnsuites,
    @JsonKey(name: "CountGarageSpace") int? countGarageSpace,
    @JsonKey(name: "CountLivingAreas") int? countLivingAreas,
    @JsonKey(name: "CountToilets") int? countToilets,
    @JsonKey(name: "Coutryard") bool? coutryard,
  }) = _PropertyAttributeDetails;

  factory PropertyAttributeDetails.fromJson(Map<String, dynamic> json) =>
      _$PropertyAttributeDetailsFromJson(json);

      
}

@freezed
class PropertyFeaturesOutdoorDetails with _$PropertyFeaturesOutdoorDetails {
  factory PropertyFeaturesOutdoorDetails({
    @JsonKey(name: "Balcony") bool? balcony,
    @JsonKey(name: "Deck") bool? deck,
    @JsonKey(name: "OutdoorEntertainmentArea") bool? outdoorEntertainmentArea,
    @JsonKey(name: "RemoteGarage") bool? remoteGarage,
    @JsonKey(name: "Shed") bool? shed,
    @JsonKey(name: "SwimmingPoolInGround") bool? swimmingPoolInGround,
    @JsonKey(name: "FullyFenced") bool? fullyFenced,
    @JsonKey(name: "OutsideSpa") bool? outsideSpa,
    @JsonKey(name: "SecureParking") bool? secureParking,
    @JsonKey(name: "SwimmmingPoolAboveGround") bool? SwimmmingPoolAboveGround,
    @JsonKey(name: "TennisCourt") bool? tennisCourt,
  }) = _PropertyFeaturesOutdoorDetails;

  factory PropertyFeaturesOutdoorDetails.fromJson(Map<String, dynamic> json) =>
      _$PropertyFeaturesOutdoorDetailsFromJson(json);
}



@freezed
class PropertyFeaturesIndoorDetails with _$PropertyFeaturesIndoorDetails {
  factory PropertyFeaturesIndoorDetails({
    @JsonKey(name: "AlarmSystem") bool? alarmSystem,
    @JsonKey(name: "BuiltInWardrobes") bool? builtInWardrobes,
    @JsonKey(name: "DuctedVacuumSystem") bool? ductedVacuumSystem,
    @JsonKey(name: "Gym") bool? gym,
    @JsonKey(name: "Intercom") bool? intercom,
    @JsonKey(name: "RumpusRoom") bool? rumpusRoom,
    @JsonKey(name: "Workshop") bool? workshop,
    @JsonKey(name: "BroadbandInternetAvailable") bool? broadbandInternetAvailable,
    @JsonKey(name: "Dishwasher") bool? dishwasher,
    @JsonKey(name: "Floorboards") bool? floorboards,
    @JsonKey(name: "InsideSpa") bool? insideSpa,
    @JsonKey(name: "PayTvaccess") bool? payTvaccess,
    @JsonKey(name: "Study") bool? study,
  }) = _PropertyFeaturesIndoorDetails;

  factory PropertyFeaturesIndoorDetails.fromJson(Map<String, dynamic> json) =>
      _$PropertyFeaturesIndoorDetailsFromJson(json);
}

@freezed
class PropertyFeaturesHeatCoolDetails with _$PropertyFeaturesHeatCoolDetails {
  factory PropertyFeaturesHeatCoolDetails({
    @JsonKey(name: "AirConditioning") bool? airConditioning,
    @JsonKey(name: "DuctedHeating") bool? ductedHeating,
    @JsonKey(name: "GasHeating") bool? gasHeating,
    @JsonKey(name: "OpenFireplace") bool? openFireplace,
    @JsonKey(name: "SplitSystemAirConditioning") bool? splitSystemAirConditioning,
    @JsonKey(name: "DuctedCooling") bool? ductedCooling,
    @JsonKey(name: "EvaporativeCooling") bool? evaporativeCooling,
    @JsonKey(name: "HydraulicHeating") bool? hydraulicHeating,
    @JsonKey(name: "ReverseCycleAirConditioning") bool? reverseCycleAirConditioning,
    @JsonKey(name: "SplitSystemHeating") bool? splitSystemHeating,
  }) = _PropertyFeaturesHeatCoolDetails;

  factory PropertyFeaturesHeatCoolDetails.fromJson(Map<String, dynamic> json) =>
      _$PropertyFeaturesHeatCoolDetailsFromJson(json);
}

@freezed
class PropertyEcoFriendlyFeaturesDetails with _$PropertyEcoFriendlyFeaturesDetails {
  factory PropertyEcoFriendlyFeaturesDetails({
    @JsonKey(name: "WaterTank") bool? waterTank,
    @JsonKey(name: "GreyWaterSystem") bool? greyWaterSystem,
    @JsonKey(name: "SolarPanels") bool? solarPanels,
    @JsonKey(name: "SolarHotWater") bool? solarHotWater,
  }) = _PropertyEcoFriendlyFeaturesDetails;

  factory PropertyEcoFriendlyFeaturesDetails.fromJson(Map<String, dynamic> json) =>
      _$PropertyEcoFriendlyFeaturesDetailsFromJson(json);
}


@Riverpod(keepAlive: true)
class PropertyAttributesModelData extends _$PropertyAttributesModelData {
  @override
  PropertyAttributesModel build() {
    return  PropertyAttributesModel();
  }

  void update(PropertyAttributesModel Function(PropertyAttributesModel? p) updateParam) {
    state = updateParam(state);
  }
}

@Riverpod(keepAlive: true)
class PropertyAttributeDetailsData extends _$PropertyAttributeDetailsData {
  @override
  PropertyAttributeDetails build() {
    return  PropertyAttributeDetails();
  }

  void update(PropertyAttributeDetails Function(PropertyAttributeDetails? p) updateParam) {
   final updated = updateParam(state);
  if (updated != state) {
    state = updated;
  }
  }
}

@Riverpod(keepAlive: true)
class PropertyFeaturesOutdoorDetailsData extends _$PropertyFeaturesOutdoorDetailsData {
  @override
  PropertyFeaturesOutdoorDetails build() {
    return  PropertyFeaturesOutdoorDetails();
  }

  void update(PropertyFeaturesOutdoorDetails Function(PropertyFeaturesOutdoorDetails? p) updateParam) {
    state = updateParam(state);
  }
}

@Riverpod(keepAlive: true)
class PropertyFeaturesIndoorDetailsData extends _$PropertyFeaturesIndoorDetailsData {
  @override
  PropertyFeaturesIndoorDetails build() {
    return  PropertyFeaturesIndoorDetails();
  }

  void update(PropertyFeaturesIndoorDetails Function(PropertyFeaturesIndoorDetails? p) updateParam) {
    state = updateParam(state);
  }
}

@Riverpod(keepAlive: true)
class PropertyFeaturesHeatCoolDetailsData extends _$PropertyFeaturesHeatCoolDetailsData {
  @override
  PropertyFeaturesHeatCoolDetails build() {
    return  PropertyFeaturesHeatCoolDetails();
  }

  void update(PropertyFeaturesHeatCoolDetails Function(PropertyFeaturesHeatCoolDetails? p) updateParam) {
    state = updateParam(state);
  }
}

@Riverpod(keepAlive: true)
class PropertyEcoFriendlyFeaturesDetailsData extends _$PropertyEcoFriendlyFeaturesDetailsData {
  @override
  PropertyEcoFriendlyFeaturesDetails build() {
    return  PropertyEcoFriendlyFeaturesDetails();
  }

  void update(PropertyEcoFriendlyFeaturesDetails Function(PropertyEcoFriendlyFeaturesDetails? p) updateParam) {
    state = updateParam(state);
  }
}