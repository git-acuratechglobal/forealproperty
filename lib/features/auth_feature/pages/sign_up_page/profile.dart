import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/core/utils/appbutton.dart';

import 'package:foreal_property/core/validator/validator.dart';
import 'package:foreal_property/features/auth_feature/provider/auth_provider.dart';
import 'package:foreal_property/features/auth_feature/params/sign_up_params.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  // File? _image;

  // final ImagePicker _picker = ImagePicker();

  // Future<void> _pickImage() async {
  //   final XFile? pickedFile =
  //       await _picker.pickImage(source: ImageSource.gallery);

  //   if (pickedFile != null) {
  //     setState(() {
  //       _image = File(pickedFile.path);
  //     });
  //   }
  // }

  bool isPasswordObscure = true;
  bool createPasssword = true;

  final _key = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _createController = TextEditingController();
  final TextEditingController _createAgainController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final validator = ref.watch(validatorsProvider);
    return Scaffold(
        body: Container(
      height: 1.sh,
      width: 1.sw,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/Background.png',
            ),
            fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              100.verticalSpace,
              Image.asset(
                'assets/images/logo.png',
                width: 114.w,
                height: 28.01.h,
              ),
              60.verticalSpace,
              SizedBox(
                width: 500,
                child: Text('Register your \nAccount',
                    style: Theme.of(context).textTheme.headlineMedium),
              ),
              37.verticalSpace,
              // Row(
              //   children: [
              //     InkWell(
              //       onTap: _pickImage,
              //       child: _image == null
              //           ? Image.asset(
              //               'assets/images/profileImage.png',
              //               height: 80.h,
              //               width: 80.w,
              //             )
              //           : CircleAvatar(
              //               radius: 40,
              //               backgroundImage: FileImage(_image!),
              //             ),
              //     ),
              //     16.horizontalSpace,
              //     Text(
              //       'Add Your Profile Picture',
              //       style: TextStyle(
              //         color: Color(0xFF164C63),
              //         fontSize: 14.sp,
              //         fontWeight: FontWeight.w700,
              //       ),
              //     )
              //   ],
              // ),
              24.verticalSpace,
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFB9B9B9),
                  ),
                  hintText: "Full name",
                ),
                cursorColor: Colors.black,
                onSaved: (newValue) {
                  ref
                      .read(signUpParamsDataProvider.notifier)
                      .update((p) => p!.copyWith(firstName: newValue!));
                },
              ),
              16.verticalSpace,
              TextFormField(
                controller: _emailController,
                validator: validator.validateEmail,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFB9B9B9),
                  ),
                  hintText: "Email address",
                ),
                cursorColor: Colors.black,
                onSaved: (newValue) {
                  ref
                      .read(signUpParamsDataProvider.notifier)
                      .update((p) => p!.copyWith(email: newValue!));
                },
              ),
              16.verticalSpace,
              TextFormField(
                controller: _createController,
                validator: validator.validatePassword,
                obscureText: isPasswordObscure,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFB9B9B9),
                    ),
                    hintText: "Create Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPasswordObscure = !isPasswordObscure;
                          });
                        },
                        icon: isPasswordObscure
                            ? Image.asset(
                                'assets/images/password2.png',
                                height: 24.h,
                                width: 24.w,
                              )
                            : Image.asset(
                                'assets/images/password.png',
                                height: 24.h,
                                width: 24.w,
                              ))),
                cursorColor: Colors.black,
                onSaved: (newValue) {
                  ref
                      .read(signUpParamsDataProvider.notifier)
                      .update((p) => p!.copyWith(password: newValue!));
                },
              ),
              16.verticalSpace,
              TextFormField(
                controller: _createAgainController,
                validator: (value) {
                  final error = validator.validatePassword(value);
                  if (error != null) return error;
                  if (value != _createController.text) {
                    return "Passwords do not match";
                  }
                  return null;
                },
                obscureText: createPasssword,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFB9B9B9),
                    ),
                    hintText: "Create Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            createPasssword = !createPasssword;
                          });
                        },
                        icon: createPasssword
                            ? Image.asset(
                                'assets/images/password2.png',
                                height: 24.h,
                                width: 24.w,
                              )
                            : Image.asset(
                                'assets/images/password.png',
                                height: 24.h,
                                width: 24.w,
                              ))),
                cursorColor: Colors.black,
                onSaved: (newValue) {
                  ref
                      .read(signUpParamsDataProvider.notifier)
                      .update((p) => p!.copyWith(confirmPassword: newValue!));
                },
              ),
              24.verticalSpace,

              PrimaryButton(
                  isLoading: ref.watch(authNotifierProvider).isLoading,
                  title: 'Submit',
                  onClick: () {
                    if (_key.currentState!.validate()) {
                      _key.currentState!.save();
                      ref.read(authNotifierProvider.notifier).register();
                    }
                  }),
            ],
          ),
        ),
      ),
    ));
  }
}
