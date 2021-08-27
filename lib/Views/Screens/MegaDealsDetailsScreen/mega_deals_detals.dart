import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarketapp/Models/mega_deals_models.dart';
import 'package:onlinemarketapp/Views/Screens/CafeScreen/cafe_screen.dart';
import 'package:onlinemarketapp/Views/Widgets/ratings.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/my_button.dart';

import 'Components/mid_description_details.dart';
import 'Components/upper_details.dart';

class MegaDealsDetailsScreen extends StatelessWidget {
  const MegaDealsDetailsScreen({Key key, @required this.detail})
      : super(key: key);
  final MegaDealsModels detail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: detail.color,
        body: SafeArea(
          child: SizedBox.expand(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    top: 0,
                    child: Container(
                      height: SizeConfig.heightMultiplier * 30,
                      width: SizeConfig.widthMultiplier * 100,
                      color: detail.color,
                    )),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: SizeConfig.heightMultiplier * 70,
                    width: SizeConfig.widthMultiplier * 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(50))),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: SizeConfig.heightMultiplier * 13,
                    width: SizeConfig.widthMultiplier * 100,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: SizeConfig.heightMultiplier * 2),
                      child: Row(
                        children: [
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 7,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "2 items",
                                style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 1.2,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: SizeConfig.heightMultiplier * 0.5,
                              ),
                              Text(
                                "Total:",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: SizeConfig.textMultiplier * 2.7),
                              ),
                              SizedBox(
                                height: SizeConfig.heightMultiplier * 0.5,
                              ),
                              Text(
                                "\$ 25",
                                style: TextStyle(
                                    color: Color(0xFFB23F56),
                                    fontSize: SizeConfig.textMultiplier * 2.7),
                              ),
                            ],
                          ),
                          Spacer(),
                          MyButton(
                              width: SizeConfig.widthMultiplier * 55,
                              height: SizeConfig.heightMultiplier * 6,
                              circular: 50,
                              title: "purchase".toUpperCase(),
                              color: Color(0xFFB23F56),
                              press: () {
                                Get.to(CafeScreen());
                              }),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 4,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: SizeConfig.heightMultiplier * 3,
                  left: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UpperDetail(detail: detail),
                      MidDescriptionBody(detail: detail),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
