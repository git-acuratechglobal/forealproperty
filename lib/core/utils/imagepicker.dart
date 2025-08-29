import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/core/s3_sigleton/s3_widget.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerForm2 extends StatefulWidget {
  final BuildContext context;
  final List<String>? initialImages;
  final void Function(List<String> removedImages)? onRemovedInitialImages;
  final FormFieldSetter<List<XFile>>? onSaved;

  const ImagePickerForm2({
    Key? key,
    this.initialImages,
    required this.context,
    this.onRemovedInitialImages,
    this.onSaved,
  }) : super(key: key);

  @override
  _ImagePickerForm2State createState() => _ImagePickerForm2State();
}

class _ImagePickerForm2State extends State<ImagePickerForm2> {
  late List<String> _currentImages;
  final List<String> _removedInitialImages = [];
  List<XFile> _pickedImages = [];

  @override
  void initState() {
    super.initState();
    _currentImages = List.from(widget.initialImages ?? []);
  }

  @override
  Widget build(BuildContext context) {
    return FormField<List<XFile>>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onSaved: widget.onSaved,
      initialValue: _pickedImages,
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 10.w,
              runSpacing: 10.h,
              children: [
                // Show picked images
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.sp),
                  child: SizedBox(
                    height: 130,
                    child: ReorderableListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      onReorder: (oldIndex, newIndex) {
                        if (oldIndex < newIndex) newIndex -= 1;

                        final item = state.value!.removeAt(oldIndex);
                        state.value!.insert(newIndex, item);

                        setState(() {}); // Ensure this is inside StatefulWidget
                      },
                      children: state.value!.map((file) {
                        return Padding(
                          key: ValueKey(file.path),
                          padding: const EdgeInsets.only(right: 10),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.sp),
                                child: Image.file(
                                  File(file.path),
                                  width: 100.w,
                                  height: 100.h,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    state.value!.remove(file);
                                  });
                                },
                                child: Image.asset(
                                  'assets/images/ic_exit.png',
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),

                // Show initial network images
                ..._currentImages.map(
                  (imageUrl) => Stack(
                    alignment: Alignment.topRight,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.sp),
                        child: SizedBox(
                          width: 100.w,
                          height: 100.h,
                          child: S3ImageDisplayWidget(
                            imagePath: imageUrl,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            // Remove from the local list
                            _currentImages.remove(imageUrl);

                            // Track removed URLs
                            _removedInitialImages.add(imageUrl);

                            // Notify parent of removed images
                            widget.onRemovedInitialImages
                                ?.call(_removedInitialImages);
                          });
                        },
                        child: const CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.red,
                          child:
                              Icon(Icons.close, size: 16, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),

                // Add new image button
                if ((state.value!.length + _currentImages.length) < 6)
                  GestureDetector(
                    onTap: () async {
                      final pickedImages = await showDialog<List<dynamic>>(
                        barrierDismissible: true,
                        context: context,
                        builder: (context) {
                          return const ImagePickerOptions1(isMultiple: true);
                        },
                      );

                      if (pickedImages != null && pickedImages.isNotEmpty) {
                        setState(() {
                          state.didChange([
                            ...state.value ?? [],
                            ...pickedImages
                          ].take(6).cast<XFile>().toList());
                        });
                      }
                    },
                    child: Image.asset(
                      'assets/images/groupphoto.png',
                      height: 99.h,
                      width: 99.w,
                    ),
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class ImagePickerOptions1 extends StatelessWidget {
  final bool isMultiple;

  const ImagePickerOptions1({
    Key? key,
    this.isMultiple = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Select source",
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w700,
            ),
      ),
      content: Wrap(
        children: [
          ListTile(
            title:
                Text("Camera", style: Theme.of(context).textTheme.titleMedium),
            leading: Icon(Icons.camera_alt,
                color: Theme.of(context).colorScheme.secondary),
            onTap: () async {
              final picker = ImagePicker();
              final image = await picker.pickImage(
                  source: ImageSource.camera, imageQuality: 70);
              Navigator.of(context).pop(image != null ? [image] : null);
            },
          ),
          const Divider(),
          ListTile(
            title:
                Text("Gallery", style: Theme.of(context).textTheme.titleMedium),
            leading: Icon(Icons.image,
                color: Theme.of(context).colorScheme.secondary),
            onTap: () async {
              final picker = ImagePicker();
              final images = isMultiple
                  ? await picker.pickMultiImage(imageQuality: 70)
                  : [
                      await picker.pickImage(
                          source: ImageSource.gallery, imageQuality: 70)
                    ].whereType<XFile>().toList();
              Navigator.of(context).pop(images);
            },
          ),
        ],
      ),
    );
  }
}
