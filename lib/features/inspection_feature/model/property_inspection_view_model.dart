import 'package:image_picker/image_picker.dart';

class PropertyInspectionViewModel {

  bool clean;
  bool unDamage;
  bool working;
  List<XFile> images;
  String ?comments;
  List<String> initialImages;
  List<String> tenantImages;
  String? tenantComment;
  bool? isTenantAgree;
  bool cleanByTenant;
  bool unDamageByTenant;
  bool workingByTenant;
  PropertyInspectionViewModel({

    this.clean=false,
    this.unDamage=false,
    this.working=false,
    this.images=const[],
    this.initialImages=const [],
    this.comments,
    this.tenantImages = const [],
    this.tenantComment,
    this.isTenantAgree,
    this.cleanByTenant=true,
    this.unDamageByTenant=true,
    this.workingByTenant=true,
  });

  PropertyInspectionViewModel copyWith({
    bool? clean,
    bool? unDamage,
    bool? working,
    List<XFile>? images,
    String? comments,
    List<String>? initialImages,
    List<String>? tenantImages,
    String? tenantComment,
    bool? isTenantAgree,
    bool? cleanByTenant,
    bool? unDamageByTenant,
    bool? workingByTenant,
  }) {
    return PropertyInspectionViewModel(
      clean: clean ?? this.clean,
      unDamage: unDamage ?? this.unDamage,
      working: working ?? this.working,
      images: images ?? this.images,
      comments: comments ?? this.comments,
      initialImages: initialImages ?? this.initialImages,
      tenantImages: tenantImages ?? this.tenantImages,
      tenantComment: tenantComment ?? this.tenantComment,
      isTenantAgree: isTenantAgree ?? this.isTenantAgree,
      cleanByTenant: cleanByTenant ?? this.cleanByTenant,
      unDamageByTenant: unDamageByTenant ?? this.unDamageByTenant,
      workingByTenant: workingByTenant ?? this.workingByTenant,
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



