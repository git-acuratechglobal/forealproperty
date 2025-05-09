import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/extension.dart';

class Themes {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: "Plus Jakarta Sans",
    // scaffoldBackgroundColor: Color(0xFFD7ED5D),
    colorScheme: ColorScheme.light(primary: Colors.white),
    textTheme: _textTheme.apply(
      bodyColor: Colors.black,
      displayColor: Colors.black,
    ),
     inputDecorationTheme: InputDecorationTheme(
        border:  OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.all(Radius.circular(38)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.all(Radius.circular(38)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.all(Radius.circular(38)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(38)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(38)),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      minimumSize: Size.fromHeight(56),
      shape: StadiumBorder(),
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontFamily: "Plus Jakarta Sans",
        fontWeight: FontWeight.w700,
      ),
    )),
  );

  static TextTheme get _textTheme {
    return Typography.englishLike2021.copyWith(
      headlineLarge: TextStyle(
        fontSize: 48.sp,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontFamily: "Plus Jakarta Sans",
        fontVariations: FontVariations.w800,
        height: 1.10,
      ),
      headlineMedium: TextStyle(
        fontSize: 28.sp,
        fontFamily: "Plus Jakarta Sans",
        fontVariations: FontVariations.w700,
        height: 1.10,
        letterSpacing: -0.56,
      ),
      headlineSmall: TextStyle(
        fontFamily: "Plus Jakarta Sans",
        fontSize: 24.sp,
        fontVariations: FontVariations.w700,
      ),
      titleLarge: TextStyle(
        fontFamily: "Plus Jakarta Sans",
        fontSize: 18.sp,
        fontVariations: FontVariations.w700,
      ),
      titleMedium: TextStyle(
        fontFamily: "Plus Jakarta Sans",
        fontSize: 16.sp,
        fontVariations: FontVariations.w400,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Plus Jakarta Sans",
        fontSize: 14.sp,
         fontVariations: FontVariations.w700,
      ),
      bodyMedium: TextStyle(
          fontFamily: "Plus Jakarta Sans",
          fontSize: 14.sp,
          fontVariations: FontVariations.w400,
         // color: Color(0xFF777777)
          ),
      bodySmall:  TextStyle(
        fontFamily: "Plus Jakarta Sans",
        fontSize: 12.sp,
        fontVariations: FontVariations.w400,
        height: 1.30,
        

      ),
    );
  }
}
