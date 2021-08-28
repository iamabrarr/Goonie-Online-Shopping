import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class ProfilePicWidget extends StatefulWidget {
  const ProfilePicWidget({Key key}) : super(key: key);

  @override
  _ProfilePicWidgetState createState() => _ProfilePicWidgetState();
}

class _ProfilePicWidgetState extends State<ProfilePicWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AvatarGlow(
          glowColor: Colors.grey,
          endRadius: 120,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          showTwoGlows: true,
          curve: Curves.easeOutQuad,
          child: Container(
            height: SizeConfig.heightMultiplier * 15,
            width: SizeConfig.widthMultiplier * 35,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/hotelmanager.png"),
                    fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.circular(99)),
          ),
        ),
      ),
    );
  }
}
