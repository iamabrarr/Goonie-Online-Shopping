import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Models/addresses_models.dart';
import 'package:onlinemarketapp/Models/deals_of_the_day_models.dart';
import 'package:onlinemarketapp/Models/food_categories_models.dart';
import 'package:onlinemarketapp/Models/mega_deals_models.dart';
import 'package:onlinemarketapp/Views/Screens/MegaDealsDetailsScreen/mega_deals_detals.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import '../../Widgets/deals_of_the_day_widget.dart';
import 'Components/category_widget.dart';
import 'Components/mega deals_widget.dart';
import 'Components/map_widget.dart';
import 'Components/search_field.dart';
import 'Components/upper_custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: CustomPaint(
                          size: Size(SizeConfig.widthMultiplier * 55,
                              (SizeConfig.heightMultiplier * 7).toDouble()),
                          painter: RPSCustomPainterButton(),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: SizeConfig.heightMultiplier * 1.6,
                                bottom: SizeConfig.heightMultiplier * 1.6,
                                left: SizeConfig.widthMultiplier * 5,
                                right: SizeConfig.widthMultiplier * 12),
                            child: Row(children: [
                              Icon(
                                MdiIcons.mapMarker,
                                color: Colors.white,
                              ),
                              Text(
                                "Oxford Street",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    ClipOval(
                        child: Image.asset(
                      "assets/profile.png",
                      fit: BoxFit.cover,
                      height: 40,
                    )),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 3,
                    )
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: SizeConfig.widthMultiplier * 3),
                  child: Searchfield(),
                ),
              ],
            ),
            Container(
              height: SizeConfig.heightMultiplier * 10,
              width: SizeConfig.widthMultiplier * 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: addresses.length,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return MapWidget(
                      address: addresses[index],
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 3.5,
                  right: SizeConfig.widthMultiplier * 3.5,
                  bottom: SizeConfig.heightMultiplier * 2),
              child: Row(
                children: [
                  Text("Explore by Category",
                      style: TextStyle(fontWeight: FontWeight.w800)),
                  Spacer(),
                  Text("See All(36)",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                          fontSize: SizeConfig.textMultiplier * 1.5)),
                ],
              ),
            ),
            Container(
              height: SizeConfig.heightMultiplier * 10,
              width: SizeConfig.widthMultiplier * 100,
              child: ListView.builder(
                  itemCount: food.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return CategoryWidget(
                      category: food[index],
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 3.5,
                  top: SizeConfig.heightMultiplier * 3,
                  bottom: SizeConfig.heightMultiplier * 2),
              child: Text("Deals of the day",
                  style: TextStyle(fontWeight: FontWeight.w800)),
            ),
            Container(
              height: SizeConfig.heightMultiplier * 17,
              width: SizeConfig.widthMultiplier * 100,
              child: ListView.builder(
                  itemCount: deals.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: SizeConfig.heightMultiplier * 4,
                        left: SizeConfig.widthMultiplier * 3.5,
                      ),
                      child: DealsOfTheDayWidget(deal: deals[index]),
                    );
                  }),
            ),
            Container(
              height: SizeConfig.heightMultiplier * 20,
              width: SizeConfig.widthMultiplier * 100,
              child: ListView.builder(
                  itemCount: megaDeals.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(
                            MegaDealsDetailsScreen(detail: megaDeals[index]));
                      },
                      child: MegaDealsWidget(
                        mega: megaDeals[index],
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}
