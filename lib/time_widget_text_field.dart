import 'reusable_text_field.dart';
import 'package:flutter/material.dart';
class TimeWidgetTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ReusableTextField(
            label: 'Start Time',
            type: TextInputType.datetime,
            maximumLines: 1,
            minimumLines: 1,
          ),
        ),
        Expanded(child: ReusableTextField(label: 'End Time',type: TextInputType.datetime,minimumLines: 1,maximumLines: 1,)),
      ],
    );
  }
}