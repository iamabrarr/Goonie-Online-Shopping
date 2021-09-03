import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Views/Screens/HomeScreen/Components/upper_custom_button.dart';
import 'package:onlinemarketapp/Views/Screens/MyProfileScreen/my_profile_screen.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class CustomButtonWithProfilepic extends StatelessWidget {
  const CustomButtonWithProfilepic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            child: CustomPaint(
              size: Size(SizeConfig.widthMultiplier * 55,
                  (SizeConfig.heightMultiplier * 7).toDouble()),
              painter: RPSCustomPainterButton(),
              child: Padding(
                padding: EdgeInsets.only(
                    top: SizeConfig.heightMultiplier * 1.6,
                    bottom: SizeConfig.heightMultiplier * 1.6,
                    left: SizeConfig.widthMultiplier * 5,
                    right: SizeConfig.widthMultiplier * 12),
                child: Row(children: [
                  Icon(
                    MdiIcons.mapMarker,
                    color: Colors.white,
                  ),
                  Text(
                    "Oxford Street",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ]),
              ),
            ),
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            Get.to(MyProfileScreen());
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 6,
            width: SizeConfig.widthMultiplier * 12,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/myprofile.jpg"),
                    fit: BoxFit.cover)),
          ),
        ),
        SizedBox(
          width: SizeConfig.widthMultiplier * 3,
        )
      ],
    );
  }
}
