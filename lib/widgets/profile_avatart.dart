import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final double size;
  const ProfileAvatar({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundColor: Colors.white, radius: size);
  }
}
