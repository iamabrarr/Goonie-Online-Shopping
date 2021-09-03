import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarketapp/Views/Screens/PaymentMethodScreen/payment_method.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/my_button.dart';

class PurchaseContainer extends StatelessWidget {
  const PurchaseContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 21,
      width: SizeConfig.widthMultiplier * 100,
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(colors: [
      //     Colors.grey.shade200.withOpacity(0.4),
      //   ])
      // ),
      color: Colors.grey.shade200.withOpacity(0.4),
      child: Padding(
        padding: EdgeInsets.only(
          top: SizeConfig.heightMultiplier * 2,
          bottom: SizeConfig.heightMultiplier * 2,
        ),
        child: Row(
          children: [
            SizedBox(
              width: SizeConfig.widthMultiplier * 7,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "2 items",
                  style: TextStyle(
                      fontSize: SizeConfig.textMultiplier * 1.2,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 0.5,
                ),
                Text(
                  "Total:",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textMultiplier * 2.7),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 0.5,
                ),
                Text(
                  "\$ 25",
                  style: TextStyle(
                      color: Color(0xFFB23F56),
                      fontSize: SizeConfig.textMultiplier * 2.7),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                MyButton(
                    width: SizeConfig.widthMultiplier * 50,
                    height: SizeConfig.heightMultiplier * 6,
                    circular: 50,
                    title: "Purchase",
                    color: Color(0xFFB23F56),
                    press: () {
                      Get.to(PaymentMethodScreen());
                    }),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2,
                ),
                Container(
                  height: SizeConfig.heightMultiplier * 6,
                  width: SizeConfig.widthMultiplier * 50,
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    color: Colors.grey.shade300,
                    onPressed: () {},
                    child: Text(
                      "Cancel Order",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                )
              ],
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 4,
            )
          ],
        ),
      ),
    );
  }
}
