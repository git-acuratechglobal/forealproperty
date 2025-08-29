import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final bool isLoading;
  final VoidCallback? onClick;
  final Size? fixedSize;
  final bool safeArea;
  final double radius;
  const PrimaryButton(
      {super.key,
      required this.title,
      this.isLoading = false,
      required this.onClick,
      this.fixedSize,
      this.safeArea = true,
      this.radius = 30});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF164C63),
          foregroundColor: Colors.white,
          fixedSize: fixedSize,
          disabledBackgroundColor: const Color(0xFF164C63),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          )),
      onPressed: switch (isLoading) {
        true => null,
        false => onClick,
      },
      child: switch (isLoading) {
        false => Center(
              child: Text(
            title,
            textAlign: TextAlign.center,
          )),
        true => LoadingAnimationWidget.twistingDots(
            size: 28,
            rightDotColor: const Color(0xFFEBF3F5),
            leftDotColor: Colors.white)
      },
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final String title;
  final bool isLoading;
  final VoidCallback? onClick;
  final Size? fixedSize;
  final bool safeArea;
  final double fontSize;
  final double radius;
  const SecondaryButton(
      {super.key,
      required this.title,
      this.isLoading = false,
      required this.onClick,
      this.fixedSize,
      this.safeArea = true,
      this.fontSize = 18,
      this.radius = 30});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          fixedSize: fixedSize,
          side: const BorderSide(color: Colors.grey),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          )),
      onPressed: switch (isLoading) {
        true => null,
        false => onClick,
      },
      child: switch (isLoading) {
        false => Center(
              child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: fontSize),
          )),
        true => LoadingAnimationWidget.twistingDots(
            size: 28,
            rightDotColor: const Color(0xFFEBF3F5),
            leftDotColor: Colors.white)
      },
    );
  }
}
