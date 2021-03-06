import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sahelfund/utils/palette.dart';
import 'package:sahelfund/utils/styles.dart';
import 'package:sahelfund/widgets/box.dart';
import 'package:sahelfund/widgets/widgets.dart';

class AvailableLoans extends StatelessWidget {
  const AvailableLoans({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Available Loans",
        )),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(14.0) +
              const EdgeInsets.only(top: 10.0, left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Based on your profile, you are eligible for he following loans",
                  style: Styles.designText(20.0, Palette.black, true, false)),
              BoxContainer(
                  color: Palette.primary,
                  elevated: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Loan amount",
                                style: Styles.designSubHeading(),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "FCFA 14M",
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Duration",
                                style: Styles.designSubHeading(),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text("6 months")
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Interest",
                                style: Styles.designSubHeading(),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text("FCFA 7K (5%)")
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Total Due",
                                style: Styles.designSubHeading(),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text("FCFA 147K")
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
              BoxContainer(
                  color: Colors.grey.shade300,
                  elevated: false,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "XAF 14.500",
                          style: Styles.designSubHeading(),
                        ),
                        Text("View details")
                      ])),
              BoxContainer(
                  color: Colors.grey.shade300,
                  elevated: false,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "XAF 48.000",
                          style: Styles.designSubHeading(),
                        ),
                        Text("View details")
                      ])),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Want a different amount ? ",
                    style:
                        Styles.designText(18.0, Palette.primary, true, false)),
              ),
              Button(
                  callback: () => print("Hiii"),
                  label: "Continue",
                  icon: LineIcons.locationArrow,
                  color: Palette.primary),
            ],
          ),
        )));
  }
}
