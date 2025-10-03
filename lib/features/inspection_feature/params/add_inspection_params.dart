import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_inspection_params.freezed.dart';
part 'add_inspection_params.g.dart';

@freezed
abstract class AddInspectionParams with _$AddInspectionParams {
  const factory AddInspectionParams({
    required int CreatedBy,
    required int InspectionType,
    required int PropertyId,
    required String InspectionDate,
    required String StartTime,
    required String EndTime,
    required String Summary,
    @Default(1)  int AssignedAgent,
    required int AgencyId,
    required int? LoggedUserId,
    @Default("") String AssignedTo,
  }) = _AddInspectionParams;

  factory AddInspectionParams.fromJson(Map<String, dynamic> json) =>
      _$AddInspectionParamsFromJson(json);

  factory AddInspectionParams.empty() => const AddInspectionParams(
      CreatedBy: 0,
      InspectionType: 0,
      PropertyId: 0,
      InspectionDate: '',
      StartTime: '',
      EndTime: '',
      Summary: '',
      AssignedAgent: 1,
      AgencyId: 0,
      LoggedUserId: 0);
}
