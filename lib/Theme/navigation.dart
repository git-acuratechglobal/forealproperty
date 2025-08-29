import 'package:flutter/material.dart';

extension NavigationPageExtension on BuildContext {
  void push(Widget page) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  void pushReplacement(Widget page) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }


  void pop() {
    Navigator.of(this).pop();
  }


  void pushAndRemoveUntil(Widget page) {
    Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => page),
      (Route<dynamic> route) => false,
    );
  }
}