import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_template_param.freezed.dart';
part 'add_template_param.g.dart';

@freezed
abstract class AddTemplateParams with _$AddTemplateParams {
  const factory AddTemplateParams({
    required String Attribute,
    required String AttributeLabel,
  }) = _AddTemplateParams;

  factory AddTemplateParams.fromJson(Map<String, dynamic> json) =>
      _$AddTemplateParamsFromJson(json);

  factory AddTemplateParams.empty() => const AddTemplateParams(
        Attribute: "",
        AttributeLabel: "",
      );
}

@freezed
abstract class TemplateState with _$TemplateState {
  const factory TemplateState({
    String? response,
    required TemplateEvent event,
  }) = _TemplateState;
}

enum TemplateEvent { add, delete }

@freezed
abstract class SubTemplateState with _$SubTemplateState {
  const factory SubTemplateState({
    String? response,
    required SubTemplateEvent event,
  }) = _SubTemplateState;
}

enum SubTemplateEvent { add, delete }
