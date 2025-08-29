import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_tenant_param.freezed.dart';
part 'add_tenant_param.g.dart';

@freezed
class TenantParams with _$TenantParams {
  const factory TenantParams({
    @JsonKey(name: "TenantId") @Default(0) int tenantId,
    @JsonKey(name: "PropertyId") @Default(0) int propertyId,
    @JsonKey(name: "TenantFname") String? tenantFname,
    @JsonKey(name: "TenantLname") String? tenantLname,
    @JsonKey(name: "TenantMobile") String? tenantMobile,
    @JsonKey(name: "TenantEmail") String? tenantEmail,
    @JsonKey(name: "UserId") @Default(2) int? userId,
    @JsonKey(name: "AgencyId") @Default(1) int? agencyId,
  }) = _TenantParams;

  factory TenantParams.fromJson(Map<String, dynamic> json) =>
      _$TenantParamsFromJson(json);
}
@Riverpod(keepAlive: true)
class TenantParamsData extends _$TenantParamsData {
  @override
  TenantParams build() {
    return const TenantParams();
  }
  
 void update(TenantParams Function(TenantParams? p) updateParam) {
    state = updateParam(state);
  }
  }

