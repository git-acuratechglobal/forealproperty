import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'registration_param.freezed.dart';
part 'registration_param.g.dart';

@freezed
class RegistrationParam with _$RegistrationParam {
  const factory RegistrationParam({
    @JsonKey(name: "FirstName") String? firstName,
    @JsonKey(name: "LastName") String? lastName,
    @JsonKey(name: "Email") String? email,
    @JsonKey(name: "Phone") String? phone,
    @JsonKey(name: "OpenHomeUniqueId") String? openHomeUniqueId,
    @JsonKey(name: "FromBackend") @Default(true) bool fromBackend,
    @JsonKey(name: "LoggedUserId") @Default(2) int loggedUserId,
  }) = _RegistrationParam;

  factory RegistrationParam.fromJson(Map<String, dynamic> json) =>
      _$RegistrationParamFromJson(json);
}

@Riverpod(keepAlive: true)
class RegistrationParamData extends _$RegistrationParamData {
  @override
  RegistrationParam build() {
    return const RegistrationParam(); // Default empty instance
  }

  void update(RegistrationParam Function(RegistrationParam current) updateParam) {
    state = updateParam(state); // Apply update function
  }
}
