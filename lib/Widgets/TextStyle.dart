import 'package:flutter/material.dart';

class MyTextStyle {
  static TextStyle boldTitleStyle() {
    return TextStyle(
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle titleStyle() {
    return TextStyle(
      fontSize: 24,
      color: Colors.black,
    );
  }

  static TextStyle subtitleStyle() {
    return TextStyle(
      fontSize: 12,
      color: Colors.grey,
    );
  }

  static TextStyle textStyle() {
    return TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
  }
}