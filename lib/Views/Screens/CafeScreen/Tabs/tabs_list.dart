import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Screens/CafeScreen/Tabs/InfoTab/info_tab.dart';
import 'package:onlinemarketapp/Views/Screens/CafeScreen/Tabs/MenuTab/menu_tab.dart';
import 'package:onlinemarketapp/Views/Screens/CafeScreen/Tabs/ReviewsTab/reviews_tab.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class TabsList extends StatefulWidget {
  const TabsList({Key key}) : super(key: key);

  @override
  _TabsListState createState() => _TabsListState();
}

class _TabsListState extends State<TabsList> {
  int selectedindex = 0;
  List<Widget> pages = [
    InfoTab(),
    MenuTab(),
    ReviewsTab(),
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [tabsList(), Expanded(child: pages[selectedindex])],
    );
  }

  Widget tabsList() {
    return Row(
      children: [
        catogoriess("Info", 0),
        catogoriess("Menu", 1),
        catogoriess("Reviews", 2),
      ],
    );
  }

  Widget catogoriess(String text, int index) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () {
          setState(() {
            selectedindex = index;
          });
        },
        child: Container(
          height: SizeConfig.heightMultiplier * 6,
          width: SizeConfig.widthMultiplier * 33.33,
          color: index == selectedindex ? Color(0xFF6C121C) : Color(0xFFA22E3B),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 2,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ));
  }
}
