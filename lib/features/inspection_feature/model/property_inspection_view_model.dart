import 'dart:convert';

import 'package:image_picker/image_picker.dart';

class PropertyInspectionViewModel {
  final int inspectionId;
  final int templateId;
  final int id;
  final bool clean;
  final bool unDamage;
  final bool working;
  final List<XFile> images;
  final String? comments;
  final List<String> initialImages;
  final List<String> tenantImages;
  final String? tenantComment;
  final bool? isTenantAgree;
  final bool cleanByTenant;
  final bool unDamageByTenant;
  final bool workingByTenant;
  PropertyInspectionViewModel({
    required this.inspectionId,
    required this.templateId,
   required this.id,
    this.clean = false,
    this.unDamage = false,
    this.working = false,
    this.images = const [],
    this.initialImages = const [],
    this.comments,
    this.tenantImages = const [],
    this.tenantComment,
    this.isTenantAgree,
    this.cleanByTenant = true,
    this.unDamageByTenant = true,
    this.workingByTenant = true,
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
      inspectionId: inspectionId,
      templateId: templateId,
      id:id,
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



  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'clean': clean,
      'unDamage': unDamage,
      'working': working,
      'images': images.map((xfile) => xfile.path).toList(),
      'comments': comments,
      'initialImages': initialImages,
      'tenantImages': tenantImages,
      'tenantComment': tenantComment,
      'isTenantAgree': isTenantAgree,
      'cleanByTenant': cleanByTenant,
      'unDamageByTenant': unDamageByTenant,
      'workingByTenant': workingByTenant,
    };
  }


  factory PropertyInspectionViewModel.fromJson(Map<String, dynamic> json) {
    return PropertyInspectionViewModel(
      inspectionId: json['inspectionId'] ?? 0,
      templateId: json['templateId'] ?? 0,
      id: json['id'] ?? 0,
      clean: json['clean'] ?? false,
      unDamage: json['unDamage'] ?? false,
      working: json['working'] ?? false,
      images: (json['images'] as List<dynamic>?)
          ?.map((path) => XFile(path.toString()))
          .toList() ??
          [],
      comments: json['comments'],
      initialImages:
      (json['initialImages'] as List<dynamic>?)?.cast<String>() ?? [],
      tenantImages:
      (json['tenantImages'] as List<dynamic>?)?.cast<String>() ?? [],
      tenantComment: json['tenantComment'],
      isTenantAgree: json['isTenantAgree'],
      cleanByTenant: json['cleanByTenant'] ?? true,
      unDamageByTenant: json['unDamageByTenant'] ?? true,
      workingByTenant: json['workingByTenant'] ?? true,
    );
  }


  String toRawJson() => jsonEncode(toJson());

  factory PropertyInspectionViewModel.fromRawJson(String str) =>
      PropertyInspectionViewModel.fromJson(jsonDecode(str));





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
