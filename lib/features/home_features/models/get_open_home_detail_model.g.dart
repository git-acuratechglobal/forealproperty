// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_open_home_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOpenHomeDetail _$GetOpenHomeDetailFromJson(Map<String, dynamic> json) =>
    GetOpenHomeDetail(
      addOpenHomeRegistrationModel: (json['addOpenHomeRegistrationModel']
              as List<dynamic>?)
          ?.map((e) =>
              AddOpenHomeRegistrationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      updateHistory: json['updateHistory'] as List<dynamic>?,
      propertyUniqueId: json['propertyUniqueId'] as String?,
      property: json['property'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      detail: json['detail'],
      venue: json['venue'],
      openHomeuniqueId: json['openHomeuniqueId'] as String?,
      eventDate: json['eventDate'] as String?,
      heading: json['heading'],
      propertyPrice: (json['propertyPrice'] as num?)?.toInt(),
      propertyPic: json['propertyPic'] as String?,
      sListingType: json['sListingType'],
    );

AddOpenHomeRegistrationModel _$AddOpenHomeRegistrationModelFromJson(
        Map<String, dynamic> json) =>
    AddOpenHomeRegistrationModel(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'],
      phone: json['phone'],
      openHomeUniqueId: json['openHomeUniqueId'],
      openHomeRegistrationId: (json['openHomeRegistrationId'] as num?)?.toInt(),
      isPresent: json['isPresent'] as bool?,
      fromBackend: json['fromBackend'],
      createdOn: json['createdOn'],
    );

Map<String, dynamic> _$AddOpenHomeRegistrationModelToJson(
        AddOpenHomeRegistrationModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'openHomeUniqueId': instance.openHomeUniqueId,
      'openHomeRegistrationId': instance.openHomeRegistrationId,
      'isPresent': instance.isPresent,
      'fromBackend': instance.fromBackend,
      'createdOn': instance.createdOn,
    };
