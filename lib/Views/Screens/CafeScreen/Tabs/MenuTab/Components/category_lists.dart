import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 3.5,
      width: SizeConfig.widthMultiplier * 25,
      margin: EdgeInsets.only(
          left: SizeConfig.widthMultiplier * 3,
          top: SizeConfig.heightMultiplier * 2),
      decoration: BoxDecoration(
          color: Color(0xFFB1EAFD), borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        text.toUpperCase(),
        style: TextStyle(
            fontSize: SizeConfig.textMultiplier * 1.1,
            fontWeight: FontWeight.w600,
            color: Color(0xFF5698E2)),
      )),
    );
  }
}
