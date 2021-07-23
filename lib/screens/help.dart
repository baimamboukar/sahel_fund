import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sahelfund/utils/palette.dart';
import 'package:sahelfund/utils/styles.dart';
import 'package:sahelfund/widgets/widgets.dart';

final indexProvider = StateProvider<int>((ref) => 0);

class Help extends ConsumerWidget {
  const Help({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final index = watch(indexProvider);
    List<String> helpSubjects = ["Popular", "My account", "Security & Privacy"];
    return Scaffold(
      appBar: AppBar(title: Text("Help")),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Container(
                    height: 40.0,
                    child: ListView.builder(
                        itemCount: helpSubjects.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int i) => Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: GestureDetector(
                                onTap: () => index.state = i,
                                child: Chip(
                                  side: BorderSide(
                                      color: Palette.primary, width: 0.8),
                                  label: Text(helpSubjects[i]),
                                  backgroundColor: i == index.state
                                      ? Palette.primary.withOpacity(0.8)
                                      : Colors.grey.shade300,
                                ),
                              ),
                            )),
                  ),
                  IndexedStack(index: index.state, children: [
                    Column(
                      children: [
                        ...[
                          "How does Sahel Fund works?",
                          "In which country does Sahel Fund Operate?",
                          "How long does it take to process Loan ?",
                          "How much can I borrow and for how long ?",
                          "What are the interest rate like?"
                        ].map((faq) => Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: ExpansionTile(
                                  title: Text(faq,
                                      style: Styles.designSubHeading()),
                                  collapsedTextColor: Palette.primary,
                                  children: [
                                    Text(
                                        "To the woman he said, I will greatly increase your pangs in childbearing; in pain you shall bring forth for you; and you shall not eat, for in the day from the tree, and I ate. Now the serpent was more crafty than any other wild animal that the LORD God sent him forth from the garden of Eden, to till the ground from which he was taken. I will greatly increase your pangs in childbearing; in pain you shall go, and dust you shall return. But of the tree was to be desired to make one wise, she took of its fruit and ate; and she also gave some to her husband, who was with her, and he ate.")
                                  ]),
                            )),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Button(
                            label: "Contact Support",
                            icon: LineIcons.confluence,
                            color: Palette.primary,
                            callback: () => print("contacting support team..."))
                      ],
                    ),
                  ]),
                ],
              ))),
    );
  }
}
