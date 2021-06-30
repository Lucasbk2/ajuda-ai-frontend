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
  static final Color appBarPurple = Color(0xFF8A738D);
}

class AppGradientColors {
  static final linear = LinearGradient(colors: [
    /*
    Color(0xFF8C668E),
    Color.fromRGBO(138, 115, 141, 0.16),
    */
    Color.fromRGBO(172, 156, 173, 1),
    Color.fromRGBO(172, 156, 173, 0.8),
  ], );
}
