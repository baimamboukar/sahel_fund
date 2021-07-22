import 'package:flutter/material.dart';

class Palette {
  static Color primary = Colors.green;
  static Color secondary = Colors.blue;
  static Color warning = Colors.orange;
  static Color error = Colors.red;
  static Color success = Colors.lightGreenAccent;
  static Color black = Colors.black54;
  static Color light = Colors.white;

  static LinearGradient gradientWith(Color color) => LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            color,
            color.withOpacity(0.4),
          ]);
}
