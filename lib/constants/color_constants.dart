import 'package:flutter/material.dart';

class ColorConstants {
  static const pink = Color(0xFFFD3C7D);
  static const amber = Color(0xFFF39358);
  static const white = Colors.white;
  static const black = Colors.black;
  static const blue = Color(0xFF7B61FF);
  static const mainGradient = LinearGradient(
    colors: [
      pink,
      amber,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
