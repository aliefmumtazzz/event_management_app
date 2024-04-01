import 'package:flutter/material.dart';

extension NavigatorUtil on BuildContext {
  void goTo(Widget page) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  void popUntilHome() {
    Navigator.popUntil(this, (route) => route.isFirst);
  }

  void pop() => Navigator.pop(this);
}
