import 'package:flutter/material.dart';
import 'package:sahelfund/utils/palette.dart';
import 'package:sahelfund/utils/styles.dart';

class Button extends StatelessWidget {
  final Function callback;
  final String label;
  final IconData icon;
  final Color color;
  const Button({Key key, this.callback, this.label, this.icon, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: callback,
        child: Container(
            height: 50.0,
            width: 140.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: color, width: 2.0),
                gradient: Palette.gradientWith(color)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  label,
                  style: Styles.designText(18.0, Palette.light, true, false),
                ),
                icon != null
                    ? Icon(icon, color: Palette.light)
                    : SizedBox.shrink()
              ],
            )),
      ),
    );
  }
}
