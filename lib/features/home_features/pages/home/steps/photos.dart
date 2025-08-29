import 'dart:io';
import 'package:flutter/material.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/utils/imagepicker.dart';
import 'package:foreal_property/features/home_features/add_property_params/add_image_param.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/models/get_property_details.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/provider_steps/photo_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Photos extends ConsumerStatefulWidget {
  final PropertyDetailModel? propertyData;
  const Photos({super.key, this.propertyData});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PhotosState();
}

class _PhotosState extends ConsumerState<Photos> {
  final TextEditingController headingController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    headingController.dispose();
    descriptionController.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // ref.invalidate(addImageDataProvider);
      //ref.invalidate(photoFormProvider);
      ref.read(addImageDataProvider.notifier).update(
            (p) => p!.copyWith(propertyId: widget.propertyData!.propertyId),
          );

      if (widget.propertyData != null) {
        ref
            .read(addImageDataProvider.notifier)
            .updateAddImage(widget.propertyData);

        final imageData = ref.read(addImageDataProvider);

        headingController.text = imageData.propertyHeading ?? "";
        descriptionController.text = imageData.propertyDescription ?? "";
      }
    });
  }

  void showImagePickerDialog({required bool isFloorPlan}) async {
    final List<XFile>? pickedImages = await showDialog<List<XFile>>(
      context: context,
      builder: (context) => const ImagePickerOptions1(isMultiple: true),
    );

    if (pickedImages != null && pickedImages.isNotEmpty) {
      final newImages = pickedImages.map((e) => File(e.path)).toList();
      final timestamp = DateTime.now().millisecondsSinceEpoch;

      final customPaths = List.generate(
          newImages.length, (i) => 'property/${timestamp + i}.jpg');

      if (isFloorPlan) {
        ref.read(photoFormProvider.notifier).addFloorImages(newImages);
        ref.read(addImageDataProvider.notifier).update(
              (p) => p!.copyWith(
                floorImages: [...(p.floorImages ?? []), ...customPaths],
              ),
            );
      } else {
        ref.read(photoFormProvider.notifier).addPropertyImages(newImages);
        ref.read(addImageDataProvider.notifier).update(
              (p) => p!.copyWith(
                propertyImages: [...(p.propertyImages ?? []), ...customPaths],
              ),
            );
      }
    }
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //  ref.invalidate(photoFormProvider);

    ref.watch(addImageDataProvider).updatePropertyImages ?? [];
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    16.verticalSpace,
                    Text('Heading',
                        style: Theme.of(context).textTheme.bodyLarge),
                    16.verticalSpace,
                    CommonTextField(
                      label: 'Heading',
                      // validator: (value) {
                      //   if (value == null || value.trim().isEmpty) {
                      //     return 'Heading is required';
                      //   }
                      //   return null;
                      // },
                      controller: headingController,
                      onChanged: (value) {
                        ref
                            .read(photoFormProvider.notifier)
                            .updateHeading(value);
                      },
                      onSaved: (value) {
                        ref
                            .read(addImageDataProvider.notifier)
                            .update((p) => p!.copyWith(propertyHeading: value));
                      },
                    ),
                    16.verticalSpace,
                    Text('Description',
                        style: Theme.of(context).textTheme.bodyLarge),
                    16.verticalSpace,
                    TextFormField(
                      textInputAction: TextInputAction.done,
                      onChanged: (value) {
                        ref
                            .read(photoFormProvider.notifier)
                            .updateDescription(value);
                      },
                      onSaved: (value) {
                        ref.read(addImageDataProvider.notifier).update(
                            (p) => p!.copyWith(propertyDescription: value));
                      },
                      controller: descriptionController,
                      cursorColor: Colors.black,
                      minLines: 4,
                      maxLines: null,
                      decoration: InputDecoration(
                        labelText: 'Description',
                        labelStyle:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: const Color(0xFFB9B9B9),
                                ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Color(0xFFE2E2E2)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                      ),
                    ),
                    24.verticalSpace,
                    Text('Photo', style: Theme.of(context).textTheme.bodyLarge),
                    16.verticalSpace,
                    Column(
                      children: [
                        ImagePickerForm2(
                          context: context,
                          initialImages: widget
                              .propertyData
                              ?.addUpdatePropertyAdditionalDetailsModel
                              ?.propertyPics,
                          onSaved: (newValue) {
                            if (newValue == null || newValue.isEmpty) return;

                            final timestamp =
                                DateTime.now().millisecondsSinceEpoch;
                            final newImages =
                                newValue.map((e) => File(e.path)).toList();
                            final customPaths = List.generate(
                              newImages.length,
                              (i) => 'property/${timestamp + i}.jpg',
                            );

                            ref
                                .read(photoFormProvider.notifier)
                                .addPropertyImages(newImages);

                            ref.read(addImageDataProvider.notifier).update(
                                  (p) =>
                                      p!.copyWith(propertyImages: customPaths),
                                );
                          },
                        ),
                      ],
                    ),
                    16.verticalSpace,
                    Text('Floor Plans',
                        style: Theme.of(context).textTheme.bodyLarge),
                    16.verticalSpace,
                    ImagePickerForm2(
                      context: context,
                      // initialImages: widget.propertyData
                      //     ?.addUpdatePropertyAdditionalDetailsModel?.floorPics,
                      onSaved: (newValue) {
                        if (newValue == null || newValue.isEmpty) return;

                        final timestamp = DateTime.now().millisecondsSinceEpoch;
                        final newImages =
                            newValue.map((e) => File(e.path)).toList();
                        final customPaths = List.generate(
                          newImages.length,
                          (i) => 'property/${timestamp + i}.jpg',
                        );

                        ref
                            .read(photoFormProvider.notifier)
                            .addPropertyImages(newImages);

                        ref.read(addImageDataProvider.notifier).update(
                              (p) => p!.copyWith(floorImages: customPaths),
                            );
                      },
                    ),
                    30.verticalSpace,
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: const Offset(0, -3),
                    ),
                  ],
                ),
                child: BottomAppBar(
                  color: Colors.white,
                  child: PrimaryButton(
                    isLoading: ref.watch(propertyNotifierProvider).isLoading,
                    title: 'Next',
                    onClick: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                       

                        ref
                            .read(propertyNotifierProvider.notifier)
                            .addPropertyImage();
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




// }

class PopupImage extends StatelessWidget {
  final File imageFile;

  const PopupImage({super.key, required this.imageFile});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          Container(
            width: 600,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: FileImage(imageFile),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                'assets/images/ic_exit.png',
                height: 24,
                width: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}












