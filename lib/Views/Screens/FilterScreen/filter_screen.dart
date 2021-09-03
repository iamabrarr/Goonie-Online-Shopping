import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:onlinemarketapp/Models/filter_categories_models.dart';
import 'package:onlinemarketapp/Views/Screens/FilterScreen/Components/range_slider.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/my_button.dart';
import 'package:onlinemarketapp/Views/Widgets/ratings.dart';

import 'Components/category_container.dart';
import 'Components/filter_categories.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 5,
              ),
              child: Text(
                "Select Category",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2.5,
            ),
            Row(
              children: [
                CategoryContainer(
                  title: "Open",
                ),
                CategoryContainer(
                  title: "Sale Off",
                ),
                CategoryContainer(
                  title: "Pick Up",
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2.5,
            ),
            Row(
              children: [
                CategoryContainer(
                  title: "Preferred",
                ),
                CategoryContainer(
                  title: "Ordered",
                ),
                CategoryContainer(
                  title: "Verified",
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 6,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 5,
              ),
              child: Text(
                "Price",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            RangeSliderr(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 5,
                vertical: SizeConfig.heightMultiplier * 6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rating",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2,
                  ),
                  Ratings(
                      itemSize: SizeConfig.heightMultiplier * 4,
                      rating: 4,
                      color: Colors.amber)
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: SizeConfig.widthMultiplier * 3),
                  ...List.generate(
                      filtercats.length,
                      (index) => FilterCategories(
                            press: () {
                              setState(() {
                                selectedindex = index;
                              });
                            },
                            index: index,
                            selectedindex: selectedindex,
                            categories: filtercats[index],
                          )),
                  SizedBox(width: SizeConfig.widthMultiplier * 3),
                ],
              ),
            ),
            Spacer(),
            Center(
              child: MyButton(
                  width: SizeConfig.widthMultiplier * 80,
                  height: SizeConfig.heightMultiplier * 7,
                  circular: 15,
                  title: "Apply",
                  color: Color(0xFFB23F56),
                  press: () {}),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 5,
            )
          ],
        ),
      ),
    );
  }
}
