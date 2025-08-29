import 'package:json_annotation/json_annotation.dart';

part 'get_openhomelist_model.g.dart';

@JsonSerializable(createToJson: false)
class GetOpenHomeListModel {
    GetOpenHomeListModel({
        required this.propertyUniqueId,
        required this.heading,
        required this.property,
        required this.startTime,
        required this.endTime,
        required this.detail,
        required this.venue,
        required this.openHomeuniqueId,
        required this.eventDate,
        required this.propertyPrice,
        required this.propertyPic,
        required this.sListingType,
    });
final String? sListingType;
    final String? propertyUniqueId;
    final String? heading;
    final String? property;
    final DateTime? startTime;
    final DateTime? endTime;
    final dynamic detail;
    final dynamic venue;
    final String? openHomeuniqueId;
    final DateTime? eventDate;
    final int? propertyPrice;
    final String? propertyPic;

    factory GetOpenHomeListModel.fromJson(Map<String, dynamic> json) => _$GetOpenHomeListModelFromJson(json);

}
