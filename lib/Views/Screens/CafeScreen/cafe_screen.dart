import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/my_button.dart';

import 'Tabs/tabs_list.dart';

class CafeScreen extends StatelessWidget {
  const CafeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 22,
            width: SizeConfig.widthMultiplier * 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/cafe.jpg"), fit: BoxFit.cover)),
          ),
          Container(
            child: Expanded(
              child: SizedBox(child: TabsList()),
            ),
          ),
        ],
      )),
    );
  }
}
