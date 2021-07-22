import 'package:flutter/material.dart';
import 'package:sahelfund/utils/styles.dart';

class AvailableLoans extends StatelessWidget {
  const AvailableLoans({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Column(
          children: [Text("Available Loans", style: Styles.designHeading())],
        )));
  }
}
