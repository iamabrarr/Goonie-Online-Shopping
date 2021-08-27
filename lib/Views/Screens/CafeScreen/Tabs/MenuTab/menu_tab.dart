import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Screens/CafeScreen/Tabs/MenuTab/Components/category_lists.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class MenuTab extends StatelessWidget {
  const MenuTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoryList(
                text: "Drink",
              ),
              CategoryList(
                text: "Food",
              ),
              CategoryList(
                text: "Sweets",
              ),
              CategoryList(
                text: "Sweets",
              ),
            ],
          ),
        )
      ],
    ));
  }
}
