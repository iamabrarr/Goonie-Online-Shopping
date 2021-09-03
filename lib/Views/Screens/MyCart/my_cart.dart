import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/my_orders_models.dart';
import 'package:onlinemarketapp/Views/Screens/MyCart/Components/my_orders_container.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

import 'Components/purchase_container.dart';
import 'Components/upper_order_details.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UpperOrderDetails(),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
            child: Text(
              "Orders",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 1.5,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: SizeConfig.widthMultiplier * 4,
                ),
                ...List.generate(
                    myorders.length,
                    (index) => MyCartOrdersWidget(
                          orders: myorders[index],
                          index: index,
                        )),
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 4,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier * 4,
              right: SizeConfig.widthMultiplier * 10,
            ),
            child: Row(
              children: [
                Text(
                  "Order Price",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.grey.shade500,
                      fontSize: SizeConfig.textMultiplier * 2.1),
                ),
                Spacer(),
                Text(
                  "\$${91}",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textMultiplier * 2.1),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier * 4,
              top: SizeConfig.heightMultiplier * 3,
              bottom: SizeConfig.heightMultiplier * 3,
              right: SizeConfig.widthMultiplier * 10,
            ),
            child: Row(
              children: [
                Text(
                  "Shipping Cost ( 4,5 km )",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.grey.shade500,
                      fontSize: SizeConfig.textMultiplier * 2.1),
                ),
                Spacer(),
                Text(
                  "\$${1.4}",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textMultiplier * 2.1),
                )
              ],
            ),
          ),
          Spacer(),
          PurchaseContainer()
        ],
      )),
    );
  }
}
