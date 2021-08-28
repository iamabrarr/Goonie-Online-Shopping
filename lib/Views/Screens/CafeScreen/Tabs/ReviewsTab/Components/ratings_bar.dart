import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({
    Key key,
    @required this.rating,
    @required this.color,
    @required this.percent,
  }) : super(key: key);
  final int rating;
  final Color color;
  final double percent;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Text(
              "${rating} Star",
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 4,
            ),
            LinearPercentIndicator(
              animation: true,
              width: SizeConfig.widthMultiplier * 75,
              lineHeight: SizeConfig.heightMultiplier * 1.5,
              percent: percent,
              progressColor: color,
              backgroundColor: Colors.grey.shade200,
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        )
      ],
    );
  }
}
