import 'package:flutter/material.dart';
import 'package:sahelfund/utils/palette.dart';
import 'package:sahelfund/utils/styles.dart';

class RequestLoan extends StatelessWidget {
  const RequestLoan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Text("Request a specific amount", style: Styles.designHeading())
          ],
        )));
  }
}
