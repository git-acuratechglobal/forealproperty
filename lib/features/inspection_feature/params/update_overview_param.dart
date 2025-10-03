import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_overview_param.freezed.dart';
part 'update_overview_param.g.dart';

@freezed
sealed class UpdateOverviewParam with _$UpdateOverviewParam {
  const factory UpdateOverviewParam({
    required int Id,
    @Default("") String Summary,
    required String AssignedAgent,
    int? TenantFolioId,
    @Default("") String Label,
  }) = _UpdateOverviewParam;

  factory UpdateOverviewParam.fromJson(Map<String, dynamic> json) =>
      _$UpdateOverviewParamFromJson(json);

  factory UpdateOverviewParam.empty() => const UpdateOverviewParam(
        Id: 0,
        Summary: '',
        AssignedAgent: "1",
        TenantFolioId: null,
        Label: '',
      );
}
