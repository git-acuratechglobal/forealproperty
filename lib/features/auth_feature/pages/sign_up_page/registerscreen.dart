import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/auth_feature/pages/login_page/login_screen.dart';
import 'package:foreal_property/features/auth_feature/pages/sign_up_page/profile.dart';

class Registerscreen extends ConsumerStatefulWidget {
  const Registerscreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends ConsumerState<Registerscreen> {
  var isobscureText;
  var isObscureText;
  bool istoggle = false;
  @override
  void initState() {
    super.initState();
    isobscureText = true;
    isObscureText = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody :true,
    // resizeToAvoidBottomInset: false,
      body: Container(
          height: 1.sh,
          width: 1.sw,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/Background.png',
                  
                ),
                fit: BoxFit.cover
            ),
           
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  100.verticalSpace,
                  Image.asset(
                    'assets/images/logo.png',
                    width: 114.w,
                    height: 28.01.h,
                  ),
                  100.verticalSpace,
                  SizedBox(
                    width: 500,
                    child: Text('Register your \nAccount',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                  16.verticalSpace,
                  Text(
                    'Sign up with socials or fill the form to continue.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: const Color(0xFF494D60),
                        ),
                  ),
                  32.verticalSpace,
                  TextFormField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFB9B9B9),
                      ),
                      prefixIcon: Row(
                        mainAxisSize:
                            MainAxisSize.min, // Ensure the row doesn't expand
                        children: [
                          5.horizontalSpace,
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              'assets/images/country.png',
                              width: 31.w,
                              height: 22.h,
                            ),
                          ),
                          7.horizontalSpace,
                          Image.asset(
                            'assets/images/Vector-2.png',
                            height: 12.h,
                            width: 12.w,
                          ),
                          7.horizontalSpace,
                        ],
                      ),
                      hintText: "Phone number",
                    ),
                    cursorColor: Colors.black,
                  ),
                  16.verticalSpace,
                  TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFB9B9B9),
                        ),
                        hintText: "Create Password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isobscureText = !isobscureText;
                              });
                            },
                            icon: isobscureText
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
                  ),
                  16.verticalSpace,
                  TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFB9B9B9),
                        ),
                        hintText: "Create Password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            icon: isObscureText
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
                  ),
                  24.verticalSpace,
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF164C63),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      context.navPush(const ProfileScreen());
                    },
                    child: Text(
                      'Submit',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                  16.verticalSpace,
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "By submitting, I accept Foreal Property's ",
                            style: TextStyle(
                              color: const Color(0xFF494D60),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms of use',
                            style: TextStyle(
                              color: const Color(0xFF1A1819),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: ' & ',
                            style: TextStyle(
                              color: const Color(0xFF494D60),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy.',
                            style: TextStyle(
                              color: const Color(0xFF1A1819),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                45.verticalSpace,
                ],
              ),
            ),
          )),
      bottomSheet: Container(
        width: double.infinity,
        // height: 96.h,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: InkWell(
            onTap: () {
              context.navPush(const LoginScreen());
            },
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Don’t have an account? ',
                    style: TextStyle(
                      color: const Color(0xFF494D60),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: 'Login Now',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: const Color(0xFF164C63),
                        ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
