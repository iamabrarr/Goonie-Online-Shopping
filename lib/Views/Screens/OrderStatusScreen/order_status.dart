import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Views/Constants/colors.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:steps/steps.dart';

import '../../Widgets/steps_container.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({Key key}) : super(key: key);

  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.heightMultiplier * 4,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 4),
            child: Column(
              children: [
                Text(
                  " Order Status",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: redColor,
                      fontSize: SizeConfig.textMultiplier * 2),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1,
                ),
                Text(
                  "#${43654645}",
                  style: TextStyle(
                      fontSize: SizeConfig.textMultiplier * 2,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700),
                )
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 4,
          ),
          Expanded(
            child: Steps(
              size: 6.0,
              path: {'color': Color(0xFF828ED5), 'width': 3.0},
              steps: [
                {
                  'color': Colors.white,
                  'background': Color(0xFF828ED5),
                  'label': '',
                  'content': Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StepsContainer(
                        color: Color(0xFFCDB9FF),
                        darkcolor: Color(0xFF6236FF),
                        icon: LineAwesomeIcons.clipboard_list,
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sended Request",
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          Text(
                            "08:23 am",
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 1.9,
                          ),
                          Text(
                            "*** *** **** 5454",
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey.shade500,
                        ),
                      )
                    ],
                  )
                },
                {
                  'color': Colors.white,
                  'background': Color(0xFF828ED5),
                  'label': '',
                  'content': Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StepsContainer(
                        color: Color(0xFFB1EAFD),
                        darkcolor: Color(0xFF2C99BD),
                        icon: Icons.done,
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Confirmed",
                          ),
                          Text(
                            "08:54 am",
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 3,
                          )
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey.shade500,
                        ),
                      )
                    ],
                  )
                },
                {
                  'color': Colors.white,
                  'background': Color(0xFF828ED5),
                  'label': '',
                  'content': Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StepsContainer(
                        color: Color(0xFFFF9EC3),
                        darkcolor: Color(0xFFCF2F6C),
                        icon: MdiIcons.truckOutline,
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Shipper",
                              style: Theme.of(context).textTheme.subtitle2),
                          Text(
                            "08:59 am",
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 2,
                          ),
                          Text(
                            "Jazzy Ji",
                          ),
                          Text(
                            "+1 24123 44353 2321",
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey.shade500,
                        ),
                      )
                    ],
                  )
                },
                {
                  'color': Colors.white,
                  'background': Color(0xFF828ED5),
                  'label': '',
                  'content': Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StepsContainer(
                        color: Color(0xFFF9BEAD),
                        darkcolor: Color(0xFFBC4B2A),
                        icon: Icons.shopping_bag,
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Shipping",
                              style: Theme.of(context).textTheme.subtitle2),
                          Text(
                            "09:05 am",
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 5,
                          )
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey.shade500,
                        ),
                      )
                    ],
                  )
                },
                {
                  'color': Colors.white,
                  'background': Color(0xFF828ED5),
                  'label': '',
                  'content': Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StepsContainer(
                        color: Color(0xFFFBD96D),
                        darkcolor: Color(0xFFB99217),
                        icon: MdiIcons.teaOutline,
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 7,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: SizeConfig.heightMultiplier * 1.2),
                        child: Column(
                          children: [
                            Text("Food Recieve",
                                style: Theme.of(context).textTheme.subtitle2),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 5,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey.shade500,
                        ),
                      )
                    ],
                  )
                }
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
