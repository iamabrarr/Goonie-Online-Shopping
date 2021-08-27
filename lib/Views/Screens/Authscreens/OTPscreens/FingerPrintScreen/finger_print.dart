import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarketapp/Views/Constants/colors.dart';
import 'package:onlinemarketapp/Views/Screens/BottomNavBar/BottomNavBar.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/my_button.dart';

class FingerPrint extends StatelessWidget {
  const FingerPrint({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: SizeConfig.heightMultiplier * 5,
          ),
          Center(
            child: Column(children: [
              Image.asset(
                "assets/logo.png",
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 4),
              Text("Getting Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: SizeConfig.textMultiplier * 2.7)),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              Text(
                "Create an account to continued",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ]),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 8,
          ),
          Container(
            height: SizeConfig.heightMultiplier * 45,
            width: SizeConfig.widthMultiplier * 93,
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.heightMultiplier * 4,
                horizontal: SizeConfig.widthMultiplier * 7),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(40)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Please lift and rest your finger",
                  style: TextStyle(
                      color: Colors.grey.shade600, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 5,
                ),
                Center(
                  child: Image.asset("assets/fingerprint.png"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 5,
          ),
          MyButton(
            press: () {
              Get.to(BottomNavBar());
            },
            height: SizeConfig.heightMultiplier * 08,
            width: SizeConfig.widthMultiplier * 90,
            circular: 20,
            title: "Next",
            color: SecondaryColor,
          ),
        ],
      )),
    );
  }
}
