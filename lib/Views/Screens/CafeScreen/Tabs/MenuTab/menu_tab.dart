import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/arimer_cafe_models.dart';
import 'package:onlinemarketapp/Models/deals_of_the_day_models.dart';
import 'package:onlinemarketapp/Views/Screens/CafeScreen/Tabs/MenuTab/Components/category_lists.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/deals_of_the_day_widget.dart';
import 'package:onlinemarketapp/Views/Widgets/ratings.dart';

import 'Components/featured_drinks_widget.dart';

class MenuTab extends StatelessWidget {
  const MenuTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
                child: Text(
                  "Featured",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      drinks.length,
                      (index) => FeaturedDrinksWidget(
                        drink: drinks[index],
                        press: () {},
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.widthMultiplier * 5,
                    top: SizeConfig.heightMultiplier * 3,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deals of the day",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1,
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          reverse: true,
                          itemCount: deals.length,
                          shrinkWrap: true,
                          itemBuilder: (_, index) {
                            return DealsOfTheDayWidget(
                              deal: deals[index],
                            );
                          })
                    ],
                  ))
            ],
          ),
        ],
      ),
    ));
  }
}
