import 'package:flutter/material.dart';

class Screen {
  static double height(context) =>
      MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height
          : MediaQuery.of(context).size.width;

  static double width(context) =>
      MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.height;
}
