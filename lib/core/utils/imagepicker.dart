import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/s3_sigleton/s3_widget.dart';
import 'package:foreal_property/core/utils/network_image_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import '../network/apiend_points.dart';

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
                          child: NetworkImageWidget(
                              imageUrl:
                              '${ApiEndPoints.imageUrl}${imageUrl}')
                          // S3ImageDisplayWidget(
                          //   imagePath: imageUrl,
                          // ),
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

class ImagePickerForm3 extends StatefulWidget {
  final BuildContext context;
  final List<String>? initialImages;
  final List<XFile> pickedImages;
  final void Function(List<String> removedImages)? onRemovedInitialImages;
  final FormFieldSetter<List<XFile>>? onSaved;

  const ImagePickerForm3({
    Key? key,
    this.initialImages,
    required this.context,
    this.onRemovedInitialImages,
    this.onSaved,
    this.pickedImages = const [],
  }) : super(key: key);

  @override
  _ImagePickerForm3State createState() => _ImagePickerForm3State();
}

class _ImagePickerForm3State extends State<ImagePickerForm3> {
  late List<String> _currentImages;
  final List<String> _removedInitialImages = [];
  List<XFile> _pickedImages = [];

  @override
  void initState() {
    super.initState();
    _currentImages = List.from(widget.initialImages ?? []);
    _pickedImages=List.from(widget.pickedImages ?? []);
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
                              InkWell(
                                onTap: () {
                                  _showDialog2(context, file.path, false);
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.sp),
                                  child: Image.file(
                                    File(file.path),
                                    width: 100.w,
                                    height: 100.h,
                                    fit: BoxFit.cover,
                                  ),
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
                          child: InkWell(
                              onTap: () {
                                _showDialog2(context, imageUrl, true);
                              },
                              child: NetworkImageWidget(
                                  imageUrl:
                                      '${ApiEndPoints.imageUrl}${imageUrl}')
                              // S3ImageDisplayWidget(
                              //   imagePath: imageUrl,
                              // ),
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

                // // Add new image button
                // if ((state.value!.length + _currentImages.length) < 6)
                GestureDetector(
                  onTap: () async {
                    final pickedImages = await showDialog<List<dynamic>>(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
                        return const ImagePickerOptions2(isMultiple: true);
                      },
                    );

                    if (pickedImages != null && pickedImages.isNotEmpty) {
                      setState(() {
                        state.didChange([...state.value ?? [], ...pickedImages]
                            .cast<XFile>()
                            .toList());
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

  void _showDialog2(
      BuildContext context, String imagePath, bool isNetworkImage) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Dismiss",
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Align(
          alignment: Alignment.center,
          child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: switch (isNetworkImage) {
                      true => NetworkImageWidget(
                          imageUrl: '${ApiEndPoints.imageUrl}${imagePath}'),
                      false => Image.file(
                          File(imagePath),
                          fit: BoxFit.cover,
                        )
                    },
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(
                        Icons.clear,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        context.pop();
                      },
                    ),
                  )
                ],
              )),
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

class ImagePickerOptions2 extends StatelessWidget {
  final bool isMultiple;

  const ImagePickerOptions2({
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
              title: Text("Camera",
                  style: Theme.of(context).textTheme.titleMedium),
              leading: Icon(Icons.camera_alt,
                  color: Theme.of(context).colorScheme.secondary),
              onTap: () async {
                final cameras = await availableCameras();
                final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MultiShotCamera(camera: cameras.first)));

                List<XFile> images = result;

                Navigator.of(context).pop(images);
              }),
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

class MultiShotCamera extends StatefulWidget {
  final CameraDescription camera;

  const MultiShotCamera({super.key, required this.camera});

  @override
  State<MultiShotCamera> createState() => _MultiShotCameraState();
}

class _MultiShotCameraState extends State<MultiShotCamera> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  List<XFile> capturedImages = [];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
    );

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.black,
    ));
    _controller = CameraController(
      enableAudio: false,
      widget.camera,
      ResolutionPreset.ultraHigh,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _takePicture() async {
    try {
      await _initializeControllerFuture;
      final image = await _controller.takePicture();

      setState(() {
        capturedImages.add(image);
      });

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        }
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                children: [
                  Stack(
                    children: [
                      FittedBox(
                        fit: BoxFit.contain,
                        child: SizedBox(
                          width: _controller.value.previewSize!.height,
                          height: _controller.value.previewSize!.width,
                          child: CameraPreview(_controller),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Spacer(),
                              FloatingActionButton(
                                onPressed: _takePicture,
                                child: const Icon(
                                  Icons.camera_alt,
                                  color: Colors.black,
                                ),
                              ),
                              const Spacer(),
                              if (capturedImages.isNotEmpty)
                                FloatingActionButton(
                                  backgroundColor: Colors.green,
                                  onPressed: () {
                                    Navigator.pop(context, capturedImages);
                                  },
                                  child: const Icon(Icons.check),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  10.verticalSpace,
                  Expanded(
                    child: ListView.separated(
                      controller: _scrollController,
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 20),
                      scrollDirection: Axis.horizontal,
                      itemCount: capturedImages.length,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:
                                Image.file(File(capturedImages[index].path)));
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return 10.horizontalSpace;
                      },
                    ),
                  ),
                ],
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
