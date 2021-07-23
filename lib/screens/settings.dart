import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sahelfund/utils/styles.dart';
import 'package:sahelfund/widgets/widgets.dart';

class Settings extends StatelessWidget {
  const Settings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Profile Settings")),
        body: SingleChildScrollView(
            child: Padding(
          padding:
              const EdgeInsets.all(10.0) + const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              UserAvatar(
                icon: LineIcons.userCircleAlt,
                radius: 32.0,
              ),
              const SizedBox(height: 8.0),
              Text("Loremson Ipsumson", style: Styles.designSubHeading()),
              const SizedBox(height: 8.0),
              Text("Credit Score: 120/120"),
              Divider(),
              ...settings
            ],
          ),
        )));
  }
}

class SettingItem extends StatelessWidget {
  final Widget destination;
  final String label;
  final IconData icon;
  const SettingItem({Key key, this.destination, this.label, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          onTap: () => Get.to(destination),
          leading: Icon(icon),
          title: Text(label, style: Styles.designSubHeading())),
    );
  }
}

List<SettingItem> settings = [
  SettingItem(
      destination: FlutterLogo(),
      label: "Personnal Details",
      icon: LineIcons.userCircleAlt),
  SettingItem(
      destination: FlutterLogo(),
      label: "Help",
      icon: LineIcons.questionCircleAlt),
  SettingItem(
      destination: FlutterLogo(), label: "Payment", icon: LineIcons.wallet),
  SettingItem(
      destination: FlutterLogo(),
      label: "Invite Friends",
      icon: LineIcons.userPlus),
  SettingItem(
      destination: FlutterLogo(),
      label: "Rate the App",
      icon: LineIcons.heartbeat),
  SettingItem(
      destination: FlutterLogo(),
      label: "Privacy Settings",
      icon: LineIcons.userSecret),
  SettingItem(
      destination: FlutterLogo(),
      label: "Logout",
      icon: LineIcons.alternateUser)
];
