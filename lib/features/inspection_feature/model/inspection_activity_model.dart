import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inspection_activity_model.g.dart';

@JsonSerializable(createToJson: false)
class InspectionActivityModel {
  InspectionActivityModel({
    required this.id,
    required this.userId,
    required this.userType,
    required this.isSystemGenerated,
    required this.createdAt,
    required this.moduleId,
    required this.recordId,
    required this.isHide,
    required this.hasAttachment,
    required this.url,
    required this.description,
    required this.notes,
    required this.activityType,
    required this.userName,
  });

  final int? id;
  final int? userId;
  final int? userType;
  final bool? isSystemGenerated;
  final DateTime? createdAt;
  final int? moduleId;
  final int? recordId;
  final bool? isHide;
  final bool? hasAttachment;
  final dynamic url;
  final String? description;
  final dynamic notes;
  final int? activityType;
  final String? userName;

  factory InspectionActivityModel.fromJson(Map<String, dynamic> json) =>
      _$InspectionActivityModelFromJson(json);
  String get formateDate {
    if (createdAt == null) return "";
    String dayWithSuffix = _getDayWithSuffix(createdAt!.day);
    String month = DateFormat('MMM').format(createdAt!); // Sep
    String year = DateFormat('yy').format(createdAt!); // 25
    return '$dayWithSuffix $month $year';
  }

  String get formateTime {
    if (createdAt == null) return "";
    return DateFormat('hh:mm a').format(createdAt!); // 05:52 PM
  }

  String _getDayWithSuffix(int day) {
    if (day >= 11 && day <= 13) {
      return '${day}th';
    }
    switch (day % 10) {
      case 1:
        return '${day}st';
      case 2:
        return '${day}nd';
      case 3:
        return '${day}rd';
      default:
        return '${day}th';
    }
  }
}
