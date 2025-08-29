import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/utils/appsnackbar.dart';
import 'package:foreal_property/core/validator/validator.dart';
import 'package:foreal_property/features/auth_feature/auth_state/auth_state.dart';
import 'package:foreal_property/features/auth_feature/params/change_password_params.dart';
import 'package:foreal_property/features/auth_feature/provider/auth_provider.dart';

class Changepassword extends ConsumerStatefulWidget {
  const Changepassword({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends ConsumerState<Changepassword> {
  final _key = GlobalKey<FormState>();
  bool isNewPasswordObscure = true;
  bool isConfirmPasswordObscure = true;

  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void initState() {
    super.initState();



    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

   
      final userId = ref.read(localStorageServiceProvider).getuser()?.userId;
      if (userId != null) {
        ref.read(changePasswordParamsDataProvider.notifier).update(
              (p) => p.copyWith(userId: userId.toString()),     
            );
      }

      
    });
    ref.listenManual(authNotifierProvider, (_, next) {
      switch (next) {
        case AsyncData<AuthState?> data when data.value != null:
          if (data.value?.authEvent == AuthEvent.changePassword) {
            context.pop();
          }
        case AsyncError error:
          Utils.showSnackBar(context, error.error.toString());
      }
    });
  }

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final validator = ref.read(validatorsProvider);

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
        body: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              60.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: Image.asset(
                    'assets/images/arrow-left.png',
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
              32.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Change Password',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              16.verticalSpace,

              /// New Password Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextFormField(
                  controller: _newPasswordController,
                  validator: validator.validatePassword,
                  obscureText: isNewPasswordObscure,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFB9B9B9),
                    ),
                    hintText: "New Password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isNewPasswordObscure = !isNewPasswordObscure;
                        });
                      },
                      icon: isNewPasswordObscure
                          ? Image.asset(
                              'assets/images/password.png',
                              height: 24.h,
                              width: 24.w,
                            )
                          : Image.asset(
                              'assets/images/password2.png',
                              height: 24.h,
                              width: 24.w,
                            ),
                    ),
                  ),
                  cursorColor: Colors.black,
                ),
              ),
              24.verticalSpace,

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextFormField(
                  controller: _confirmPasswordController,
                  validator: (value) {
                    final error = validator.validatePassword(value);
                    if (error != null) return error;
                    if (value != _newPasswordController.text) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                  obscureText: isConfirmPasswordObscure,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFB9B9B9),
                    ),
                    hintText: "Confirm Password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isConfirmPasswordObscure = !isConfirmPasswordObscure;
                        });
                      },
                      icon: isConfirmPasswordObscure
                          ? Image.asset(
                              'assets/images/password.png',
                              height: 24.h,
                              width: 24.w,
                            )
                          : Image.asset(
                              'assets/images/password2.png',
                              height: 24.h,
                              width: 24.w,
                            ),
                    ),
                  ),
                  cursorColor: Colors.black,
                ),
              ),
              24.verticalSpace,

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: PrimaryButton(
                  isLoading: ref.watch(authNotifierProvider).isLoading,
                  title: 'Update Password',
                  onClick: () {
                    if (_key.currentState!.validate()) {
                      ref
                          .read(changePasswordParamsDataProvider.notifier)
                          .update((p) => p.copyWith(
                                newPassword: _newPasswordController.text,
                                confirmPassword:
                                    _confirmPasswordController.text,
                              ));
                      ref.read(authNotifierProvider.notifier).changePassword();
                    }
                  },
                ),
              ),
              16.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
