// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaseFilterParams _$LeaseFilterParamsFromJson(Map<String, dynamic> json) {
  return _LeaseFilterParams.fromJson(json);
}

/// @nodoc
mixin _$LeaseFilterParams {
  @JsonKey(name: "SortBy")
  String get sortBy => throw _privateConstructorUsedError;
  @JsonKey(name: "SortOrder")
  String get sortOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "RecordsPerPage")
  int get recordsPerPage => throw _privateConstructorUsedError;
  @JsonKey(name: "PageNo")
  int get pageNo => throw _privateConstructorUsedError;
  @JsonKey(name: "PropertyType")
  String get propertyType => throw _privateConstructorUsedError;
  @JsonKey(name: "MinPrice")
  double? get minPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "MaxPrice")
  double? get maxPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "Minbeds")
  int? get minBeds => throw _privateConstructorUsedError;
  @JsonKey(name: "Bathrooms")
  int? get bathrooms => throw _privateConstructorUsedError;
  @JsonKey(name: "CarParking")
  int? get carParking => throw _privateConstructorUsedError;
  @JsonKey(name: "LivingArea")
  double? get livingArea => throw _privateConstructorUsedError;
  @JsonKey(name: "MinLand")
  double? get minLand => throw _privateConstructorUsedError;
  @JsonKey(name: "MaxLand")
  double? get maxLand => throw _privateConstructorUsedError;
  @JsonKey(name: "IsNew")
  bool? get isNew => throw _privateConstructorUsedError;
  @JsonKey(name: "cat")
  String get cat => throw _privateConstructorUsedError; // Just for lease page
  @JsonKey(name: "Search")
  String? get search => throw _privateConstructorUsedError;

  /// Serializes this LeaseFilterParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaseFilterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaseFilterParamsCopyWith<LeaseFilterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaseFilterParamsCopyWith<$Res> {
  factory $LeaseFilterParamsCopyWith(
          LeaseFilterParams value, $Res Function(LeaseFilterParams) then) =
      _$LeaseFilterParamsCopyWithImpl<$Res, LeaseFilterParams>;
  @useResult
  $Res call(
      {@JsonKey(name: "SortBy") String sortBy,
      @JsonKey(name: "SortOrder") String sortOrder,
      @JsonKey(name: "RecordsPerPage") int recordsPerPage,
      @JsonKey(name: "PageNo") int pageNo,
      @JsonKey(name: "PropertyType") String propertyType,
      @JsonKey(name: "MinPrice") double? minPrice,
      @JsonKey(name: "MaxPrice") double? maxPrice,
      @JsonKey(name: "Minbeds") int? minBeds,
      @JsonKey(name: "Bathrooms") int? bathrooms,
      @JsonKey(name: "CarParking") int? carParking,
      @JsonKey(name: "LivingArea") double? livingArea,
      @JsonKey(name: "MinLand") double? minLand,
      @JsonKey(name: "MaxLand") double? maxLand,
      @JsonKey(name: "IsNew") bool? isNew,
      @JsonKey(name: "cat") String cat,
      @JsonKey(name: "Search") String? search});
}

/// @nodoc
class _$LeaseFilterParamsCopyWithImpl<$Res, $Val extends LeaseFilterParams>
    implements $LeaseFilterParamsCopyWith<$Res> {
  _$LeaseFilterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaseFilterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = null,
    Object? sortOrder = null,
    Object? recordsPerPage = null,
    Object? pageNo = null,
    Object? propertyType = null,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? minBeds = freezed,
    Object? bathrooms = freezed,
    Object? carParking = freezed,
    Object? livingArea = freezed,
    Object? minLand = freezed,
    Object? maxLand = freezed,
    Object? isNew = freezed,
    Object? cat = null,
    Object? search = freezed,
  }) {
    return _then(_value.copyWith(
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String,
      recordsPerPage: null == recordsPerPage
          ? _value.recordsPerPage
          : recordsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      minBeds: freezed == minBeds
          ? _value.minBeds
          : minBeds // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      carParking: freezed == carParking
          ? _value.carParking
          : carParking // ignore: cast_nullable_to_non_nullable
              as int?,
      livingArea: freezed == livingArea
          ? _value.livingArea
          : livingArea // ignore: cast_nullable_to_non_nullable
              as double?,
      minLand: freezed == minLand
          ? _value.minLand
          : minLand // ignore: cast_nullable_to_non_nullable
              as double?,
      maxLand: freezed == maxLand
          ? _value.maxLand
          : maxLand // ignore: cast_nullable_to_non_nullable
              as double?,
      isNew: freezed == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      cat: null == cat
          ? _value.cat
          : cat // ignore: cast_nullable_to_non_nullable
              as String,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaseFilterParamsImplCopyWith<$Res>
    implements $LeaseFilterParamsCopyWith<$Res> {
  factory _$$LeaseFilterParamsImplCopyWith(_$LeaseFilterParamsImpl value,
          $Res Function(_$LeaseFilterParamsImpl) then) =
      __$$LeaseFilterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "SortBy") String sortBy,
      @JsonKey(name: "SortOrder") String sortOrder,
      @JsonKey(name: "RecordsPerPage") int recordsPerPage,
      @JsonKey(name: "PageNo") int pageNo,
      @JsonKey(name: "PropertyType") String propertyType,
      @JsonKey(name: "MinPrice") double? minPrice,
      @JsonKey(name: "MaxPrice") double? maxPrice,
      @JsonKey(name: "Minbeds") int? minBeds,
      @JsonKey(name: "Bathrooms") int? bathrooms,
      @JsonKey(name: "CarParking") int? carParking,
      @JsonKey(name: "LivingArea") double? livingArea,
      @JsonKey(name: "MinLand") double? minLand,
      @JsonKey(name: "MaxLand") double? maxLand,
      @JsonKey(name: "IsNew") bool? isNew,
      @JsonKey(name: "cat") String cat,
      @JsonKey(name: "Search") String? search});
}

