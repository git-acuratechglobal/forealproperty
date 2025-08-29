import 'package:image_picker/image_picker.dart';

class PropertyInspectionViewModel {
  bool available;
  bool clean;
  bool unDamage;
  bool working;
  List<XFile> images;
  String ?comments;
  List<String> initialImages;
  PropertyInspectionViewModel({
    required this.available,
    required this.clean,
    required this.unDamage,
    required this.working,
    required this.images,
    required this.initialImages,
     this.comments,
  });

  PropertyInspectionViewModel copyWith({
    bool? available,
    bool? clean,
    bool? unDamage,
    bool? working,
    List<XFile>? images,
    String? comments,
    List<String>? initialImages,
  }) {
    return PropertyInspectionViewModel(
      available: available ?? this.available,
      clean: clean ?? this.clean,
      unDamage: unDamage ?? this.unDamage,
      working: working ?? this.working,
      images: images ?? this.images,
      comments: comments ?? this.comments,
      initialImages: initialImages ?? this.initialImages,
    );
  }
  @override
  String toString() {
    return 'PropertyInspectionViewModel('
        'clean: $clean, '
        'unDamage: $unDamage, '
        'working: $working, '
        'images: ${images.length} images, '
        ')';
  }

}
