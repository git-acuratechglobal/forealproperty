import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_params.freezed.dart';
part 'home_params.g.dart';

@freezed
class LeaseFilterParams with _$LeaseFilterParams {
  const factory LeaseFilterParams({
    @JsonKey(name: "SortBy") @Default("CreatedDate") String sortBy,
    @JsonKey(name: "SortOrder") @Default("Desc") String sortOrder,
    @JsonKey(name: "RecordsPerPage") @Default(10) int recordsPerPage,
    @JsonKey(name: "PageNo") @Default(1) int pageNo,
    @JsonKey(name: "PropertyType") @Default("") String propertyType,
    @JsonKey(name: "MinPrice") double? minPrice,
    @JsonKey(name: "MaxPrice") double? maxPrice,
    @JsonKey(name: "Minbeds") int? minBeds,
    @JsonKey(name: "Bathrooms") int? bathrooms,
    @JsonKey(name: "CarParking") int? carParking,
    @JsonKey(name: "LivingArea") double? livingArea,
    @JsonKey(name: "MinLand") double? minLand,
    @JsonKey(name: "MaxLand") double? maxLand,
    @JsonKey(name: "IsNew") bool? isNew,
    @JsonKey(name: "cat") @Default("3") String cat, // Just for lease page
    @JsonKey(name: "Search") String? search,
  }) = _LeaseFilterParams;

  factory LeaseFilterParams.fromJson(Map<String, dynamic> json) =>
      _$LeaseFilterParamsFromJson(json);
}

@riverpod
class LeaseFilterParamsData extends _$LeaseFilterParamsData {
  @override
  LeaseFilterParams build() {
    return const LeaseFilterParams(); // defaults applied
  }

  void update(LeaseFilterParams Function(LeaseFilterParams p) updateParam) {
    state = updateParam(state);
  }
}
