import 'package:flutter/material.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

class UserAvatar extends StatelessWidget {
  final double radius;
  final IconData icon;
  final String name;

  const UserAvatar({Key key, this.radius, @required this.icon, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.green.shade200,
      splashColor: Colors.yellow.shade200,
      child: WidgetCircularAnimator(
        innerColor: Colors.green,
        outerColor: Colors.yellow,
        size: 86.0,
        child: CircleAvatar(
          radius: radius,
          child: Icon(icon, size: 36.0),
        ),
      ),
    );
  }
}
