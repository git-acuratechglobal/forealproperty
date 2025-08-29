import 'package:json_annotation/json_annotation.dart';

part 'get_open_home_detail_model.g.dart';

@JsonSerializable(createToJson: false)
@JsonSerializable()



@JsonSerializable()
class GetOpenHomeDetail {
    @JsonKey(name: "addOpenHomeRegistrationModel")
    List<AddOpenHomeRegistrationModel>? addOpenHomeRegistrationModel;
    @JsonKey(name: "updateHistory")
    List<dynamic>? updateHistory;
    @JsonKey(name: "propertyUniqueId")
    String? propertyUniqueId;
    @JsonKey(name: "property")
    String? property;
    @JsonKey(name: "startTime")
    String? startTime;
    @JsonKey(name: "endTime")
    String? endTime;
    @JsonKey(name: "detail")
    dynamic detail;
    @JsonKey(name: "venue")
    dynamic venue;
    @JsonKey(name: "openHomeuniqueId")
    String? openHomeuniqueId;
    @JsonKey(name: "eventDate")
    String? eventDate;
    @JsonKey(name: "heading")
    dynamic heading;
    @JsonKey(name: "propertyPrice")
    int? propertyPrice;
    @JsonKey(name: "propertyPic")
    String? propertyPic;
    @JsonKey(name: "sListingType")
    dynamic sListingType;

    GetOpenHomeDetail({
        this.addOpenHomeRegistrationModel,
        this.updateHistory,
        this.propertyUniqueId,
        this.property,
        this.startTime,
        this.endTime,
        this.detail,
        this.venue,
        this.openHomeuniqueId,
        this.eventDate,
        this.heading,
        this.propertyPrice,
        this.propertyPic,
        this.sListingType,
    });

    factory GetOpenHomeDetail.fromJson(Map<String, dynamic> json) => _$GetOpenHomeDetailFromJson(json);

   // Map<String, dynamic> toJson() => _$GetOpenHomeDetailToJson(this);
}

@JsonSerializable()
class AddOpenHomeRegistrationModel {
    @JsonKey(name: "firstName")
    String? firstName;
    @JsonKey(name: "lastName")
    String? lastName;
    @JsonKey(name: "email")
    dynamic email;
    @JsonKey(name: "phone")
    dynamic phone;
    @JsonKey(name: "openHomeUniqueId")
    dynamic openHomeUniqueId;
    @JsonKey(name: "openHomeRegistrationId")
    int? openHomeRegistrationId;
    @JsonKey(name: "isPresent")
    bool? isPresent;
    @JsonKey(name: "fromBackend")
    dynamic fromBackend;
     @JsonKey(name: "createdOn")
    dynamic createdOn;

    AddOpenHomeRegistrationModel({
        this.firstName,
        this.lastName,
        this.email,
        this.phone,
        this.openHomeUniqueId,
        this.openHomeRegistrationId,
        this.isPresent,
        this.fromBackend,
        this.createdOn
    });

    factory AddOpenHomeRegistrationModel.fromJson(Map<String, dynamic> json) => _$AddOpenHomeRegistrationModelFromJson(json);

    Map<String, dynamic> toJson() => _$AddOpenHomeRegistrationModelToJson(this);
}
