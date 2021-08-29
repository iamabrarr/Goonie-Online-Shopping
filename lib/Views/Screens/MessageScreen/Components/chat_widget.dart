import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/chat_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    Key key,
    @required this.msg,
    @required this.index,
  }) : super(key: key);
  final ChatModels msg;
  final int index;
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: msg.sender || index == 3
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            index == 1 || msg.sender
                ? SizedBox(
                    width: SizeConfig.widthMultiplier * 12,
                  )
                : Container(
                    height: SizeConfig.heightMultiplier * 4.5,
                    width: SizeConfig.widthMultiplier * 12,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(msg.image), fit: BoxFit.cover),
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(color: Colors.grey.shade500, blurRadius: 2)
                        ],
                        border: msg.sender
                            ? Border.all(
                                width: 2,
                                color: Colors.white,
                              )
                            : null),
                  ),
            ConstrainedBox(
              constraints:
                  BoxConstraints(maxWidth: SizeConfig.widthMultiplier * 70),
              child: Container(
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: msg.sender ? Color(0xFF6773FF) : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.widthMultiplier * 2,
                    right: SizeConfig.widthMultiplier * 9,
                    top: SizeConfig.heightMultiplier * 1.5,
                    bottom: SizeConfig.heightMultiplier * 2.5,
                  ),
                  child: Text(
                    "${msg.message}",
                    style: TextStyle(
                        color: msg.sender ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment:
              msg.sender ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            index == 1 || index == 3
                ? SizedBox()
                : Padding(
                    padding: EdgeInsets.only(
                        left: msg.sender ? SizeConfig.widthMultiplier * 0 : 50),
                    child: Text(msg.time,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.textMultiplier * 1.5,
                            color: Colors.grey.shade500)),
                  ),
          ],
        ),
        index == 0
            ? SizedBox(height: SizeConfig.heightMultiplier * 3)
            : SizedBox(),
        index == 2
            ? SizedBox(height: SizeConfig.heightMultiplier * 3)
            : SizedBox(),
      ],
    );
  }
}
