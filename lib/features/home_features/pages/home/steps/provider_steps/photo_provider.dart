import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final photoFormProvider =
    StateNotifierProvider.autoDispose<PhotoFormNotifier, PhotoForm>((ref) {
  return PhotoFormNotifier();
});

class PhotoFormNotifier extends StateNotifier<PhotoForm> {
  PhotoFormNotifier() : super(PhotoForm());void updatePropertyImages(List<File> newImages) {
  state = state.copyWith(propertyImages: newImages);
}

  void addPropertyImages(List<File> images) {
    state =
        state.copyWith(propertyImages: [...state.propertyImages, ...images]);
  }

  void addFloorImages(List<File> images) {
    state = state.copyWith(floorImages: [...state.floorImages, ...images]);
  }
void replaceFloorImages(List<File> images) {
  state = state.copyWith(floorImages: images);
}

  void removePropertyImageAt(int index) {
    final updated = [...state.propertyImages]..removeAt(index);
    state = state.copyWith(propertyImages: updated);
  }
  void replacePropertyImages(List<File> newImages) {
    state = state.copyWith(
      propertyImages: newImages,
    );
  }
  void removeFloorImageAt(int index) {
    final updated = [...state.floorImages]..removeAt(index);
    state = state.copyWith(floorImages: updated);
  }

  void updateHeading(String heading) {
    state = state.copyWith(heading: heading);
  }

  void updateDescription(String description) {
    state = state.copyWith(description: description);
  }
}

class PhotoForm {
  final List<File> propertyImages;
  final List<File> floorImages;
  final String heading;
  final String description;

  PhotoForm({
    this.propertyImages = const [],
    this.floorImages = const [],
    this.heading = '',
    this.description = '',
  });

  /// Returns a new instance of PhotoForm with updated values
  PhotoForm copyWith({
    List<File>? propertyImages,
    List<File>? floorImages,
    String? heading,
    String? description,
  }) {
    return PhotoForm(
      propertyImages: propertyImages ?? this.propertyImages,
      floorImages: floorImages ?? this.floorImages,
      heading: heading ?? this.heading,
      description: description ?? this.description,
    );
  }

  /// Converts PhotoForm to a JSON-friendly map
  Map<String, dynamic> toJson() {
    return {
      'PropertyHeading': heading,
      'PropertyDescription': description,
      'PropertyImages': propertyImages.map((file) => file.path).toList(),
      'FloorImages': floorImages.map((file) => file.path).toList(),
    };
  }

  /// Checks if the form has the required fields
  bool isValid() {
    return propertyImages.isNotEmpty &&
           heading.trim().isNotEmpty &&
           description.trim().isNotEmpty;
  }

  /// Throws an exception if form is invalid
  void assertValid() {
    if (propertyImages.isEmpty) {
      throw Exception('At least one property image is required.');
    }
    if (heading.trim().isEmpty) {
      throw Exception('Property heading is required.');
    }
    if (description.trim().isEmpty) {
      throw Exception('Property description is required.');
    }
  }

  /// Returns a list of validation error messages
  List<String> validationErrors() {
    List<String> errors = [];
    if (propertyImages.isEmpty) {
      errors.add('Please upload at least one property image.');
    }
    if (heading.trim().isEmpty) {
      errors.add('Heading is required.');
    }
    
    return errors;
  }
}
