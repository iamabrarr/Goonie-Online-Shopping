import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/my_orders_models.dart';
import 'package:onlinemarketapp/Views/Screens/MyOrderScreen/Components/quantity_counter.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class MyOrdersWidget extends StatelessWidget {
  const MyOrdersWidget({
    Key key,
    @required this.orders,
  }) : super(key: key);

  final MyOrdersModels orders;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
      height: SizeConfig.heightMultiplier * 10,
      width: SizeConfig.widthMultiplier * 100,
      child: Row(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 10,
            width: SizeConfig.widthMultiplier * 18,
            margin: EdgeInsets.only(bottom: 7),
            decoration: BoxDecoration(
                color: orders.color, borderRadius: BorderRadius.circular(15)),
            child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(orders.image)),
          ),
          SizedBox(
            width: SizeConfig.widthMultiplier * 7,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                orders.title,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text("${orders.quantity} ${orders.type}",
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontWeight: FontWeight.w500)),
              Text("\$ ${orders.price}",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Color(0xFFB23F56)))
            ],
          ),
          Spacer(),
          QuantityController(),
        ],
      ),
    );
  }
}
