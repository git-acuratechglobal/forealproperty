import 'package:flutter_riverpod/flutter_riverpod.dart';


class AttributeModel {
  // Basic Details (Integer Fields)
  int? beds;
  int? baths;
  int? garageSpace;
  int? toilets;
  int? ensuites;
  int? livingAreas;
  int? carPorts;
  int? landArea; // leave landArea as String

  // Optional Features (List Fields)
  List<String>? outdoorFeatures;
  List<String>? indoorFeatures;
  List<String>? heatingCooling;
  List<String>? ecoFriendlyFeatures;

  AttributeModel({
    this.beds,
    this.baths,
    this.garageSpace,
    this.toilets,
    this.ensuites,
    this.livingAreas,
    this.carPorts,
    this.landArea,
    this.outdoorFeatures,
    this.indoorFeatures,
    this.heatingCooling,
    this.ecoFriendlyFeatures,
  });

  AttributeModel copyWith({
    int? beds,
    int? baths,
    int? garageSpace,
    int? toilets,
    int? ensuites,
    int? livingAreas,
    int? carPorts,
    int? landArea,
    List<String>? outdoorFeatures,
    List<String>? indoorFeatures,
    List<String>? heatingCooling,
    List<String>? ecoFriendlyFeatures,
  }) {
    return AttributeModel(
      beds: beds ?? this.beds,
      baths: baths ?? this.baths,
      garageSpace: garageSpace ?? this.garageSpace,
      toilets: toilets ?? this.toilets,
      ensuites: ensuites ?? this.ensuites,
      livingAreas: livingAreas ?? this.livingAreas,
      carPorts: carPorts ?? this.carPorts,
      landArea: landArea ?? this.landArea,
      outdoorFeatures: outdoorFeatures ?? this.outdoorFeatures,
      indoorFeatures: indoorFeatures ?? this.indoorFeatures,
      heatingCooling: heatingCooling ?? this.heatingCooling,
      ecoFriendlyFeatures: ecoFriendlyFeatures ?? this.ecoFriendlyFeatures,
    );
  }
}


class AttributeNotifier extends StateNotifier<AttributeModel> {
  AttributeNotifier() : super(AttributeModel());

  void updateField(String key, dynamic value) {
    switch (key) {
      case 'beds':
        state = state.copyWith(beds: _parseToInt(value));
        break;
      case 'baths':
        state = state.copyWith(baths: _parseToInt(value));
        break;
      case 'garageSpace':
        state = state.copyWith(garageSpace: _parseToInt(value));
        break;
      case 'toilets':
        state = state.copyWith(toilets: _parseToInt(value));
        break;
      case 'ensuites':
        state = state.copyWith(ensuites: _parseToInt(value));
        break;
      case 'livingAreas':
        state = state.copyWith(livingAreas: _parseToInt(value));
        break;
      case 'carPorts':
        state = state.copyWith(carPorts: _parseToInt(value));
        break;
      case 'landArea':
        state = state.copyWith(landArea: _parseToInt(value));  // Leave landArea as String
        break;
      case 'outdoorFeatures':
        state = state.copyWith(outdoorFeatures: value as List<String>?);
        break;
      case 'indoorFeatures':
        state = state.copyWith(indoorFeatures: value as List<String>?);
        break;
      case 'heatingCooling':
        state = state.copyWith(heatingCooling: value as List<String>?);
        break;
      case 'ecoFriendlyFeatures':
        state = state.copyWith(ecoFriendlyFeatures: value as List<String>?);
        break;
    }
  }

  // Helper method to parse String to int
  int? _parseToInt(dynamic value) {
    if (value is String) {
      return int.tryParse(value);
    }
    return value as int?;
  }
}



final attributeProvider = StateNotifierProvider<AttributeNotifier, AttributeModel>((ref) {
  return AttributeNotifier();
});
