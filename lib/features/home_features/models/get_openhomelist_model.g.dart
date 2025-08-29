// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_openhomelist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOpenHomeListModel _$GetOpenHomeListModelFromJson(
        Map<String, dynamic> json) =>
    GetOpenHomeListModel(
      propertyUniqueId: json['propertyUniqueId'] as String?,
      heading: json['heading'] as String?,
      property: json['property'] as String?,
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      detail: json['detail'],
      venue: json['venue'],
      openHomeuniqueId: json['openHomeuniqueId'] as String?,
      eventDate: json['eventDate'] == null
          ? null
          : DateTime.parse(json['eventDate'] as String),
      propertyPrice: (json['propertyPrice'] as num?)?.toInt(),
      propertyPic: json['propertyPic'] as String?,
      sListingType: json['sListingType'] as String?,
    );
