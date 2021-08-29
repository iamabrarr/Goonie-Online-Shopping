import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Views/Screens/FavouritesScreen/favourites.dart';
import 'package:onlinemarketapp/Views/Screens/HomeScreen/home.dart';
import 'package:onlinemarketapp/Views/Screens/MyCart/my_cart.dart';
import 'package:onlinemarketapp/Views/Screens/MyOrderScreen/my_orders.dart';
import 'package:onlinemarketapp/Views/Screens/NewsScreen/news.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> screens = [
    HomeScreen(),
    NewsScreen(),
    MyCartScreen(),
    FavouriteScreen(),
    MyOrderScreen(),
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(selectedindex),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Color(0xFFF5F9FA),
        child: Container(
          height: SizeConfig.heightMultiplier * 7,
          width: SizeConfig.widthMultiplier,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: SizeConfig.widthMultiplier * 3,
                    onPressed: () {
                      setState(() {
                        selectedindex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        selectedindex == 0
                            ? Icon(
                                Icons.home,
                                color: Color(0xFFD93F11),
                              )
                            : Icon(
                                Icons.home_outlined,
                                color: Colors.grey,
                              ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 1,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              color: selectedindex == 0
                                  ? Color(0xFFD93F11)
                                  : Colors.grey.shade500,
                              fontSize: SizeConfig.textMultiplier * 1,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        selectedindex = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        selectedindex == 1
                            ? Icon(
                                Icons.notifications,
                                color: Color(0xFFD93F11),
                              )
                            : Icon(
                                Icons.notifications_outlined,
                                color: Colors.grey,
                              ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 1,
                        ),
                        Text(
                          "News",
                          style: TextStyle(
                              color: selectedindex == 1
                                  ? Color(0xFFD93F11)
                                  : Colors.grey,
                              fontSize: SizeConfig.textMultiplier * 1,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: SizeConfig.widthMultiplier * 2.5,
                    onPressed: () {
                      setState(() {
                        selectedindex = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        selectedindex == 3
                            ? Icon(
                                Icons.favorite,
                                color: Color(0xFFD93F11),
                              )
                            : Icon(
                                Icons.favorite_outline,
                                color: Colors.grey,
                              ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 1,
                        ),
                        Text(
                          "Favourites",
                          style: TextStyle(
                              color: selectedindex == 3
                                  ? Color(0xFFD93F11)
                                  : Colors.grey,
                              fontSize: SizeConfig.textMultiplier * 1,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: SizeConfig.widthMultiplier * 4,
                    onPressed: () {
                      setState(() {
                        selectedindex = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        selectedindex == 4
                            ? Icon(
                                MdiIcons.wallet,
                                color: Color(0xFFD93F11),
                              )
                            : Icon(
                                MdiIcons.walletOutline,
                                color: Colors.grey,
                              ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 1,
                        ),
                        Text(
                          "Orders",
                          style: TextStyle(
                              color: selectedindex == 4
                                  ? Color(0xFFD93F11)
                                  : Colors.grey,
                              fontSize: SizeConfig.textMultiplier * 1,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            selectedindex = 2;
          });
        },
        backgroundColor: Color(0xFFD93F11),
        child: Icon(Icons.local_grocery_store),
      ),
    );
  }
}
