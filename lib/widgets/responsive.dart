import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const Responsive(
      {Key key, @required this.mobile, this.tablet, @required this.desktop})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 670 &&
      MediaQuery.of(context).size.width < 1500;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1500;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1500) {
        return desktop;
      } else if (constraints.maxWidth >= 670) {
        return tablet ?? mobile;
      } else {
        return mobile;
      }
    });
  }
}
