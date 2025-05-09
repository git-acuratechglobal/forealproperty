import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_property_model.freezed.dart';
part 'add_property_model.g.dart';

@freezed
class AddPropertyModel with _$AddPropertyModel{
  const factory AddPropertyModel({
    int? id,                   // Maps to 'id'
    String? sUID,               // Maps to 'sUID'
    String? pUID,               // Maps to 'pUID'
    int? viewMode,              // Maps to 'viewMode'
    bool? hasError,             // Maps to 'hasError'
    String? message,            // Maps to 'message'
    int? status,                // Maps to 'status'
    dynamic ss,                 // Maps to 'ss'
    bool? doNestedAction,       // Maps to 'doNestedAction'
  }) = _AddPropertyModel;

  factory AddPropertyModel.fromJson(Map<String, dynamic> json) => _$AddPropertyModelFromJson(json);
}

@freezed
class AddProperty with _$AddProperty{
  const factory AddProperty({
    int? userId,
    DateTime? createdAt,
    int? userRoleId,
    String? userRoleLabel,
    bool? isActive,
  }) = _AddProperty;

  factory AddProperty.fromJson(Map<String, dynamic> json) => _$AddPropertyFromJson(json);
}
