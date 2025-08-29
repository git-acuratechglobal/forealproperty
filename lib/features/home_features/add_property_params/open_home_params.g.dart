// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_home_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenHomeParamsImpl _$$OpenHomeParamsImplFromJson(Map<String, dynamic> json) =>
    _$OpenHomeParamsImpl(
      propertyId: (json['PropertyId'] as num?)?.toInt(),
      startTime: json['StartTime'] as String?,
      endTime: json['EndTime'] as String?,
      openHomeuniqueId: json['OpenHomeuniqueId'] as String?,
      eventDate: json['EventDate'] as String?,
      createdBy: (json['CreatedBy'] as num?)?.toInt() ?? 1,
      agencyId: (json['AgencyId'] as num?)?.toInt() ?? 1,
      agentId: (json['AgentId'] as num?)?.toInt() ?? 1,
      listingId: (json['ListingId'] as num?)?.toInt(),
      publish: json['Publish'] as bool? ?? true,
      isRea: json['isrea'] as bool? ?? false,
      isDomain: json['isdomain'] as bool? ?? false,
      loggedUserId: (json['LoggedUserId'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$OpenHomeParamsImplToJson(
        _$OpenHomeParamsImpl instance) =>
    <String, dynamic>{
      'PropertyId': instance.propertyId,
      'StartTime': instance.startTime,
      'EndTime': instance.endTime,
      'OpenHomeuniqueId': instance.openHomeuniqueId,
      'EventDate': instance.eventDate,
      'CreatedBy': instance.createdBy,
      'AgencyId': instance.agencyId,
      'AgentId': instance.agentId,
      'ListingId': instance.listingId,
      'Publish': instance.publish,
      'isrea': instance.isRea,
      'isdomain': instance.isDomain,
      'LoggedUserId': instance.loggedUserId,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$openHomeParamsDataHash() =>
    r'8278a231daa0f168befdc0bcafd4cba5e93c5c9d';

/// See also [OpenHomeParamsData].
@ProviderFor(OpenHomeParamsData)
final openHomeParamsDataProvider =
    NotifierProvider<OpenHomeParamsData, OpenHomeParams>.internal(
  OpenHomeParamsData.new,
  name: r'openHomeParamsDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$openHomeParamsDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$OpenHomeParamsData = Notifier<OpenHomeParams>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
