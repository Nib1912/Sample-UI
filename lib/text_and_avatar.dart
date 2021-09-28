import 'package:flutter/material.dart';
import 'avatar_container.dart';
import 'package:ionicons/ionicons.dart';
class TextAndAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'New Task',
          style: Theme.of(context).textTheme.headline1,
        ),
        IconContainer(
          color: Colors.pink.shade300.withOpacity(0.29),
          icon: Ionicons.person_outline,
        ),
      ],
    );
  }
}