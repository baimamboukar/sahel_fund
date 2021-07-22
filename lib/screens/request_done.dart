import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sahelfund/screens/screens.dart';
import 'package:sahelfund/utils/palette.dart';
import 'package:sahelfund/utils/screen.dart';
import 'package:sahelfund/widgets/widgets.dart';

class RequestDone extends StatelessWidget {
  const RequestDone({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: Screen.width(context),
            decoration:
                BoxDecoration(gradient: Palette.gradientWith(Palette.primary)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(LineIcons.checkCircleAlt,
                        size: 56.0, color: Palette.light),
                    Text("All done"),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(
                          "`I'm sure I'm not the same, the next question is, what did the archbishop find?' The Mouse did not answer, so Alice soon began talking again.`"),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Button(
                        callback: () => Get.to(SahelFundHome()),
                        color: Palette.primary,
                        icon: LineIcons.dotCircleAlt,
                        label: "Go to home"),
                  ]),
            )));
  }
}
