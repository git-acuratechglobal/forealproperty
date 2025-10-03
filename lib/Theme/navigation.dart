import 'package:flutter/material.dart';

extension NavigationPageExtension on BuildContext {
  void navPush(Widget page) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  void navPushReplacement(Widget page) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }


  void navPop() {
    Navigator.of(this).pop();
  }


  void pushAndRemoveUntil(Widget page) {
    Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => page),
      (Route<dynamic> route) => false,
    );
  }


  void popUntilPage<T>() {
    Navigator.popUntil(
      this,
          (route) => route.settings.name == T.toString(),
    );
  }
}