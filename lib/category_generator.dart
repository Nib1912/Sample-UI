import 'package:flutter/material.dart';
class CategoryGenerator extends StatelessWidget {
  final String? categoryText;
  final Color? clr;
  final Color? txtColor;

  CategoryGenerator({ @required this.categoryText,required this.clr,this.txtColor});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //margin: EdgeInsets.only(),
        //padding: EdgeInsets.fromLTRB(20,6,20,6),
        height: 40,
        decoration: BoxDecoration(
            color: clr,
            borderRadius: BorderRadius.circular(15)

        ),
        child: Center(
          child: Text(
            categoryText.toString(),
            style: TextStyle(color:txtColor ),
          ),
        ),
      ),
    );
  }
}