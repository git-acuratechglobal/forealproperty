import 'dart:io';
import 'package:flutter/material.dart';
import 'package:foreal_property/common/common_widgets.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/home_features/add_property_params/add_image_param.dart';
import 'package:foreal_property/features/home_features/add_property_provider/add_property.dart';
import 'package:foreal_property/features/home_features/pages/home/steps/provider_steps/photo_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Photos extends ConsumerStatefulWidget {
  const Photos({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PhotosState();
}

class _PhotosState extends ConsumerState<Photos> {
  late TextEditingController headingController;
  late TextEditingController descriptionController;

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
  final propertyId =
                  ref.watch(localStorageServiceProvider).getPropertyModel()?.id;

              if (propertyId != null) {
                ref.read(addImageDataProvider.notifier).update(
                      (p) => p!.copyWith(propertyId: propertyId),
                    );
              }
    });
  



    final photo = ref.read(photoFormProvider);

    headingController = TextEditingController(text: photo.heading ?? '');
    descriptionController =
        TextEditingController(text: photo.description ?? '');
  }

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final List<XFile>? pickedFiles = await _picker.pickMultiImage();

    if (pickedFiles != null && pickedFiles.isNotEmpty) {
      final newImages = pickedFiles.map((file) => File(file.path)).toList();

      List<String> customImagePaths = [];
      for (int i = 0; i < newImages.length; i++) {
        final timestamp = DateTime.now().millisecondsSinceEpoch + i;
        customImagePaths.add('"property/property$timestamp.jpg"');
      }

      ref.read(photoFormProvider.notifier).addImages(newImages);

      ref.read(addImageDataProvider.notifier).update(
            (p) => p!.copyWith(propertyImages: customImagePaths),
          );
      ref.read(addImageDataProvider.notifier).update(
            (p) => p!.copyWith(floorImages: customImagePaths),
          );
    }
  }

  void _removeImage(int index) {
    ref.read(photoFormProvider.notifier).removeImageAt(index);
  }

  void _showDialog(BuildContext context, File imageFile) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Dismiss",
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Align(
            alignment: Alignment.center,
            child: Material(
              color: Colors.transparent,
              child: PopupImage(imageFile: imageFile),
            ),
          ),
        );
      },
    );
  }

  void _showImagePickerDialog() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Take a Photo'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Choose from Gallery'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final photoForm = ref.watch(photoFormProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.verticalSpace,
              Text('Heading', style: Theme.of(context).textTheme.bodyLarge),
              16.verticalSpace,
              CommonTextField(
                label: 'Heading',
                controller: headingController,
                onChanged: (value) {
                  ref.read(photoFormProvider.notifier).updateHeading(value);
                },
                onSaved: (value) {
                  ref
                      .read(addImageDataProvider.notifier)
                      .update((p) => p!.copyWith(propertyHeading: value));
                },
              ),
              16.verticalSpace,
              Text('Description', style: Theme.of(context).textTheme.bodyLarge),
              16.verticalSpace,
              SizedBox(
                height: 116,
                child: TextFormField(
                  onChanged: (value) {
                    ref
                        .read(photoFormProvider.notifier)
                        .updateDescription(value);
                  },
                  onSaved: (value) {
                    ref
                        .read(addImageDataProvider.notifier)
                        .update((p) => p!.copyWith(propertyDescription: value));
                  },
                  controller: descriptionController,
                  cursorColor: Colors.black,
                  maxLines: null,
                  expands: true,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    labelStyle:
                        Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: Color(0xFFB9B9B9),
                            ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
              ),
              24.verticalSpace,
              Text('Photo', style: Theme.of(context).textTheme.bodyLarge),
              16.verticalSpace,
              InkWell(
                onTap: _showImagePickerDialog,
                child: Container(
                  width: 300.w,
                  height: 165.h,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/rectanglephoto.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        children: [
                          28.verticalSpace,
                          Center(
                            child: Image.asset(
                              'assets/images/photos.png',
                              height: 48.h,
                              width: 48.w,
                            ),
                          ),
                          8.verticalSpace,
                          Text(
                            'Click to Upload',
                            style: TextStyle(
                              color: Color(0xFF164C63),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          8.verticalSpace,
                          Text(
                            'pdf, Png or Jpg files, each up-to 10mb',
                            style: TextStyle(
                              color: const Color(0xFF494D60),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              16.verticalSpace,
              Text('Floor Plans', style: Theme.of(context).textTheme.bodyLarge),
              16.verticalSpace,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(photoForm.images.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Stack(
                          children: [
                            GestureDetector(
                              onTap: () =>
                                  _showDialog(context, photoForm.images[index]),
                              child: Container(
                                height: 100.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: FileImage(photoForm.images[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 5,
                              right: 5,
                              child: GestureDetector(
                                onTap: () => _removeImage(index),
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
                    }),
                    InkWell(
                      onTap: _showImagePickerDialog,
                      child: Image.asset(
                        'assets/images/groupphoto.png',
                        height: 99.h,
                        width: 99.w,
                      ),
                    ),
                  ],
                ),
              ),
              60.verticalSpace,
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, -3),
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
                ref.read(propertyNotifierProvider.notifier).addPropertyImage();
              }
            },
          ),
        ),
      ),
    );
  }
}

// class Photos extends ConsumerStatefulWidget {
//   const Photos({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _PhotosState();
// }

// class _PhotosState extends ConsumerState<Photos> {
//   void _showDialog(BuildContext context, File imageFile) {
//     showGeneralDialog(
//       context: context,
//       barrierDismissible: true,
//       barrierLabel: "Dismiss",
//       transitionDuration: const Duration(milliseconds: 300),
//       pageBuilder: (context, animation, secondaryAnimation) {
//         return Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24),
//           child: Align(
//             alignment: Alignment.center,
//             child: Material(
//               color: Colors.transparent,
//               child: PopupImage(imageFile: imageFile),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   List<File> _images = [];
//   final ImagePicker _picker = ImagePicker();

//   Future<void> _pickImage(ImageSource source) async {
//     final List<XFile>? pickedFiles = await _picker.pickMultiImage();

//     if (pickedFiles != null && pickedFiles.isNotEmpty) {
//       setState(() {
//         _images.addAll(pickedFiles.map((file) => File(file.path)));
//       });
//     }
//   }

//   void _showImagePickerDialog() {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: Wrap(
//             children: [
//               ListTile(
//                 leading: Icon(Icons.camera_alt),
//                 title: Text('Take a Photo'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   _pickImage(ImageSource.camera);
//                 },
//               ),
//               ListTile(
//                 leading: Icon(Icons.photo_library),
//                 title: Text('Choose from Gallery'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   _pickImage(ImageSource.gallery);
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   void _removeImage(int index) {
//     setState(() {
//       _images.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             16.verticalSpace,
//             Text(
//               'Heading',
//               style: Theme.of(context).textTheme.bodyLarge,
//             ),
//             16.verticalSpace,
//             CommonTextField(label: 'Heading'),
//             16.verticalSpace,
//             Text(
//               'Description',
//               style: Theme.of(context).textTheme.bodyLarge,
//             ),
//             16.verticalSpace,
//             SizedBox(
//               height: 116,
//               child: TextField(
//                 cursorColor: Colors.black,
//                 maxLines: null,
//                 expands: true,
//                 decoration: InputDecoration(
//                   labelText: 'Description',
//                   labelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
//                         color: Color(0xFFB9B9B9),
//                       ),
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(color: Color(0xFFE2E2E2)),
//                     borderRadius: BorderRadius.all(Radius.circular(12)),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide(color: Color(0xFFE2E2E2)),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Color(0xFFE2E2E2)),
//                     borderRadius: BorderRadius.all(Radius.circular(12)),
//                   ),
//                   errorBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.red),
//                     borderRadius: BorderRadius.all(Radius.circular(12)),
//                   ),
//                   focusedErrorBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.red),
//                     borderRadius: BorderRadius.all(Radius.circular(12)),
//                   ),
//                 ),
//               ),
//             ),
//             24.verticalSpace,
//             Text(
//               'Photo',
//               style: Theme.of(context).textTheme.bodyLarge,
//             ),
//             16.verticalSpace,
//             InkWell(
//               onTap: _showImagePickerDialog,
//               child: Container(
//                 width: 300.w,
//                 height: 165.h,
//                 child: Stack(
//                   //fit: StackFit.expand,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(12),
//                       child: Image.asset(
//                         'assets/images/rectanglephoto.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Column(

//                       children: [
//                         28.verticalSpace,
//                         Center(
//                           child: Image.asset(
//                             'assets/images/photos.png',
//                             height: 48.h,
//                             width: 48.w,
//                           ),
//                         ),
//                         8.verticalSpace,
//                         Text(
//                           'Click to Upload',
//                           style: TextStyle(
//                             color: Color(0xFF164C63),
//                             fontSize: 18.sp,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                         8.verticalSpace,
//                         Text(
//                           'pdf, Png or Jpg files, each up-to 10mb',
//                           style: TextStyle(
//                             color: const Color(0xFF494D60),
//                             fontSize: 12.sp,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             16.verticalSpace,
//             Text(
//               'Floor Plans',
//               style: Theme.of(context).textTheme.bodyLarge,
//             ),
//             16.verticalSpace,
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   ...List.generate(_images.length, (index) {
//                     return Padding(
//                       padding: EdgeInsets.only(right: 10),
//                       child: Stack(
//                         children: [
//                           GestureDetector(
//                             onTap: () => _showDialog(context, _images[index]),
//                             child: Container(
//                               height: 100.h,
//                               width: 100.w,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 image: DecorationImage(
//                                   image: FileImage(_images[index]),
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             top: 5,
//                             right: 5,
//                             child: GestureDetector(
//                               onTap: () => _removeImage(index),
//                               child: Image.asset(
//                                 'assets/images/ic_exit.png',
//                                 height: 24,
//                                 width: 24,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   }),
//                   InkWell(
//                     onTap: _showImagePickerDialog,
//                     child: Image.asset(
//                       'assets/images/groupphoto.png',
//                       height: 99.h,
//                       width: 99.w,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             60.verticalSpace,
//           ],
//         ),
//       ),
//     );
//   }
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















// class Popupimage4 extends StatefulWidget {
  
//   const Popupimage4({super.key});

//   @override
//   State<Popupimage4> createState() => _Popupimage4State();
// }

// class _Popupimage4State extends State<Popupimage4> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300.h,
//       width: 600.w,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           image: DecorationImage(
//             image: AssetImage('assets/images/homes.png'),
//             fit: BoxFit.cover,
//           )),
//     );
//   }
// }

// class Photos extends ConsumerStatefulWidget {
//   const Photos({super.key});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _PhotosState();
// }

// class _PhotosState extends ConsumerState<Photos> {
//   File? _image;
//   final ImagePicker _picker = ImagePicker();

//   Future<void> _pickImage(ImageSource source) async {
//     final XFile? pickedFile = await _picker.pickImage(source: source);
//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   void _showImagePickerDialog() {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: Wrap(
//             children: [
//               ListTile(
//                 leading: Icon(Icons.camera_alt),
//                 title: Text('Take a Photo'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   _pickImage(ImageSource.camera);
//                 },
//               ),
//               ListTile(
//                 leading: Icon(Icons.photo_library),
//                 title: Text('Choose from Gallery'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   _pickImage(ImageSource.gallery);
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             16.verticalSpace,
//             Text(
//               'Heading',
//               style: Theme.of(context).textTheme.bodyLarge,
//             ),
//             16.verticalSpace,
//             CommonTextField(label: 'Heading'),
//             16.verticalSpace,
//             Text(
//               'Description',
//               style: Theme.of(context).textTheme.bodyLarge,
//             ),
//             16.verticalSpace,
//             SizedBox(
//               height: 116,
//               child: TextField(
//                 cursorColor: Colors.black,
//                 maxLines: null,
//                 expands: true,
//                 decoration: InputDecoration(
//                   labelText: 'Description',
//                   labelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
//                         color: Color(0xFFB9B9B9),
//                       ),
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(color: Color(0xFFE2E2E2)),
//                     borderRadius: BorderRadius.all(Radius.circular(12)),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide(color: Color(0xFFE2E2E2)),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Color(0xFFE2E2E2)),
//                     borderRadius: BorderRadius.all(Radius.circular(12)),
//                   ),
//                   errorBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.red),
//                     borderRadius: BorderRadius.all(Radius.circular(12)),
//                   ),
//                   focusedErrorBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.red),
//                     borderRadius: BorderRadius.all(Radius.circular(12)),
//                   ),
//                 ),
//               ),
//             ),
//             16.verticalSpace,
//             Text(
//               'Photos',
//               style: Theme.of(context).textTheme.bodyLarge,
//             ),
//             16.verticalSpace,
//             InkWell(
//               onTap: _showImagePickerDialog,
//               child: Container(
//                 width: 327.w,
//                 height: 165.h,
//                 child: Stack(
//                   fit: StackFit.expand,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(12),
//                       child: Image.asset(
//                         'assets/images/rectanglephoto.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Column(
//                       children: [
//                         28.verticalSpace,
//                         Image.asset(
//                           'assets/images/photos.png',
//                           height: 48.h,
//                           width: 48.w,
//                         ),
//                         8.verticalSpace,
//                         Text(
//                           'Click to Upload',
//                           style: TextStyle(
//                             color: Color(0xFF164C63),
//                             fontSize: 18.sp,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                         8.verticalSpace,
//                         Text(
//                           'pdf, Png or Jpg files, each up-to 10mb',
//                           style: TextStyle(
//                             color: const Color(0xFF494D60),
//                             fontSize: 12.sp,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             16.verticalSpace,
//             Text(
//               'Floor Plans',
//               style: Theme.of(context).textTheme.bodyLarge,
//             ),
//             16.verticalSpace,
//             Row(
//               children: [
//                 Container(
//                   height: 100.h,
//                   width: 100.w,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     image: _image != null
//                         ? DecorationImage(
//                             image: FileImage(_image!),
//                             fit: BoxFit.cover,
//                           )
//                         : DecorationImage(
//                             image: AssetImage('assets/images/floor.png'),
//                             fit: BoxFit.cover,
//                           ),
//                   ),
//                   child: Align(
//                     alignment: Alignment(0.9, -0.7),
//                     child: Image.asset(
//                       'assets/images/ic_exit.png',
//                       height: 24,
//                       width: 24,
//                     ),
//                   ),
//                 ),
//                 15.horizontalSpace,
//                 InkWell(
//                   onTap: _showImagePickerDialog,
//                   child: Image.asset(
//                     'assets/images/groupphoto.png',
//                     height: 99.h,
//                     width: 99.w,
//                   ),
//                 ),
//               ],
//             ),
//             32.verticalSpace,
//           ],
//         ),
//       ),
//     );
//   }
// }
