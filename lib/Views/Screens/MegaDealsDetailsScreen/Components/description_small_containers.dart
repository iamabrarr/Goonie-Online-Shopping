import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/mega_deals_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class DescriptionSmallContainers extends StatelessWidget {
  const DescriptionSmallContainers({
    Key key,
    @required this.detail,
    @required this.color,
    @required this.title,
    @required this.image,
  }) : super(key: key);

  final MegaDealsModels detail;
  final Color color;
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: SizeConfig.widthMultiplier * 5),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 6,
            width: SizeConfig.widthMultiplier * 14,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(image),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.heightMultiplier * 1,
              bottom: SizeConfig.heightMultiplier * 2,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textMultiplier * 1.3),
              ),
            ),
          )
        ],
      ),
    );
  }
}
