import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarketapp/Views/Screens/CallScreen/call_screen.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class ChatScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => Size.fromHeight(
        SizeConfig.heightMultiplier * 12,
      );
  const ChatScreenAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFF6773FF),
      toolbarHeight: SizeConfig.heightMultiplier * 12,
      title: Row(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 8,
            width: SizeConfig.widthMultiplier * 18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("assets/hotelmanager.png"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: SizeConfig.widthMultiplier * 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Maria Sterli",
                style: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 1.8,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 0.8,
              ),
              Text(
                "Crazy Pizza",
                style: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 1.5,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 0.8,
              ),
              Text(
                "Call Center Customer",
                style: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 1.5,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            width: SizeConfig.widthMultiplier * 17,
          ),
          GestureDetector(
            onTap: () {
              Get.to(CallScreen());
            },
            child: Container(
              height: SizeConfig.heightMultiplier * 6,
              width: SizeConfig.widthMultiplier * 15,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: Offset(4, 8), color: Colors.black26, blurRadius: 8)
              ], shape: BoxShape.circle, color: Color(0xFFA9B0F9)),
              child: Icon(
                Icons.call,
                color: Color(0xFF6773FF),
              ),
            ),
          )
        ],
      ),
    );
  }
}
