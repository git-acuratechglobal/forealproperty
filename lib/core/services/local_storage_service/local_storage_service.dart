import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foreal_property/features/auth_feature/model/add_property_model.dart';
import 'package:foreal_property/features/auth_feature/model/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'local_storage_service.g.dart';

@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(Ref ref) {
  return throw UnimplementedError();
}

@Riverpod(keepAlive: true)
LocalStorageService localStorageService(Ref ref) {
  return LocalStorageService(ref.watch(sharedPreferencesProvider));
}

class LocalStorageService {
  final SharedPreferences _preferences;
  LocalStorageService(this._preferences);

  static const String _userKey = 'user';
  static const String _onBoardingKey = 'onBoarding';
 // static const String _propertyId = 'propertyId';
static const String _propertyModel = 'propertModel';
  Future<void> setUser(UserModel user) async {
    await _preferences.setString(_userKey, jsonEncode(user.toJson()));
  }

  UserModel? getuser() {
    final userJson = _preferences.getString(_userKey);
    return userJson == null ? null : UserModel.fromJson(jsonDecode(userJson));
  }

 Future<void> clearUser() async {
   await _preferences.remove(_userKey);
 }

  Future<void> setOnBoardingComplete() async {
    await _preferences.setBool(_onBoardingKey, true);
  }

  bool? getOnBoardingComplete() {
    return _preferences.getBool(_onBoardingKey);
  }

  Future<void> setPropertyModel(AddPropertyModel addPropertyModel) async{
    await _preferences.setString(_propertyModel,  jsonEncode(addPropertyModel.toJson()));
  }

  AddPropertyModel?  getPropertyModel(){
    final propertyModelJson = _preferences.getString(_propertyModel);
    return propertyModelJson == null ? null : AddPropertyModel.fromJson(jsonDecode(propertyModelJson));
  }
}
