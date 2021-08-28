import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Models/chat_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

import 'Components/message_textfield.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatAppBar(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(right: SizeConfig.widthMultiplier * 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
              child: Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: SizeConfig.heightMultiplier * 0.6),
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Center(
                    child: Container(
                        height: SizeConfig.heightMultiplier * 3,
                        width: SizeConfig.widthMultiplier * 20,
                        decoration: BoxDecoration(
                            color: Color(0xFF6773FF),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            "Today",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 4,
            ),
            Container(
              height: SizeConfig.heightMultiplier * 10,
              width: SizeConfig.widthMultiplier * 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                    )
                  ]),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.widthMultiplier * 2,
                    right: SizeConfig.widthMultiplier * 6,
                    top: SizeConfig.heightMultiplier * 2,
                    bottom: SizeConfig.heightMultiplier * 2,
                  ),
                  child: Text(messages[0].message),
                ),
              ),
            ),
          ],
        ),
      )),
      bottomSheet: MessageSendTextField(),
    );
  }

  AppBar chatAppBar() {
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
          Container(
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
          )
        ],
      ),
    );
  }
}
