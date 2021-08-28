import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class RatingSmallContainer extends StatelessWidget {
  const RatingSmallContainer({
    Key key,
    @required this.color,
    @required this.number,
  }) : super(key: key);
  final Color color;
  final int number;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 5),
      height: SizeConfig.heightMultiplier * 4.2,
      width: SizeConfig.widthMultiplier * 12,
      decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${number}",
            style: TextStyle(fontWeight: FontWeight.w600, color: color),
          ),
          Icon(
            Icons.star,
            size: 15,
            color: color,
          )
        ],
      ),
    );
  }
}
