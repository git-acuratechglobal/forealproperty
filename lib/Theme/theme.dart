import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foreal_property/Theme/extension.dart';

class Themes {
  static final lightTheme = ThemeData(
    chipTheme: ChipThemeData(
      backgroundColor: const Color(0xFF75CBCD),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
      ),
    ),
    scaffoldBackgroundColor: const Color(0xFFEBF3F5),
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: "Plus Jakarta Sans",
    // scaffoldBackgroundColor: Color(0xFFD7ED5D),
    colorScheme: const ColorScheme.light(primary: Colors.white),
    textTheme: _textTheme.apply(
      bodyColor: Colors.black,
      displayColor: Colors.black,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.black, // 👈 your custom cursor color
      selectionColor: Color(0xFFB2EBF2), // optional: text highlight color
      selectionHandleColor: Color(0xFF75CBCD), // optional: draggable handle
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xFF164C63), // ok , cancel buttons
      ),
    ),
    timePickerTheme: TimePickerThemeData(
        backgroundColor: Colors.white,
        dialHandColor: const Color(0xFF164C63),
        dialBackgroundColor: Colors.white,
        dialTextColor: WidgetStateColor.resolveWith((states) =>
            states.contains(WidgetState.selected)
                ? Colors.white
                : const Color(0xFF164C63)),
        entryModeIconColor: Colors.white,
        hourMinuteTextColor: Colors.white,
        hourMinuteColor: const Color(0xFF164C63),
        helpTextStyle: const TextStyle(color: Color(0xFF164C63), fontSize: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        dayPeriodColor: const Color(0xFF164C63),
        dayPeriodTextColor: WidgetStateColor.resolveWith((states) =>
            states.contains(WidgetState.selected)
                ? Colors.white
                : const Color(0xFF164C63)),
        dayPeriodBorderSide: const BorderSide(
          color: Color(0xFF164C63),
        )),
    datePickerTheme: DatePickerThemeData(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      headerBackgroundColor: const Color(0xFF164C63),
      headerForegroundColor: Colors.white,
      headerHeadlineStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      dayStyle: const TextStyle(
        fontSize: 16,
        color: Color(0xFF164C63),
      ),
      todayBackgroundColor:
          WidgetStateProperty.all(const Color.fromARGB(255, 230, 236, 239)),
      todayForegroundColor: WidgetStateProperty.all(const Color(0xFF164C63)),
      todayBorder: const BorderSide(color: Colors.blueAccent, width: 2),
      cancelButtonStyle: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(const Color(0xFF164C63)),
      ),
      confirmButtonStyle: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(const Color(0xFF164C63)),
      ),
      dayBackgroundColor: WidgetStateProperty.resolveWith<Color?>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return const Color(0xFF164C63);
          }
          return null;
        },
      ),
      dayForegroundColor: WidgetStateProperty.resolveWith<Color?>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.white;
          }
          return null;
        },
      ),
      dividerColor: Colors.transparent,
    ),

    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
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
      minimumSize: const Size.fromHeight(56),
      shape: const StadiumBorder(),
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
      textStyle: const TextStyle(
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
      bodySmall: TextStyle(
        fontFamily: "Plus Jakarta Sans",
        fontSize: 12.sp,
        fontVariations: FontVariations.w400,
        height: 1.30,
      ),
    );
  }
}
