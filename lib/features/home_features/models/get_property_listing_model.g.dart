// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_property_listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyListingModel _$PropertyListingModelFromJson(
        Map<String, dynamic> json) =>
    PropertyListingModel(
      countAll: (json['countAll'] as num?)?.toInt(),
      countSaleListing: (json['countSaleListing'] as num?)?.toInt(),
      countRentalListing: (json['countRentalListing'] as num?)?.toInt(),
      countSold: (json['countSold'] as num?)?.toInt(),
      countLeased: (json['countLeased'] as num?)?.toInt(),
      countOffMarket: (json['countOffMarket'] as num?)?.toInt(),
      propertyListingList: (json['propertyListingList'] as List<dynamic>?)
          ?.map((e) => PropertyListingList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

PropertyListingList _$PropertyListingListFromJson(Map<String, dynamic> json) =>
    PropertyListingList(
      listingId: (json['listingId'] as num?)?.toInt(),
      propertySaleRental: (json['propertySaleRental'] as num?)?.toInt(),
      propertyId: (json['propertyId'] as num?)?.toInt(),
      reaUploadId: json['reaUploadId'] as String?,
      domainUploadId: json['domainUploadId'] as String?,
      listingStatus: (json['listingStatus'] as num?)?.toInt(),
      propertyPrice: (json['propertyPrice'] as num?)?.toInt(),
      isCommercial: json['isCommercial'] as bool?,
      propertyAgreementType: (json['propertyAgreementType'] as num?)?.toInt(),
      isNew: (json['isNew'] as num?)?.toInt(),
      dualAgent: (json['dualAgent'] as num?)?.toInt(),
      isDualAgent: json['isDualAgent'] as bool?,
      isShowPrice: json['isShowPrice'] as bool?,
      showText: json['showText'] as String?,
      address: json['address'] as String?,
      propertyUId: json['propertyUId'] as String?,
      agentName: json['agentName'] as String?,
      dualAgentName: json['dualAgentName'] as String?,
      sListingStatus: json['sListingStatus'] as String?,
      sAgreementType: json['sAgreementType'] as String?,
      rent: (json['rent'] as num?)?.toInt(),
      dateAvailable: json['dateAvailable'],
      listingAgentId: (json['listingAgentId'] as num?)?.toInt(),
      listingAgentName: json['listingAgentName'] as String?,
      enquiryCount: (json['enquiryCount'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      reaUploadedDate: json['reaUploadedDate'] == null
          ? null
          : DateTime.parse(json['reaUploadedDate'] as String),
      domainUploadedDate: json['domainUploadedDate'] == null
          ? null
          : DateTime.parse(json['domainUploadedDate'] as String),
    );
