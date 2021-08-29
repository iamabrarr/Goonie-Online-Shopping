import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class StepsContainer extends StatelessWidget {
  const StepsContainer({
    Key key,
    this.color,
    this.darkcolor,
    this.icon,
  }) : super(key: key);
  final Color color, darkcolor;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 5,
      width: SizeConfig.widthMultiplier * 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Center(
        child: Icon(
          icon,
          color: darkcolor,
        ),
      ),
    );
  }
}
