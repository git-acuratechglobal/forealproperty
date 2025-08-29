import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/features/auth_feature/pages/sign_up_page/changepassword.dart';

class Forgetpassword extends ConsumerStatefulWidget {
  const Forgetpassword({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends ConsumerState<Forgetpassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFFFFFFF),
            Color(0xFFEBF3F5),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              60.verticalSpace,
              InkWell(
                onTap: () {
                  context.pop();
                },
                child: Image.asset(
                  'assets/images/arrow-left.png',
                  height: 24.h,
                  width: 24.w,
                ),
              ),
              32.verticalSpace,
              Text(
                'Forgot Password?',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: const Color(0xFF1A1B28),
                    ),
              ),
              16.verticalSpace,
              Text(
                'Enter your email or phone number associated with your account and we’ll send an email with instructions to reset your password.',
                style: TextStyle(
                  color: const Color(0xFF494D60),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
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
                  hintText: "Email address",
                ),
                cursorColor: Colors.black,
              ),
              32.verticalSpace,
          ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF164C63),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      context.push((const Changepassword()));
                    },
                    child: Text(
                      'Reset Password',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