/// @nodoc
class __$$LeaseFilterParamsImplCopyWithImpl<$Res>
    extends _$LeaseFilterParamsCopyWithImpl<$Res, _$LeaseFilterParamsImpl>
    implements _$$LeaseFilterParamsImplCopyWith<$Res> {
  __$$LeaseFilterParamsImplCopyWithImpl(_$LeaseFilterParamsImpl _value,
      $Res Function(_$LeaseFilterParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaseFilterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = null,
    Object? sortOrder = null,
    Object? recordsPerPage = null,
    Object? pageNo = null,
    Object? propertyType = null,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? minBeds = freezed,
    Object? bathrooms = freezed,
    Object? carParking = freezed,
    Object? livingArea = freezed,
    Object? minLand = freezed,
    Object? maxLand = freezed,
    Object? isNew = freezed,
    Object? cat = null,
    Object? search = freezed,
  }) {
    return _then(_$LeaseFilterParamsImpl(
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as String,
      recordsPerPage: null == recordsPerPage
          ? _value.recordsPerPage
          : recordsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      minBeds: freezed == minBeds
          ? _value.minBeds
          : minBeds // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      carParking: freezed == carParking
          ? _value.carParking
          : carParking // ignore: cast_nullable_to_non_nullable
              as int?,
      livingArea: freezed == livingArea
          ? _value.livingArea
          : livingArea // ignore: cast_nullable_to_non_nullable
              as double?,
      minLand: freezed == minLand
          ? _value.minLand
          : minLand // ignore: cast_nullable_to_non_nullable
              as double?,
      maxLand: freezed == maxLand
          ? _value.maxLand
          : maxLand // ignore: cast_nullable_to_non_nullable
              as double?,
      isNew: freezed == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool?,
      cat: null == cat
          ? _value.cat
          : cat // ignore: cast_nullable_to_non_nullable
              as String,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaseFilterParamsImpl implements _LeaseFilterParams {
  const _$LeaseFilterParamsImpl(
      {@JsonKey(name: "SortBy") this.sortBy = "CreatedDate",
      @JsonKey(name: "SortOrder") this.sortOrder = "Desc",
      @JsonKey(name: "RecordsPerPage") this.recordsPerPage = 10,
      @JsonKey(name: "PageNo") this.pageNo = 1,
      @JsonKey(name: "PropertyType") this.propertyType = "",
      @JsonKey(name: "MinPrice") this.minPrice,
      @JsonKey(name: "MaxPrice") this.maxPrice,
      @JsonKey(name: "Minbeds") this.minBeds,
      @JsonKey(name: "Bathrooms") this.bathrooms,
      @JsonKey(name: "CarParking") this.carParking,
      @JsonKey(name: "LivingArea") this.livingArea,
      @JsonKey(name: "MinLand") this.minLand,
      @JsonKey(name: "MaxLand") this.maxLand,
      @JsonKey(name: "IsNew") this.isNew,
      @JsonKey(name: "cat") this.cat = "3",
      @JsonKey(name: "Search") this.search});

  factory _$LeaseFilterParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaseFilterParamsImplFromJson(json);

  @override
  @JsonKey(name: "SortBy")
  final String sortBy;
  @override
  @JsonKey(name: "SortOrder")
  final String sortOrder;
  @override
  @JsonKey(name: "RecordsPerPage")
  final int recordsPerPage;
  @override
  @JsonKey(name: "PageNo")
  final int pageNo;
  @override
  @JsonKey(name: "PropertyType")
  final String propertyType;
  @override
  @JsonKey(name: "MinPrice")
  final double? minPrice;
  @override
  @JsonKey(name: "MaxPrice")
  final double? maxPrice;
  @override
  @JsonKey(name: "Minbeds")
  final int? minBeds;
  @override
  @JsonKey(name: "Bathrooms")
  final int? bathrooms;
  @override
  @JsonKey(name: "CarParking")
  final int? carParking;
  @override
  @JsonKey(name: "LivingArea")
  final double? livingArea;
  @override
  @JsonKey(name: "MinLand")
  final double? minLand;
  @override
  @JsonKey(name: "MaxLand")
  final double? maxLand;
  @override
  @JsonKey(name: "IsNew")
  final bool? isNew;
  @override
  @JsonKey(name: "cat")
  final String cat;
// Just for lease page
  @override
  @JsonKey(name: "Search")
  final String? search;

  @override
  String toString() {
    return 'LeaseFilterParams(sortBy: $sortBy, sortOrder: $sortOrder, recordsPerPage: $recordsPerPage, pageNo: $pageNo, propertyType: $propertyType, minPrice: $minPrice, maxPrice: $maxPrice, minBeds: $minBeds, bathrooms: $bathrooms, carParking: $carParking, livingArea: $livingArea, minLand: $minLand, maxLand: $maxLand, isNew: $isNew, cat: $cat, search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaseFilterParamsImpl &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.recordsPerPage, recordsPerPage) ||
                other.recordsPerPage == recordsPerPage) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.minBeds, minBeds) || other.minBeds == minBeds) &&
            (identical(other.bathrooms, bathrooms) ||
                other.bathrooms == bathrooms) &&
            (identical(other.carParking, carParking) ||
                other.carParking == carParking) &&
            (identical(other.livingArea, livingArea) ||
                other.livingArea == livingArea) &&
            (identical(other.minLand, minLand) || other.minLand == minLand) &&
            (identical(other.maxLand, maxLand) || other.maxLand == maxLand) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.cat, cat) || other.cat == cat) &&
            (identical(other.search, search) || other.search == search));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sortBy,
      sortOrder,
      recordsPerPage,
      pageNo,
      propertyType,
      minPrice,
      maxPrice,
      minBeds,
      bathrooms,
      carParking,
      livingArea,
      minLand,
      maxLand,
      isNew,
      cat,
      search);

  /// Create a copy of LeaseFilterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaseFilterParamsImplCopyWith<_$LeaseFilterParamsImpl> get copyWith =>
      __$$LeaseFilterParamsImplCopyWithImpl<_$LeaseFilterParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaseFilterParamsImplToJson(
      this,
    );
  }
}

