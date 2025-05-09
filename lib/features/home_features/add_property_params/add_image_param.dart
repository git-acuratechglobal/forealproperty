import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_image_param.freezed.dart';
part 'add_image_param.g.dart';

@freezed
class AddImage with _$AddImage {
  const factory AddImage({
    @JsonKey(name: "PropertyBuildingTypeZoning") @Default("A2")String propertyBuildingTypeZoning,
    @JsonKey(name: "PropertyDescription") String? propertyDescription,
    @JsonKey(name: "PropertyHeading") String? propertyHeading,
    @JsonKey(name: "PropertyId")  int? propertyId,
    @JsonKey(name: "PropertyImages") List<String>? propertyImages,
    @JsonKey(name: "PropertyLandAreaL")  @Default("400") String propertyLandAreaL, // because it's a string in JSON
    @JsonKey(name: "PropertyLandAreaW")  @Default(8) int propertyLandAreaW,
    @JsonKey(name: "FloorImages") List<String>? floorImages,
  }) = _AddImage;

  factory AddImage.fromJson(Map<String, dynamic> json) =>
      _$AddImageFromJson(json);
}


@Riverpod(keepAlive: true)
class AddImageData extends _$AddImageData {
  @override
  AddImage build() {
    return const AddImage();
  }

  void update(AddImage Function(AddImage? p) updateParam) {
    state = updateParam(state);
  }
}
