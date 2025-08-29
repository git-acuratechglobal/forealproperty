
import 'package:freezed_annotation/freezed_annotation.dart';

part "add_property_state.freezed.dart";
@freezed
class AddPropertyState with _$AddPropertyState{
  const factory AddPropertyState({
   
    required AddPropertyEvent addPropertyEvent,
     String? response,
    // AddPropertyModel? addPropertyModel,
    //  @Default(false) bool isAddressSaved,
    // @Default(false) bool isAttributesSaved,
    // @Default(false) bool isContactSaved,
    // @Default(false) bool isImagesSaved,
    // @Default(false) bool isListingSaved,
  }) = _AddPropertyState;
}

enum AddPropertyEvent{
addAddress,
addressUpdate,
addPropertyAttribute,
addImage,
contact,
updateContact,
listing,
addUpdateOpenHome,
addContact,
addOpenHome,
addOpenHomesRegistration, 
deleteOpenHome, 
addTenant,
addMultipleOwner
}