import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/chat_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

import 'Components/appbar.dart';
import 'Components/chat_widget.dart';
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
      appBar: ChatScreenAppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 76,
              width: SizeConfig.widthMultiplier * 100,
              child: Padding(
                padding: EdgeInsets.only(right: SizeConfig.widthMultiplier * 5),
                child: Column(
                  children: [
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 3,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Divider(
                            thickness: 1,
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
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: messages.length,
                        shrinkWrap: true,
                        itemBuilder: (_, index) {
                          return ChatWidget(
                            msg: messages[index],
                            index: index,
                          );
                        }),
                    // SizedBox(
                    //   height: SizeConfig.heightMultiplier * 9,
                    // )
                  ],
                ),
              ),
            ),
            MessageSendTextField(),
          ],
        ),
      )),
    );
  }
}
