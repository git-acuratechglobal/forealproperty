import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhotoFormModel {
  String? heading;
  String? description;
  List<File> images;

  PhotoFormModel({
    this.heading,
    this.description,
    List<File>? images,
  }) : images = images ?? [];

  PhotoFormModel copyWith({
    String? heading,
    String? description,
    List<File>? images,
  }) {
    return PhotoFormModel(
      heading: heading ?? this.heading,
      description: description ?? this.description,
      images: images ?? this.images,
    );
  }
}
class PhotoFormNotifier extends StateNotifier<PhotoFormModel> {
  PhotoFormNotifier() : super(PhotoFormModel());

  void updateHeading(String value) {
    state = state.copyWith(heading: value);
  }

  void updateDescription(String value) {
    state = state.copyWith(description: value);
  }

  void addImages(List<File> newImages) {
    final updatedImages = [...state.images, ...newImages];
    state = state.copyWith(images: updatedImages);
  }

  void removeImageAt(int index) {
    final updatedImages = List<File>.from(state.images)..removeAt(index);
    state = state.copyWith(images: updatedImages);
  }

  void clearForm() {
    state = PhotoFormModel();
  }
}

final photoFormProvider = StateNotifierProvider<PhotoFormNotifier, PhotoFormModel>((ref) {
  return PhotoFormNotifier();
});
