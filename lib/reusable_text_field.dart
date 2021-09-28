import 'package:flutter/material.dart';
class ReusableTextField extends StatelessWidget {
  final String? label;
  final TextInputType? type;
  final int? minimumLines;
  final int? maximumLines;

  ReusableTextField(
      {@required this.label, this.type, this.minimumLines, this.maximumLines});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        minLines: minimumLines,
        maxLines: maximumLines,
        keyboardType: type,
        decoration: InputDecoration(
          labelText: label,
        ),
      ),
    );
  }
}