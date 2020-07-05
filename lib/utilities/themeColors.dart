import 'package:flutter/material.dart';

class ThemeColors {
  static Color pink = Color(0xFFFFB5A3);
  static Color lightBlue = Color(0xFF6B73FF);
  static Color darkBlue = Color(0xFF2B35FF);
  static Color grey = Color(0xFFA0A3A6);
  static Color lightGrey = Color(0xFFF2F2F3);
  static Color subGrey = Color(0xFF84898C);
  static Shader linearGradient = LinearGradient(
    colors: <Color>[lightBlue, darkBlue],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
}