abstract class _LeaseFilterParams implements LeaseFilterParams {
  const factory _LeaseFilterParams(
      {@JsonKey(name: "SortBy") final String sortBy,
      @JsonKey(name: "SortOrder") final String sortOrder,
      @JsonKey(name: "RecordsPerPage") final int recordsPerPage,
      @JsonKey(name: "PageNo") final int pageNo,
      @JsonKey(name: "PropertyType") final String propertyType,
      @JsonKey(name: "MinPrice") final double? minPrice,
      @JsonKey(name: "MaxPrice") final double? maxPrice,
      @JsonKey(name: "Minbeds") final int? minBeds,
      @JsonKey(name: "Bathrooms") final int? bathrooms,
      @JsonKey(name: "CarParking") final int? carParking,
      @JsonKey(name: "LivingArea") final double? livingArea,
      @JsonKey(name: "MinLand") final double? minLand,
      @JsonKey(name: "MaxLand") final double? maxLand,
      @JsonKey(name: "IsNew") final bool? isNew,
      @JsonKey(name: "cat") final String cat,
      @JsonKey(name: "Search") final String? search}) = _$LeaseFilterParamsImpl;

  factory _LeaseFilterParams.fromJson(Map<String, dynamic> json) =
      _$LeaseFilterParamsImpl.fromJson;

  @override
  @JsonKey(name: "SortBy")
  String get sortBy;
  @override
  @JsonKey(name: "SortOrder")
  String get sortOrder;
  @override
  @JsonKey(name: "RecordsPerPage")
  int get recordsPerPage;
  @override
  @JsonKey(name: "PageNo")
  int get pageNo;
  @override
  @JsonKey(name: "PropertyType")
  String get propertyType;
  @override
  @JsonKey(name: "MinPrice")
  double? get minPrice;
  @override
  @JsonKey(name: "MaxPrice")
  double? get maxPrice;
  @override
  @JsonKey(name: "Minbeds")
  int? get minBeds;
  @override
  @JsonKey(name: "Bathrooms")
  int? get bathrooms;
  @override
  @JsonKey(name: "CarParking")
  int? get carParking;
  @override
  @JsonKey(name: "LivingArea")
  double? get livingArea;
  @override
  @JsonKey(name: "MinLand")
  double? get minLand;
  @override
  @JsonKey(name: "MaxLand")
  double? get maxLand;
  @override
  @JsonKey(name: "IsNew")
  bool? get isNew;
  @override
  @JsonKey(name: "cat")
  String get cat; // Just for lease page
  @override
  @JsonKey(name: "Search")
  String? get search;

  /// Create a copy of LeaseFilterParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaseFilterParamsImplCopyWith<_$LeaseFilterParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
