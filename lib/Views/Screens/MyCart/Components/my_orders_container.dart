import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/my_orders_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class MyCartOrdersWidget extends StatelessWidget {
  const MyCartOrdersWidget({
    Key key,
    @required this.orders,
    @required this.index,
  }) : super(key: key);

  final MyOrdersModels orders;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: SizeConfig.heightMultiplier * 2,
          right: index == 0
              ? SizeConfig.widthMultiplier * 5
              : SizeConfig.widthMultiplier * 10),
      height: SizeConfig.heightMultiplier * 18,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 7,
            width: SizeConfig.widthMultiplier * 16,
            margin: EdgeInsets.only(bottom: 7),
            decoration: BoxDecoration(
                color: orders.color, borderRadius: BorderRadius.circular(15)),
            child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(orders.image)),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 1,
          ),
          Text(
            orders.title,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: SizeConfig.heightMultiplier * 1.5),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 1,
          ),
          Text("${orders.quantity} ${orders.type}",
              style: Theme.of(context).textTheme.caption.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: SizeConfig.heightMultiplier * 1.3)),
          SizedBox(
            height: SizeConfig.heightMultiplier * 1,
          ),
          Text("\$ ${orders.price}",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Color(0xFFB23F56))),
        ],
      ),
    );
  }
}
