import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ownership_params.freezed.dart';
part 'ownership_params.g.dart';

@freezed
class OwnershipParams with _$OwnershipParams {
  const factory OwnershipParams({
    @JsonKey(name: "AgentId") @Default(2) int agentId,
    @JsonKey(name: "AgencyId") @Default(1) int agencyId,
    @JsonKey(name: "Address") String? address,
    @JsonKey(name: "UserRoleID") @Default(10) int userRoleID,
    @JsonKey(name: "PropertyUniqueId") String? propertyUniqueId,
    @JsonKey(name: "FirstName") String? firstName,
    @JsonKey(name: "LastName") String? lastName,
    @JsonKey(name: "Email") String? email,
    @JsonKey(name: "MobileNumber") String? mobileNumber,
    @JsonKey(name: "ContactType") @Default(1) int contactType,
    @JsonKey(name: "Title") @Default(2) int title,
    @JsonKey(name: "ContactUniqueId") String? contactUniqueId,
  }) = _OwnershipParams;

  factory OwnershipParams.fromJson(Map<String, dynamic> json) => _$OwnershipParamsFromJson(json);
}

@Riverpod(keepAlive: true)
class OwnershipParamsData extends _$OwnershipParamsData {
  @override
  OwnershipParams build() {
    return const OwnershipParams(); // Provide default values for ContactParams
  }

  void update(OwnershipParams Function(OwnershipParams? p) updateParam) {
    state = updateParam(state); // Update state based on the function provided
  }
}
