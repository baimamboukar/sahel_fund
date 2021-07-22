import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sahelfund/screens/available_loans.dart';
import 'package:sahelfund/screens/request_done.dart';
import 'package:sahelfund/screens/request_loan.dart';
import 'package:sahelfund/utils/palette.dart';
import 'package:sahelfund/utils/utils.dart';
import 'package:sahelfund/widgets/widgets.dart';

class SahelFundDrawer extends StatelessWidget {
  const SahelFundDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
            child: Column(children: [
      UserAccountsDrawerHeader(
          accountEmail: Text("sahelfund@admin.cm"),
          accountName: Text("Sahel Fund Admin")),
      ..._drawerItems
    ])));
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;
  final Widget destination;
  const DrawerItem(
      {Key key, this.icon, this.title, this.desc, this.destination})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () => Get.to(destination),
        title: Text(title),
        subtitle: Text(desc),
        leading: Icon(icon, color: Palette.primary));
  }
}

List<DrawerItem> _drawerItems = [
  DrawerItem(
      title: "Home",
      icon: LineIcons.lightningBolt,
      desc: "Main screen",
      destination: FlutterLogo()),
  DrawerItem(
      title: "Loan Offers",
      icon: LineIcons.dollarSign,
      desc: "available",
      destination: AvailableLoans()),
  DrawerItem(
      title: "Request",
      icon: LineIcons.paperHand,
      desc: "request a loan",
      destination: RequestLoan()),
  DrawerItem(
      title: "Request Done",
      icon: LineIcons.checkCircleAlt,
      desc: "request a loan",
      destination: RequestDone()),
  DrawerItem(
      title: "Submit",
      icon: LineIcons.paperPlane,
      desc: "Submit loan request",
      destination: FlutterLogo()),
];
