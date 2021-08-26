import 'package:flutter/material.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Views/Constants/colors.dart';
import 'package:onlinemarketapp/Views/Screens/FavouritesScreen/favourites.dart';
import 'package:onlinemarketapp/Views/Screens/HomeScreen/home.dart';
import 'package:onlinemarketapp/Views/Screens/MyCart/my_cart.dart';
import 'package:onlinemarketapp/Views/Screens/NewsScreen/news.dart';
import 'package:onlinemarketapp/Views/Screens/OrderScreen/orders.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key key}) : super(key: key);
  static PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  // List widgets = [
  //   HomeScreen(),
  //   NewsScreen(),
  //   FavouriteScreen(),
  //   OrderScreen(),
  // ];
  // int selectedindex = 0;
  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      NewsScreen(),
      MyCartScreen(),
      FavouriteScreen(),
      OrderScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        onPressed: (context) {},
        icon: Icon(Icons.home),
        title: "Grocery",
        activeColorPrimary: BNBiconsColor,
        inactiveColorPrimary: Colors.grey,
        textStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: SizeConfig.textMultiplier * 1.1),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.notifications_outlined),
        title: "News",
        activeColorPrimary: BNBiconsColor,
        inactiveColorPrimary: Colors.grey,
        textStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: SizeConfig.textMultiplier * 1.1),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.local_grocery_store,
          color: Colors.white,
        ),
        textStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: SizeConfig.textMultiplier * 1.1),
        title: "",
        activeColorPrimary: BNBiconsColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite),
        title: "Favourites",
        textStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: SizeConfig.textMultiplier * 1.1),
        activeColorPrimary: BNBiconsColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(MdiIcons.wallet),
        title: "Orders",
        activeColorPrimary: BNBiconsColor,
        inactiveColorPrimary: Colors.grey,
        textStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: SizeConfig.textMultiplier * 1.1),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Color(0xFFF5F9FA),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      // itemAnimationProperties: ItemAnimationProperties(
      //   duration: Duration(milliseconds: 200),
      //   curve: Curves.ease,
      // ),
      // screenTransitionAnimation: ScreenTransitionAnimation(
      //   animateTabTransition: true,
      //   curve: Curves.ease,
      //   duration: Duration(milliseconds: 200),
      // ),
      navBarStyle: NavBarStyle.style15,
    );
    // body: widgets.elementAt(selectedindex),
    // pr
    // bottomNavigationBar: BottomNavigationBar(
    //     onTap: (index) {
    //       setState(() {
    //         selectedindex = index;
    //       });
    //     },
    //     elevation: 5,
    //     unselectedItemColor: Colors.grey,
    //     selectedItemColor: Color(0xFFD93F11),
    //     currentIndex: selectedindex,
    //     items: [
    //       BottomNavigationBarItem(
    //         icon: Icon(
    //           FontAwesomeIcons.shopify,
    //         ),
    //         label: "Grocery",
    //       ),
    //       BottomNavigationBarItem(
    //           icon: Icon(Icons.notifications_none_outlined), label: "News"),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.favorite),
    //         label: "Favourites",
    //       ),
    //       BottomNavigationBarItem(
    //           icon: Icon(MdiIcons.wallet), label: "Orders"),
    //     ]));
  }
}
