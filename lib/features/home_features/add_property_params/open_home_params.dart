import 'package:foreal_property/features/home_features/models/get_property_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'open_home_params.freezed.dart';
part 'open_home_params.g.dart';

@freezed
class OpenHomeParams with _$OpenHomeParams {
  const factory OpenHomeParams({
    @JsonKey(name: "PropertyId") int? propertyId,
    @JsonKey(name: "StartTime") String? startTime,
    @JsonKey(name: "EndTime") String? endTime,
    @JsonKey(name: "OpenHomeuniqueId") String? openHomeuniqueId,
    @JsonKey(name: "EventDate") String? eventDate,
    @JsonKey(name: "CreatedBy") @Default(1) int createdBy,
    @JsonKey(name: "AgencyId") @Default(1) int agencyId,
    @JsonKey(name: "AgentId") @Default(1) int? agentId,
    @JsonKey(name: "ListingId") int? listingId,
    @JsonKey(name: "Publish") @Default(true) bool? publish,
    @JsonKey(name: "isrea") @Default(false) bool? isRea,
    @JsonKey(name: "isdomain") @Default(false) bool? isDomain,
    @JsonKey(name: "LoggedUserId") @Default(2) int? loggedUserId,
  }) = _OpenHomeParams;

  factory OpenHomeParams.fromJson(Map<String, dynamic> json) =>
      _$OpenHomeParamsFromJson(json);
}

@Riverpod(keepAlive: true)
class OpenHomeParamsData extends _$OpenHomeParamsData {
  @override
  OpenHomeParams build() {
    return const OpenHomeParams();
  }

  void update(OpenHomeParams Function(OpenHomeParams) updateFn) {
    state = updateFn(state);
  }

  void updateOpenHome(PropertyDetailModel? openHomeModel) {
    state = OpenHomeParams(
      // eventDate: openHomeModel?.eventDate?.toIso8601String(),
      // startTime: openHomeModel?.startTime?.toIso8601String(),
      // endTime: openHomeModel?.endTime?.toIso8601String(),
      openHomeuniqueId: openHomeModel?.openHomeuniqueId,
    );
  }
}
