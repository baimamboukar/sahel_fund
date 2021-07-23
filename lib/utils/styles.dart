import 'package:flutter/material.dart';

class Styles {
  static TextStyle designText(
          double size, Color color, bool bold, bool italic) =>
      TextStyle(
          fontSize: size,
          fontStyle: italic ? FontStyle.italic : FontStyle.normal,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
          color: color);
  static TextStyle designHeading() => TextStyle(
      fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.green);

  static TextStyle designSubHeading() => TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black45);
}
