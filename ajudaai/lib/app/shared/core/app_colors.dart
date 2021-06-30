import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {
  static final Color purpleButton = Color(0xFF954797);
  static final Color purpleText = Color(0xFF9A4A9C);
  static final Color blueRedcieve = Color(0xFF121F33);
  static final Color blueSend = Color(0xFF1D74F5);
  static final Color label = Color(0xFF929292);
  static final Color labelBackgroud = Color(0xFFF2F2F7);
  static final Color linkLogin = Color(0xFF007AFF);
}

class AppGradientColors {
  static final linear = LinearGradient(colors: [
    Color(0xFF8C668E),
    Color.fromRGBO(138, 115, 141, 0.16),
  ], stops: [
    0.0,
    0.695,
  ], transform: GradientRotation(3.14159 * pi));
}
