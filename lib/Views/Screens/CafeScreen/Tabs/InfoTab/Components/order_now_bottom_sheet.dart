import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/my_button.dart';

class OrderNowBottomSheet extends StatelessWidget {
  const OrderNowBottomSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 13,
      width: SizeConfig.widthMultiplier * 100,
      color: Colors.grey.shade200,
      child: Padding(
        padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 2),
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
            MyButton(
                width: SizeConfig.widthMultiplier * 55,
                height: SizeConfig.heightMultiplier * 6,
                circular: 50,
                title: "order now".toUpperCase(),
                color: Color(0xFFB23F56),
                press: () {
                  // Get.to(CafeScreen());
                }),
            SizedBox(
              width: SizeConfig.widthMultiplier * 4,
            )
          ],
        ),
      ),
    );
  }
}
