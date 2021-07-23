import 'package:breathing_collection/breathing_collection.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sahelfund/utils/palette.dart';
import 'package:sahelfund/utils/styles.dart';
import 'package:sahelfund/utils/utils.dart';
import 'package:sahelfund/widgets/widgets.dart';

class SahelFundHome extends StatefulWidget {
  const SahelFundHome({Key key}) : super(key: key);

  @override
  _SahelFundHomeState createState() => _SahelFundHomeState();
}

class _SahelFundHomeState extends State<SahelFundHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: SahelFundDrawer(),
      body: Scrollbar(
        showTrackOnHover: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                      height: Screen.height(context) * 0.35,
                      width: Screen.width(context),
                      color: Palette.primary,
                      child: Stack(
                        children: [
                          Positioned(
                              left: 15.0,
                              top: 10.0,
                              child: Icon(LineIcons.tasks)),
                          Positioned(
                              right: 15.0,
                              left: 15.0,
                              top: 40.0,
                              child: UserAvatar(
                                  icon: LineIcons.userCircle, radius: 40.0)),
                          Positioned(
                              right: 15.0,
                              top: 10.0,
                              child: Icon(LineIcons.userCircle)),
                        ],
                      )),
                  AnimatedPositioned(
                    top: 150.0,
                    left: Screen.width(context) * 0.075,
                    right: Screen.width(context) * 0.075,
                    child: Center(
                      child: Card(
                        elevation: 6.0,
                        child: AnimatedContainer(
                            height: Screen.height(context) * 0.3,
                            width: Screen.width(context) * 0.85,
                            color: Palette.light,
                            duration: Duration(milliseconds: 5000),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 35.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Palette.primary, width: 0.5),
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "APROVED",
                                            style: TextStyle(
                                              color: Palette.primary,
                                            ),
                                          ),
                                          Icon(LineIcons.checkCircleAlt,
                                              color: Palette.primary)
                                        ],
                                      )),
                                  const SizedBox(height: 10.0),
                                  Text(
                                    "Education Loan",
                                    style: Styles.designSubHeading(),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, left: 12.0),
                                    child: Text(
                                      "185,000 fcfa",
                                      style: Styles.designHeading(),
                                    ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  Text(
                                      "lorem ipsum dolor si amet do set cosectur de la hamma de la consectura")
                                ],
                              ),
                            )),
                      ),
                    ),
                    duration: Duration(seconds: 2),
                  ),
                ],
              ),
              const SizedBox(
                height: 130.0,
              ),
              Card(
                elevation: 6.0,
                child: AnimatedContainer(
                    width: Screen.width(context) * 0.85,
                    color: Palette.light,
                    duration: Duration(milliseconds: 1000),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Recent Loans",
                            style: Styles.designHeading(),
                          ),
                          ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Palette.primary,
                                child: Icon(LineIcons.paypalCreditCard,
                                    color: Colors.yellow),
                              ),
                              title: Text("Education"),
                              subtitle: Text("Sept 12"),
                              trailing: Column(
                                children: [
                                  Text(
                                    "\$185,000",
                                  ),
                                  Text("Unpayed")
                                ],
                              ))
                        ],
                      ),
                    )),
              ),
              Card(
                child: AnimatedContainer(
                    width: Screen.width(context) * 0.85,
                    color: Palette.light,
                    duration: Duration(milliseconds: 1000),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Review Profile",
                            style: Styles.designHeading(),
                          ),
                          Text("Your credit score is: \$128046")
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: BreathingGlowingButton(
              width: 35.0,
              height: 35.0,
              icon: Icons.monetization_on,
              iconColor: Colors.green,
              buttonBackgroundColor: Colors.transparent,
              glowColor: Colors.white),
          onPressed: null),
    ));
  }
}
