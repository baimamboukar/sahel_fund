import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sahelfund/utils/palette.dart';
import 'package:sahelfund/utils/styles.dart';
import 'package:sahelfund/widgets/box.dart';
import 'package:sahelfund/widgets/widgets.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

final amountProvider = StateProvider<double>((ref) => 0.0);
final durationProvider = StateProvider<int>((ref) => 1);

class RequestLoan extends ConsumerWidget {
  const RequestLoan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final amount = watch(amountProvider);
    final duration = watch(durationProvider);
    return Scaffold(
        appBar: AppBar(title: Text("Request a loan")),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(14.0) +
              const EdgeInsets.only(top: 10.0, left: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("How much do you want to borrow and for how long ? ",
                  style: Styles.designText(20.0, Palette.black, true, false)),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text("How much do you want ?",
                    style: Styles.designSubHeading()),
              ),
              SfSlider(
                  min: 0.0,
                  max: 12.0,
                  value: amount.state,
                  interval: 1,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  onChanged: (dynamic value) {
                    amount.state = value;
                  }),
              Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Min Amount"), Text("Max amount")],
                ),
              ),
              Divider(),
              Text("For how long ?", style: Styles.designSubHeading()),
              SfSlider(
                  min: 0.0,
                  max: 12.0,
                  value: duration.state,
                  interval: 1,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  onChanged: (dynamic value) {
                    duration.state = value;
                  }),
              Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("1 month"), Text("12 months")],
                ),
              ),
              const SizedBox(height: 30.0),
              BoxContainer(
                  color: Palette.primary,
                  elevated: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("INTEREST", style: Styles.designSubHeading()),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Text("${amount.state.toInt()} (5%)")
                        ],
                      ),
                      VerticalDivider(
                        color: Palette.black,
                        width: 2.0,
                        indent: 10.0,
                        endIndent: 10.0,
                        thickness: 5.0,
                      ),
                      Column(
                        children: [
                          Text("TOTAL DUE", style: Styles.designSubHeading()),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Text("XAF 126K")
                        ],
                      )
                    ],
                  )),
              const SizedBox(height: 30.0),
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
