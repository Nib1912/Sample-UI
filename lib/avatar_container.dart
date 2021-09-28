import 'package:flutter/material.dart';
class IconContainer extends StatelessWidget {
  final Color? color;
  final IconData? icon;

  IconContainer({@required this.color, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      child: Icon(
        icon,
        color: Colors.pink.shade500,
      ),
      duration: kThemeChangeDuration,
      height: 60,
      width: 55,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(22))),
    );
  }
}
