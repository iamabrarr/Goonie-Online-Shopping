import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarketapp/Controllers/add_cart_counter.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class QuantityController extends StatelessWidget {
  const QuantityController({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final quantityController = Get.put(AddCartCounter());
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            return quantityController.decrement();
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 4,
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
                "${quantityController.quantity}",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: SizeConfig.textMultiplier * 2),
              ),
            )),
        GestureDetector(
          onTap: () {
            return quantityController.increment();
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 4,
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
