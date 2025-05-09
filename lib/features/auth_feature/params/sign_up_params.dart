import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_params.freezed.dart';
part 'sign_up_params.g.dart';



@freezed
class SignUpParams with _$SignUpParams {
    const factory SignUpParams({
        @JsonKey(name: "FirstName")
        String? firstName,
        @JsonKey(name: "Email")
        String? email,
        @JsonKey(name: "Password")
        String? password,
        @JsonKey(name: "ConfirmPassword")
        String? confirmPassword,
        @JsonKey(name: "Terms")
     @Default(true)   bool? terms,
        @JsonKey(name: "userRoleID")
     @Default(10)   int? userRoleId,
    }) = _SignUpParams;

    factory SignUpParams.fromJson(Map<String, dynamic> json) => _$SignUpParamsFromJson(json);
}




@riverpod
class SignUpParamsData extends _$SignUpParamsData {
  @override
 SignUpParams  build() {
    return  SignUpParams();
  }


  void update(SignUpParams Function (SignUpParams? p) updateParam){
state = updateParam(state);
  }
}