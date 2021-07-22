import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomeMenuOption extends StatefulWidget {
  const HomeMenuOption({Key key}) : super(key: key);

  @override
  _HomeMenuOptionState createState() => _HomeMenuOptionState();
}

class _HomeMenuOptionState extends State<HomeMenuOption> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 120.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22.0),
        ),
        child: Center(
            child: Icon(
          LineIcons.userCircle,
          color: Colors.white,
        )),
      ),
    );
  }
}
