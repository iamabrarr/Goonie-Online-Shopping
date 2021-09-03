import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Views/Screens/FilterScreen/filter_screen.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class Searchfield extends StatelessWidget {
  const Searchfield({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.heightMultiplier * 2,
      ),
      height: SizeConfig.heightMultiplier * 6,
      width: SizeConfig.widthMultiplier * 93,
      padding: EdgeInsets.symmetric(
          vertical: SizeConfig.heightMultiplier * 0.6,
          horizontal: SizeConfig.widthMultiplier * 1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFF6F8F9),
          border: Border.all(width: 1, color: Colors.grey.shade200)),
      child: Row(
        children: [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: SizeConfig.widthMultiplier * 2,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search in thousands of products",
                    hintStyle:
                        TextStyle(fontSize: SizeConfig.textMultiplier * 1.8)),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(FilterScreen());
            },
            child: Container(
              height: SizeConfig.heightMultiplier * 6,
              width: SizeConfig.widthMultiplier * 15,
              child: Icon(MdiIcons.filter),
            ),
          )
        ],
      ),
    );
  }
}
