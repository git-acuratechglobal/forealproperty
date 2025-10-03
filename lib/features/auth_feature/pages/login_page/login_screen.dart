import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/utils/appbutton.dart';
import 'package:foreal_property/core/utils/appsnackbar.dart';
import 'package:foreal_property/core/validator/validator.dart';
import 'package:foreal_property/features/auth_feature/auth_state/auth_state.dart';
import 'package:foreal_property/features/auth_feature/pages/sign_up_page/profile.dart';
import 'package:foreal_property/features/auth_feature/provider/auth_provider.dart';
import 'package:foreal_property/features/auth_feature/pages/sign_up_page/forgetpassword.dart';
import 'package:foreal_property/features/home_features/pages/home/bottomnavbar.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  bool isPasswordObscure = true;
  bool istoggle = false;
  final _key = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    ref.listenManual(authNotifierProvider, (_, next) {
      switch (next) {
        case AsyncData<AuthState?> data when data.value != null:
          if (data.value?.authEvent == AuthEvent.login) {
            final authState=data.value;
            if (authState?.user != null) {
              ref.read(userProvider.notifier).update((_) => data.value?.user);
              context.go('/home');
            }

            Utils.showSnackBar(context, authState?.response??"");
          }

          if (data.value?.authEvent == AuthEvent.register) {
            context.go('/login');
            Utils.showSnackBar(context, "User Register Sucessfully");
          }
        case AsyncError error:
          Utils.showSnackBar(context, error.error.toString());
      }
    });
  }
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(
    BuildContext context,
  ) {
    final validator = ref.watch(validatorsProvider);
    return Scaffold(
        resizeToAvoidBottomInset: true,
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/Background.png',
              ),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _key,
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                100.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 114.w,
                    height: 28.01.h,
                  ),
                ),
                100.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text('Hi, Welcome to Foreal Property',
                      style: Theme.of(context).textTheme.headlineMedium),
                ),
                16.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: AutoSizeText(
                    maxLines: 2,
                    'Enter your credentials to access your account.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: const Color(0xFF494D60),
                        ),
                  ),
                ),
                32.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextFormField(
                    validator: validator.validateEmail,
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFB9B9B9),
                      ),
                      hintText: "Email address",
                    ),
                    cursorColor: Colors.black,
                    onSaved: (newValue) {
                      ref
                          .read(authNotifierProvider.notifier)
                          .updateLoginParam('email', newValue ?? "");
                    },
                   
                  ),
                ),
                16.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextFormField(
                    obscureText: isPasswordObscure,
                    validator: validator.validatePassword,
                    controller: _passwordController,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFB9B9B9),
                        ),
                        hintText: "Password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isPasswordObscure = !isPasswordObscure;
                              });
                            },
                            icon: isPasswordObscure
                                ? Image.asset(
                                    'assets/images/password.png',
                                    height: 24.h,
                                    width: 24.w,
                                  )
                                : Image.asset(
                                    'assets/images/password2.png',
                                    height: 24.h,
                                    width: 24.w,
                                  ))),
                    cursorColor: Colors.black,
                    onSaved: (newValue) {
                      ref
                          .read(authNotifierProvider.notifier)
                          .updateLoginParam('password', newValue ?? "");
                    },
                  ),
                ),
                22.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      CupertinoSwitch(
                          activeTrackColor: const Color(0xFF1A1819),
                          value: istoggle,
                          onChanged: (value) {
                            setState(() {
                              istoggle = value;
                            });
                          }),
                      Row(
                        children: [
                          AutoSizeText(
                              softWrap: true,
                              maxLines: 2,
                              'Remember me',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: const Color(0xFF1A1819),
                                  )),
                        ],
                      ),
                      45.horizontalSpace,
                      InkWell(
                        onTap: () {
                          context.navPush(const Forgetpassword());
                        },
                        child: AutoSizeText(
                          softWrap: true,
                          maxLines: 1,
                        
                          overflow: TextOverflow.ellipsis,
                          'Forgot password?',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: const Color(0xFF164C63),
                              ),
                        ),
                      )
                    ],
                  ),
                ),
                30.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: PrimaryButton(
                    isLoading: ref.watch(authNotifierProvider).isLoading,
                    title: 'Login',
                    onClick: () {
                      if (_key.currentState!.validate()) {
                        _key.currentState!.save();
                        ref.read(authNotifierProvider.notifier).login();
                      }
                    },
                  ),
                ),
                100.verticalSpace,
              ]),
            ),
          ),
        ),
      ),
     bottomSheet: MediaQuery.of(context).viewInsets.bottom == 0
    ? Container(
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: InkWell(
          onTap: () {
            context.navPush(const ProfileScreen());
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
                  text: 'Register Now',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: const Color(0xFF164C63),
                      ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      )
    : const SizedBox.shrink(),
    );
  }
}
