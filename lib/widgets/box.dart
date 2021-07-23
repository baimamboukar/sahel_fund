import 'package:flutter/material.dart';
import 'package:sahelfund/utils/palette.dart';

class BoxContainer extends StatelessWidget {
  final Color color;
  final Widget child;
  final bool elevated;
  const BoxContainer({Key key, this.color, this.child, this.elevated})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: child,
        ),
        decoration: BoxDecoration(
            gradient: Palette.gradientWith(color),
            border: Border.all(color: color, width: 1.20),
            borderRadius: BorderRadius.circular(26.0)),
      ),
    );
  }
}
