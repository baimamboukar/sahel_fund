import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sahelfund/utils/styles.dart';
import 'package:sahelfund/widgets/box.dart';
import 'package:sahelfund/widgets/widgets.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Edit profile"),
            actions: [Text("Save")],
            bottom: TabBar(
              labelPadding: const EdgeInsets.only(bottom: 10.0),
              tabs: [Text("Personal Information"), Text("Employment Info")],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.all(14.0) +
                    const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    UserAvatar(radius: 32.0, icon: LineIcons.userCircle),
                    const SizedBox(height: 25.0, child: Divider()),
                    ...infos
                        .map((info) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(info.label,
                                    style: Styles.designSubHeading()),
                                BoxContainer(
                                    color: Colors.grey.shade300,
                                    elevated: false,
                                    child: Column(
                                      children: [
                                        TextField(
                                          decoration: InputDecoration(
                                              icon: Icon(info.icon),
                                              hintText: info.value,
                                              border: InputBorder.none,
                                              isDense: true),
                                        ),
                                      ],
                                    )),
                                const SizedBox(height: 7.0)
                              ],
                            ))
                        .toList()
                  ],
                ),
              )),
              SingleChildScrollView(child: Column()),
            ],
          )),
    );
  }
}

class ModificationInfo {
  final String label;
  final String value;
  final IconData icon;

  ModificationInfo(
    this.label,
    this.value,
    this.icon,
  );
}

List<ModificationInfo> infos = [
  ModificationInfo("First name", "VK Rihanat", LineIcons.userCircleAlt),
  ModificationInfo("Last name", "Ipsumson", LineIcons.userCircle),
  ModificationInfo("Phone number", "+237 690535759", LineIcons.phone),
  ModificationInfo("Email", "loremson@ipsumson.cm", LineIcons.mailchimp),
];
