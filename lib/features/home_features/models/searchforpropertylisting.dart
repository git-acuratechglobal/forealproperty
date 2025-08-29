import 'package:json_annotation/json_annotation.dart';

part 'searchforpropertylisting.g.dart';

@JsonSerializable()
class SearchPropertyListingForSelect2 {
    @JsonKey(name: "id")
    int? id;
    @JsonKey(name: "listingId")
    int? listingId;
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "propertyUId")
    String? propertyUId;
    @JsonKey(name: "postCode")
    String? postCode;
    @JsonKey(name: "propertyFor")
    String? propertyFor;
    @JsonKey(name: "isSaleListed")
    bool? isSaleListed;
    @JsonKey(name: "isRentalListed")
    bool? isRentalListed;
    @JsonKey(name: "ownerFolio")
    dynamic ownerFolio;
    @JsonKey(name: "tenantReference")
    dynamic tenantReference;
    @JsonKey(name: "tenantAccountFolio")
    dynamic tenantAccountFolio;
    @JsonKey(name: "tenantFolioId")
    dynamic tenantFolioId;

    SearchPropertyListingForSelect2({
        this.id,
        this.listingId,
        this.name,
        this.propertyUId,
        this.postCode,
        this.propertyFor,
        this.isSaleListed,
        this.isRentalListed,
        this.ownerFolio,
        this.tenantReference,
        this.tenantAccountFolio,
        this.tenantFolioId,
    });

    factory SearchPropertyListingForSelect2.fromJson(Map<String, dynamic> json) => _$SearchPropertyListingForSelect2FromJson(json);

    Map<String, dynamic> toJson() => _$SearchPropertyListingForSelect2ToJson(this);
}
