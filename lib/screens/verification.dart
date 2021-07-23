import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sahelfund/utils/palette.dart';
import 'package:sahelfund/utils/screen.dart';
import 'package:sahelfund/utils/styles.dart';
import 'package:sahelfund/widgets/box.dart';
import 'package:sahelfund/widgets/widgets.dart';

class Verification extends StatelessWidget {
  const Verification({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Screen.width(context),
        height: Screen.height(context),
        decoration: BoxDecoration(
            gradient: Palette.gradientWith(Palette.primary.withOpacity(0.75))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome back, Dara",
                          style: Styles.designSubHeading()),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text("Please enter your password to continue")
                    ],
                  ),
                  UserAvatar(icon: LineIcons.userCircle)
                ],
              ),
              const SizedBox(height: 30.0),
              Text("Password", style: Styles.designSubHeading()),
              BoxContainer(
                  color: Colors.grey.shade300,
                  elevated: false,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(LineIcons.lockOpen),
                            hintText: "○○○○○",
                            border: InputBorder.none,
                            isDense: true),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Forgot password ?... ",
                    style: Styles.designText(16.0, Palette.error, true, false)),
              ),
              Button(
                  callback: () => print("Hiii"),
                  label: "Continue",
                  icon: LineIcons.locationArrow,
                  color: Palette.primary),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        width: Screen.width(context),
        height: 45.0,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text("Not you? Switch Accounts",
              style: Styles.designSubHeading()),
        ),
      ),
    );
  }
}
