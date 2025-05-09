import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/theme.dart';
import 'package:foreal_property/core/services/local_storage_service/local_storage_service.dart';
import 'package:foreal_property/splash_screen/splash_screen1.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
   final prefs = await SharedPreferences.getInstance();
  runApp(ProviderScope(
    overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      child:
          //   DevicePreview(
          //   enabled: !kReleaseMode,
          //   builder: (context) => MyApp(), // Wrap your app
          // ),
          MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            title: 'Foreal Property',
            theme: Themes.lightTheme,
            home: SplashScreen1(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
