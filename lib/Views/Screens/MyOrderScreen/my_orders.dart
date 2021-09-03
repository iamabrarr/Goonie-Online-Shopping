import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/my_orders_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/custom_button_with_profile.dart';

import 'Components/my_orders_container.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            CustomButtonWithProfilepic(),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 5,
                  right: SizeConfig.widthMultiplier * 3,
                  top: SizeConfig.heightMultiplier * 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 5,
                  ),
                  Text(
                    "Cart",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 5,
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: myorders.length,
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        return MyOrdersWidget(orders: myorders[index]);
                      })
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
