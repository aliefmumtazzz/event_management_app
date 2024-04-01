import 'package:flutter/material.dart';

extension WidgetUtil on Widget {
  Widget paddingAll(double padding) {
    return Padding(padding: EdgeInsets.all(padding), child: this);
  }

  Widget paddingSymmetric({double horizontal = 0.0, double vertical = 0.0}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: this,
    );
  }

  Widget paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        top: top,
        left: left,
        right: right,
        bottom: bottom,
      ),
      child: this,
    );
  }

  Widget paddingLTRB(
    double left,
    double top,
    double right,
    double bottom,
  ) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: this,
    );
  }

  Widget get paddingZero => Padding(padding: EdgeInsets.zero, child: this);

  Widget center() => Center(child: this);

  Widget coloredBox(Color color) => ColoredBox(color: color, child: this);

  Widget onTap(Function()? onTap) => GestureDetector(onTap: onTap, child: this);
}
