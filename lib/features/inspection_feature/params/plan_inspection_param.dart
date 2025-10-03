import 'package:freezed_annotation/freezed_annotation.dart';
part 'plan_inspection_param.freezed.dart';
part 'plan_inspection_param.g.dart';

@freezed
class PlanInspectionParams with _$PlanInspectionParams {
  const factory PlanInspectionParams({
    int? InspectionType,
    DateTime? InspectionDate,
    int? AssignedAgent,
    @Default(1)
    int? AgencyId,
    List<PropertyDetail>? PropertyDetails,
    @Default(2) int? LoggedUserId,
  }) = _PlanInspectionParams;

  factory PlanInspectionParams.fromJson(Map<String, dynamic> json) =>
      _$PlanInspectionParamsFromJson(json);
}

@freezed
class PropertyDetail with _$PropertyDetail {
  const factory PropertyDetail({
    int? PropertyId,
    DateTime? StartTime,
    DateTime? EndTime,
  }) = _PropertyDetail;

  factory PropertyDetail.fromJson(Map<String, dynamic> json) =>
      _$PropertyDetailFromJson(json);
}
