import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarketapp/Views/Screens/OrderStatusScreen/order_status.dart';
import 'package:onlinemarketapp/Views/Screens/PaymentScreen.dart/payment.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class PaymentMethodContainer extends StatelessWidget {
  const PaymentMethodContainer({
    Key key,
    @required this.title,
    @required this.image,
    @required this.textcolor,
    @required this.color,
  }) : super(key: key);
  final String title, image;
  final Color textcolor, color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(Payment());
      },
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 10),
        margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
        height: SizeConfig.heightMultiplier * 17,
        width: SizeConfig.widthMultiplier * 94,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
                height: SizeConfig.heightMultiplier * 8,
                width: SizeConfig.widthMultiplier * 15,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image)))),
            SizedBox(
              width: SizeConfig.widthMultiplier * 20,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: SizeConfig.textMultiplier * 2.7,
                  color: textcolor),
            )
          ],
        ),
      ),
    );
  }
}
