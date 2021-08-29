import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Views/Constants/colors.dart';
import 'package:onlinemarketapp/Views/Screens/MessageScreen/message_screen.dart';
import 'package:onlinemarketapp/Views/Screens/PaymentMethodScreen/payment_method.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/contact_container.dart';

class OrderNowScreen extends StatefulWidget {
  const OrderNowScreen({Key key}) : super(key: key);

  @override
  _OrderNowScreenState createState() => _OrderNowScreenState();
}

class _OrderNowScreenState extends State<OrderNowScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      setState(() {
        payment = true;
      });
    });
  }

  bool payment = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: SizeConfig.heightMultiplier * 100,
        width: SizeConfig.widthMultiplier * 100,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/map.png")),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 47,
              width: SizeConfig.widthMultiplier * 100,
              padding: EdgeInsets.only(
                  top: SizeConfig.heightMultiplier * 3,
                  left: SizeConfig.widthMultiplier * 7),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                            "Julia Santiago",
                            style: TextStyle(
                                fontSize: SizeConfig.textMultiplier * 1.8,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey.shade700),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 0.8,
                          ),
                          Text(
                            "Arrives in 32 Minutes",
                            style: TextStyle(
                                fontSize: SizeConfig.textMultiplier * 1.5,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade500),
                          ),
                          SizedBox(
                            height: SizeConfig.heightMultiplier * 0.8,
                          ),
                          Text(
                            "Aimer le Café",
                            style: TextStyle(
                                fontSize: SizeConfig.textMultiplier * 1.5,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade500),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3,
                  ),
                  Container(
                      width: SizeConfig.widthMultiplier * 78,
                      child: Text(
                        "Food Crazy Pizza Store x 2 big Pizza Menu 3 x Fresh Banan Milkshake",
                        style: Theme.of(context).textTheme.caption.copyWith(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                            fontSize: SizeConfig.textMultiplier * 1.6),
                      )),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Row(
                    children: [
                      Icon(
                        MdiIcons.walletOutline,
                        color: Colors.grey.shade600,
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 10,
                      ),
                      Text(
                        "\$ 45,50 - ",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade600,
                          fontSize: SizeConfig.textMultiplier * 2,
                        ),
                      ),
                      Text(
                        "Paid By Credit Card",
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: SizeConfig.textMultiplier * 2,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Row(
                    children: [
                      Icon(
                        MdiIcons.truckOutline,
                        color: Colors.grey.shade600,
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 10,
                      ),
                      Text(
                        "Old Student House 56 Street",
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: SizeConfig.textMultiplier * 2,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Row(
                    children: [
                      Container(
                        height: SizeConfig.heightMultiplier * 4,
                        width: SizeConfig.widthMultiplier * 10,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/shipper.png"),
                        )),
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jazzy Ji",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade700,
                                fontSize: SizeConfig.textMultiplier * 1.5),
                          ),
                          Text(
                            "Shipper - Maestro",
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: SizeConfig.textMultiplier * 1.5,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ContactContainer(
                          color: Color(0xFFF9BEAD),
                          darkColor: Color(0xFFEF6060),
                          title: "+1 232 2323 23",
                          icon: Icons.call,
                          press: () {},
                        ),
                        ContactContainer(
                          press: () {
                            Get.to(MessageScreen());
                          },
                          color: Color(0xFFB1EAFD),
                          darkColor: Color(0xFF59A3BC),
                          title: "     Message      ",
                          icon: MdiIcons.messageBulleted,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: payment
          ? Container(
              margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 8),
              width: SizeConfig.widthMultiplier * 35,
              child: FloatingActionButton(
                onPressed: () {
                  Get.to(PaymentMethodScreen());
                },
                backgroundColor: redColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "Pay order",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            )
          : null,
    );
  }
}
