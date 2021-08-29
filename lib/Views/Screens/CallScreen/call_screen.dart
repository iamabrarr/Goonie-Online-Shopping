import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Views/Screens/CallScreen/Components/profile_pic_widget.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Text(
              "Hello, \n Your are talking to maria",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 2.5,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 10,
            ),
            Container(
                height: SizeConfig.heightMultiplier * 30,
                width: SizeConfig.widthMultiplier * 100,
                child: ProfilePicWidget()),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Text(
              "Maria Sterli",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 2.5,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Text(
              "Ringing...",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.redAccent, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: SizeConfig.heightMultiplier * 8,
                    width: SizeConfig.widthMultiplier * 18,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          offset: Offset(4, 8),
                          color: Colors.black26,
                          blurRadius: 8)
                    ], shape: BoxShape.circle, color: Color(0xFF107EFF)),
                    child: Icon(
                      Icons.call_end,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 5,
                ),
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: SizeConfig.heightMultiplier * 8,
                    width: SizeConfig.widthMultiplier * 18,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          offset: Offset(4, 8),
                          color: Colors.black26,
                          blurRadius: 8)
                    ], shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      MdiIcons.messageBulleted,
                      color: Colors.grey.shade500,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
