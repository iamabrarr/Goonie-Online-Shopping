import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Models/addresses_models.dart';
import 'package:onlinemarketapp/Models/best_deals_models.dart';
import 'package:onlinemarketapp/Models/food_categories_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

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
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2.5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: SizeConfig.heightMultiplier * 5,
                        width: SizeConfig.widthMultiplier * 45,
                        child: FlatButton(
                          color: Color(0xFFEF6A62),
                          onPressed: () {},
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
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
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
                  Searchfield(),
                ],
              ),
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
              height: SizeConfig.heightMultiplier * 15,
              width: SizeConfig.widthMultiplier * 100,
              child: ListView.builder(
                  itemCount: deals.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return BestDealsWidget(deal: deals[index]);
                  }),
            )
          ],
        ),
      )),
    );
  }
}

class BestDealsWidget extends StatelessWidget {
  const BestDealsWidget({
    Key key,
    @required this.deal,
  }) : super(key: key);
  final BestDeals deal;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 15,
      width: SizeConfig.widthMultiplier * 84,
      margin: EdgeInsets.only(
          left: SizeConfig.widthMultiplier * 3.5,
          right: SizeConfig.widthMultiplier * 2),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 3),
                height: SizeConfig.heightMultiplier * 15,
                width: SizeConfig.widthMultiplier * 30,
                decoration: BoxDecoration(
                  color: deal.color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(deal.image)),
              ),
              Positioned(
                child: Container(
                  height: SizeConfig.imageSizeMultiplier * 9,
                  width: SizeConfig.widthMultiplier * 9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                      child: Icon(
                    Icons.favorite,
                    color: Color(0xFFEF6A62),
                    size: 17,
                  )),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              Text(
                deal.title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: SizeConfig.textMultiplier * 1.5),
              ),
              Text(
                "Pieces ${deal.pieces}",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                    fontSize: SizeConfig.textMultiplier * 1.5),
              ),
              Row(
                children: [
                  Icon(
                    MdiIcons.mapMarker,
                    size: 12,
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 2,
                  ),
                  Text(
                    "${deal.locationtime} Away",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.textMultiplier * 1.5),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "\$ ${deal.discountprice}",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFEF6A62),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 4,
                  ),
                  Text(" \$ ${deal.price} ",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      )),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key key,
    @required this.category,
  }) : super(key: key);
  final FoodCategories category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.widthMultiplier * 3,
        right: SizeConfig.widthMultiplier * 2,
      ),
      child: Column(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 7,
            width: SizeConfig.widthMultiplier * 16,
            margin: EdgeInsets.only(bottom: 7),
            decoration: BoxDecoration(
                color: category.color, borderRadius: BorderRadius.circular(15)),
            child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(category.image)),
          ),
          Text(category.title,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: SizeConfig.textMultiplier * 1.5)),
        ],
      ),
    );
  }
}

class MapWidget extends StatelessWidget {
  const MapWidget({
    Key key,
    @required this.address,
  }) : super(key: key);
  final Address address;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 7,
      padding: EdgeInsets.only(left: 4, top: 4, bottom: 4, right: 15),
      margin: EdgeInsets.only(
        bottom: SizeConfig.heightMultiplier * 3,
        left: SizeConfig.widthMultiplier * 3,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade200)),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: 6,
            ),
            height: SizeConfig.heightMultiplier * 6,
            width: SizeConfig.widthMultiplier * 13,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(address.image), fit: BoxFit.cover)),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  address.title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.textMultiplier * 1.6),
                ),
                Text(
                  address.address,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textMultiplier * 1.3),
                ),
                Text(
                  address.street,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textMultiplier * 1.3),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Searchfield extends StatelessWidget {
  const Searchfield({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.heightMultiplier * 2,
      ),
      height: SizeConfig.heightMultiplier * 6,
      width: SizeConfig.widthMultiplier * 93,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFF6F8F9),
          border: Border.all(width: 1, color: Colors.grey.shade200)),
      child: Row(
        children: [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: SizeConfig.widthMultiplier * 2,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search in thousands of products",
                    hintStyle:
                        TextStyle(fontSize: SizeConfig.textMultiplier * 1.8)),
              ),
            ),
          ),
          Icon(Icons.mic_none),
        ],
      ),
    );
  }
}
