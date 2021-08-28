import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarketapp/Models/mega_deals_models.dart';
import 'package:onlinemarketapp/Views/Constants/colors.dart';
import 'package:onlinemarketapp/Views/Screens/MegaDealsDetailsScreen/mega_deals_detals.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class MegaDealsWidget extends StatelessWidget {
  const MegaDealsWidget({
    Key key,
    @required this.mega,
  }) : super(key: key);
  final MegaDealsModels mega;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 3.5),
      child: Stack(
        children: [
          Container(
              height: SizeConfig.heightMultiplier * 18,
              width: SizeConfig.widthMultiplier * 94,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFFFC8BD),
              ),
              child: Row(
                children: [
                  SizedBox(width: SizeConfig.widthMultiplier * 43),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                      Text(
                        "Mega",
                        style: TextStyle(
                            color: redColor, fontWeight: FontWeight.w700),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "Whopp".toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.textMultiplier * 4,
                              color: Colors.black),
                        ),
                        TextSpan(
                            text: "e".toUpperCase(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: redColor,
                              fontSize: SizeConfig.textMultiplier * 4,
                            )),
                        TextSpan(
                            text: "r".toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.textMultiplier * 4,
                                color: Colors.black))
                      ])),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$ ${mega.discountedPrice}",
                            style: TextStyle(
                                color: redColor,
                                fontWeight: FontWeight.w800,
                                fontSize: SizeConfig.textMultiplier * 2.7),
                          ),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 4,
                          ),
                          Text(
                            " \$ ${mega.price}",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig.textMultiplier * 2.5),
                          )
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 4,
                            width: 6,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "Available until ${mega.availableTime}",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: SizeConfig.textMultiplier * 1.2,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Image.asset(mega.image),
          ),
        ],
      ),
    );
  }
}
