// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agreement_document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgreementDocument _$AgreementDocumentFromJson(Map<String, dynamic> json) =>
    AgreementDocument(
      agreementId: (json['agreementId'] as num?)?.toInt(),
      agreementType: (json['agreementType'] as num?)?.toInt(),
      propertyAddress: json['propertyAddress'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      isCompleted: json['isCompleted'] as bool?,
      propertyUniqueId: json['propertyUniqueId'] as String?,
      sAgreementType: json['sAgreementType'] as String?,
      userId: (json['userId'] as num?)?.toInt(),
      isManuallyAdded: json['isManuallyAdded'] as bool?,
      agreementFilePath: json['agreementFilePath'],
      status: json['status'],
    );
