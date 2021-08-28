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
      crossAxisAlignment:
          msg.sender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: SizeConfig.widthMultiplier * 2),
          height: index == 1 || index == 3
              ? SizeConfig.heightMultiplier * 10
              : SizeConfig.heightMultiplier * 11.5,
          width: SizeConfig.widthMultiplier * 73,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.all(2),
                height: SizeConfig.heightMultiplier * 9,
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
                      top: SizeConfig.heightMultiplier * 1.5,
                      bottom: SizeConfig.heightMultiplier * 1.5,
                    ),
                    child: Text(
                      "${msg.message}",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              index == 1 || index == 3
                  ? SizedBox()
                  : Positioned(
                      left: msg.sender
                          ? SizeConfig.widthMultiplier * 4
                          : SizeConfig.widthMultiplier * 47,
                      bottom: 0,
                      child: Text(msg.time,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.textMultiplier * 1.5,
                              color: Colors.grey.shade500))),
              index == 1 || index == 3
                  ? SizedBox()
                  : Positioned(
                      bottom: 0,
                      right: msg.sender ? 0 : SizeConfig.widthMultiplier * 62,
                      child: Container(
                        height: SizeConfig.heightMultiplier * 4.5,
                        width: SizeConfig.widthMultiplier * 12,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(msg.image),
                                fit: BoxFit.cover),
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500, blurRadius: 2)
                            ],
                            border: msg.sender
                                ? Border.all(
                                    width: 2,
                                    color: Colors.white,
                                  )
                                : null),
                      )),
            ],
          ),
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
