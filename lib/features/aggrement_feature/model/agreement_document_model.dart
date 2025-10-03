import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'agreement_document_model.g.dart';

@JsonSerializable(createToJson: false)
class AgreementDocument {
  AgreementDocument({
    required this.agreementId,
    required this.agreementType,
    required this.propertyAddress,
    required this.createdAt,
    required this.isCompleted,
    required this.propertyUniqueId,
    required this.sAgreementType,
    required this.userId,
    required this.isManuallyAdded,
    required this.agreementFilePath,
    required this.status,
  });

  final int? agreementId;
  final int? agreementType;
  final String? propertyAddress;
  final DateTime? createdAt;
  final bool? isCompleted;
  final String? propertyUniqueId;
  final String? sAgreementType;
  final int? userId;
  final bool? isManuallyAdded;
  final dynamic agreementFilePath;
  final dynamic status;

  factory AgreementDocument.fromJson(Map<String, dynamic> json) => _$AgreementDocumentFromJson(json);

  String? get formmatedDate{
    if(createdAt==null) return null;
    return DateFormat("dd/MM/yyyy hh:mm a").format(createdAt!);
  }


}
