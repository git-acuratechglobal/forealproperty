import 'package:json_annotation/json_annotation.dart';

part 'active_agent_model.g.dart';

@JsonSerializable(createToJson: false)
class ActiveAgentModel {
  ActiveAgentModel({
    required this.disabled,
    required this.group,
    required this.selected,
    required this.text,
    required this.value,
  });

  final bool? disabled;
  final dynamic group;
  final bool? selected;
  final String? text;
  final String? value;

  factory ActiveAgentModel.fromJson(Map<String, dynamic> json) => _$ActiveAgentModelFromJson(json);

}
