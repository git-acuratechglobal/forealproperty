import 'package:foreal_property/features/auth_feature/model/add_property_model.dart';
import 'package:foreal_property/features/auth_feature/model/user_model.dart';

class LoginResponse {
  final UserModel? user;
  final String message;
  LoginResponse({ this.user, required this.message});
}


class AddPropertResponse{
  final AddPropertyModel? addPropertyModel;
  final String message;
  AddPropertResponse({this.addPropertyModel, required this.message});
}