import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Models/my_profile_options_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

import 'Components/my_profile_options.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB23F56),
      body: SafeArea(
          child: SizedBox.expand(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 5,
              ),
              Row(
                children: [
                  Container(
                    height: SizeConfig.heightMultiplier * 12,
                    width: SizeConfig.widthMultiplier * 23,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/myprofile.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "john doe".toUpperCase(),
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      Text(
                        "hi@johndoe.com",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              Row(
                children: [
                  Icon(
                    MdiIcons.mapMarker,
                    color: Colors.white,
                  ),
                  SizedBox(width: SizeConfig.widthMultiplier * 5),
                  Text(
                    "Old Student House 56 Street",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3,
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.heightMultiplier * 6,
                        horizontal: SizeConfig.heightMultiplier * 3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.builder(
                            itemCount: options.length,
                            shrinkWrap: true,
                            itemBuilder: (_, index) {
                              return MyProfileOptions(
                                option: options[index],
                              );
                            }),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 3,
                        ),
                        Text(
                          "Log Out",
                          style: TextStyle(
                              color: Color(0xFFB23F56),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      )),
    );
  }
}
