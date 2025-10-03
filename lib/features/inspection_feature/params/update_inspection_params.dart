import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_inspection_params.freezed.dart';
part 'update_inspection_params.g.dart';

@freezed
abstract class UpdateInspectionParams with _$UpdateInspectionParams {
  const factory UpdateInspectionParams({
    required int InspectionId,
    required int TemplateId,
    required List<SelectedAttribute> SelectedAttributeList,
    required String TemplateNotes,
    required List<dynamic> AddUpdatePictures,
  }) = _UpdateInspectionParams;

  factory UpdateInspectionParams.fromJson(Map<String, dynamic> json) => _$UpdateInspectionParamsFromJson(json);

  factory UpdateInspectionParams.empty() =>  const UpdateInspectionParams(
    InspectionId: 0,
    TemplateId: 0,
    SelectedAttributeList: [],
    TemplateNotes: '',
    AddUpdatePictures: [],
      );
}

@freezed
abstract class SelectedAttribute with _$SelectedAttribute {
  const factory SelectedAttribute({
    required int Id,
    required bool Cleaned,
    required bool Undermanaged,
    required bool Working,
     dynamic AgentComment,
     dynamic TenantComment,
     dynamic IsTenantAgree,
     dynamic CleanedByTenant,
     dynamic WorkingByTenant,
     dynamic UndermanagedByTenant,
    required List<Map<String,dynamic>> AddUpdatePictures,
  }) = _SelectedAttribute;

  factory SelectedAttribute.fromJson(Map<String, dynamic> json) => _$SelectedAttributeFromJson(json);
}

