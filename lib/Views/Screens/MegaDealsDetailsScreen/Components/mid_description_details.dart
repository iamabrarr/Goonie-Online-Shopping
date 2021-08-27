import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/mega_deals_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

import 'counter_buttons.dart';
import 'description_small_containers.dart';

class MidDescriptionBody extends StatelessWidget {
  const MidDescriptionBody({
    Key key,
    @required this.detail,
  }) : super(key: key);

  final MegaDealsModels detail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
      child: Container(
        height: SizeConfig.heightMultiplier * 55,
        width: SizeConfig.widthMultiplier * 90,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Materials",
              style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 2,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 0.5,
            ),
            Text(
              detail.materials,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Text(
              "Instructions",
              style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 2,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 0.5,
            ),
            Text(detail.instructions),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Text(
              "Descriptions",
              style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 2,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            Row(
              children: [
                DescriptionSmallContainers(
                  detail: detail,
                  color: Color(0xFFB1EAFD),
                  title: "${detail.pieces} Pieces",
                  image: "assets/calories.png",
                ),
                DescriptionSmallContainers(
                    detail: detail,
                    color: Color(0xFFF9BEAD),
                    title: "${detail.calories} Calories",
                    image: "assets/calories.png")
              ],
            ),
            Text(
              "Quantity",
              style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 2,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            CounterButtons(),
          ],
        ),
      ),
    );
  }
}
