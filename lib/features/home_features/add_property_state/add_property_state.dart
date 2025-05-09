
import 'package:foreal_property/features/auth_feature/model/add_property_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "add_property_state.freezed.dart";
@freezed
class AddPropertyState with _$AddPropertyState{
  const factory AddPropertyState({
   
    required AddPropertyEvent addPropertyEvent,
     String? response,
    // AddPropertyModel? addPropertyModel,
  }) = _AddPropertyState;
}

enum AddPropertyEvent{
addAddress,
addressUpdate,
addPropertyAttribute,
addImage,
contact,
listing
}