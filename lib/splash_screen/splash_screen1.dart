import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/navigation.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/features/auth_feature/pages/login_page/login_screen.dart';
import 'package:foreal_property/features/auth_feature/provider/auth_provider.dart';
import 'package:foreal_property/features/home_features/pages/home/bottomnavbar.dart';
import 'package:foreal_property/onboarding/welcome_screeen1.dart';

class SplashScreen1 extends ConsumerStatefulWidget {
  const SplashScreen1({super.key});

  @override
  ConsumerState<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends ConsumerState<SplashScreen1> {
  bool _isStartAnimation = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _isStartAnimation = true;
      });
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 3), () {
        final user = ref.read(localStorageServiceProvider).getuser();
        final isOnBoadingComplete =
            ref.read(localStorageServiceProvider).getOnBoardingComplete() ??
                false;
        if (!isOnBoadingComplete) {
          context.navigateTo(WelcomeScreen1());
        }
        if (user == null) {
          context.navigateAndRemoveUntil(LoginScreen());
          return;
        }
        ref.read(userProvider.notifier).update((_) => user);
        context.navigateTo(HomeScreen());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
        color: _isStartAnimation ? Color(0xFF164C63) : Color(0xFFEBF3F5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Image.asset('assets/images/path78.png',
                      width: 109, height: 117)),
              AnimatedSwitcher(
                duration: Duration(seconds: 1),
                child: _isStartAnimation
                    ? Image.asset(
                        'assets/images/property2.png',
                        key: ValueKey('property2'),
                        width: 149.81.sp,
                        height: 208.77.sp,
                      )
                    : Image.asset(
                        'assets/images/property.png',
                        key: ValueKey('property1'),
                        width: 149.81.sp,
                        height: 208.77.sp,
                      ),
              ),
              57.verticalSpace,
              Expanded(
                child: AnimatedOpacity(
                  opacity: _isStartAnimation ? 1.0 : 0.0,
                  duration: Duration(seconds: 1),
                  child: Image.asset(
                    'assets/images/path78.png',
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
