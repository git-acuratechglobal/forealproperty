import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/features/auth_feature/pages/login_page/login_screen.dart';

import 'package:foreal_property/features/auth_feature/pages/sign_up_page/changepassword.dart';
import 'package:foreal_property/features/auth_feature/provider/auth_provider.dart';
import 'package:image_picker/image_picker.dart';

class Updateprofile extends ConsumerStatefulWidget {
  const Updateprofile({super.key});

  @override
  ConsumerState<Updateprofile> createState() => _UpdateprofileState();
}

class _UpdateprofileState extends ConsumerState<Updateprofile> {
  File? _image;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider);
    return Scaffold(
      //   extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFFEBF3F5),

      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  Container(
                    height: 200,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              'Profile',
                              style: TextStyle(
                                color: const Color(0xFF1A1B28),
                                fontSize: 20.sp,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 24, bottom: 42),
                          child: InkWell(
                            onTap: () {
                              context.pop();
                            },
                            child: Image.asset(
                              'assets/images/exit.png',
                              height: 15.h,
                              width: 15.w,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  55.verticalSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: InkWell(
                      onTap: _pickImage,
                      child: Text(
                        'Change Profile Picture',
                        style: TextStyle(
                          color: const Color(0xFF164C63),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  24.verticalSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: TextFormField(
                      initialValue: user?.firstName,
                      decoration: InputDecoration(
                        hintText: 'John Snow',
                        helperStyle: TextStyle(
                          color: const Color(0xFF1A1B28),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  24.verticalSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: TextFormField(
                      initialValue: user?.email,
                      decoration: InputDecoration(
                        hintText: 'john.snow@example.com',
                        helperStyle: TextStyle(
                          color: const Color(0xFF1A1B28),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 24),
                  //   child: TextFormField(
                  //     decoration: InputDecoration(
                  //       hintStyle: TextStyle(
                  //         fontSize: 16,
                  //         fontWeight: FontWeight.w500,
                  //         color: Color(0xFF1A1B28),
                  //       ),
                  //       prefixIcon: Row(
                  //         mainAxisSize: MainAxisSize.min,
                  //         children: [
                  //           5.horizontalSpace,
                  //           Padding(
                  //             padding: const EdgeInsets.all(5),
                  //             child: Image.asset(
                  //               'assets/images/country.png',
                  //               width: 31.w,
                  //               height: 22.h,
                  //             ),
                  //           ),
                  //           7.horizontalSpace,
                  //           Image.asset(
                  //             'assets/images/Vector-2.png',
                  //             height: 12.h,
                  //             width: 12.w,
                  //           ),
                  //           7.horizontalSpace,
                  //         ],
                  //       ),
                  //       hintText: "123 456 7890",
                  //     ),
                  //     cursorColor: Colors.black,
                  //   ),
                  // ),
                  32.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/lock-2.png',
                        height: 24,
                        width: 24,
                      ),
                      4.horizontalSpace,
                      InkWell(
                        onTap: () {
                          context.navigateTo(Changepassword());
                        },
                        child: Text(
                          'Change Password',
                          style: TextStyle(
                            color: const Color(0xFF164C63),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                  42.verticalSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF164C63),
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: Text('Update Changes')),
                    ),
                  ),
                  32.verticalSpace,

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: PrimaryButton(
                      isLoading: ref.watch(authNotifierProvider).isLoading,
                      title: 'LogOut',
                      onClick: () {
                        ref
                            .read(localStorageServiceProvider)
                            .clearUser()
                            .then((val) {
                          context.navigateAndRemoveUntil(LoginScreen());
                        });
                      },
                    ),
                  ),
                ],
              ),
              Positioned(
                  top: 130,
                  child: _image == null
                      ? Image.asset(
                          'assets/images/updateprofile.png',
                          height: 110.h,
                          width: 110.w,
                        )
                      : Container(
                          // width:
                          //     120,
                          // height:
                          //     120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 10,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 55,
                            backgroundImage: FileImage(_image!),
                          ),
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
