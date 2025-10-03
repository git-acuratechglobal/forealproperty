import 'package:json_annotation/json_annotation.dart';

part 'sub_template_model.g.dart';

@JsonSerializable(createToJson: false)
class SubTemplateModel {
  SubTemplateModel({
    required this.templateId,
    required this.selectedFacilities,
    required this.facilities,
  });

  final int? templateId;
  final List<int>? selectedFacilities;
  final List<Facility>? facilities;

  factory SubTemplateModel.fromJson(Map<String, dynamic> json) =>
      _$SubTemplateModelFromJson(json);

  List<Facility> get optimizedList {
    return facilities
            ?.where((element) => selectedFacilities!.contains(element.id))
            .toList() ??
        [];
  }
}

@JsonSerializable(createToJson: false)
class Facility {
  Facility({
    required this.id,
    required this.facility,
  });

  final int? id;
  final String? facility;

  factory Facility.fromJson(Map<String, dynamic> json) =>
      _$FacilityFromJson(json);
}
