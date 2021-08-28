import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarketapp/Controllers/add_cart_counter.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class CounterButtons extends StatelessWidget {
  const CounterButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterController = Get.put(AddCartCounter());
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            return counterController.decrement();
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 3.2,
            width: SizeConfig.widthMultiplier * 8,
            decoration: BoxDecoration(
              color: Color(0xFFB1EAFD),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Icon(Icons.remove, color: Color(0xFF48B6DB)),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 5),
            child: Obx(
              () => Text(
                "${counterController.quantity}",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: SizeConfig.textMultiplier * 2),
              ),
            )),
        GestureDetector(
          onTap: () {
            return counterController.increment();
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 3.2,
            width: SizeConfig.widthMultiplier * 8,
            decoration: BoxDecoration(
              color: Color(0xFFB1EAFD),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Icon(Icons.add, color: Color(0xFF48B6DB)),
            ),
          ),
        )
      ],
    );
  }
}
