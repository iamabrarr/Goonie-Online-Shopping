import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/mega_deals_models.dart';
import 'package:onlinemarketapp/Views/Screens/MegaDealsDetailsScreen/Components/product_ratings.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/my_button.dart';

class MegaDealsDetailsScreen extends StatelessWidget {
  const MegaDealsDetailsScreen({Key key, @required this.detail})
      : super(key: key);
  final MegaDealsModels detail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: detail.color,
        body: SafeArea(
          child: SizedBox.expand(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                    top: 0,
                    child: Container(
                      height: SizeConfig.heightMultiplier * 30,
                      width: SizeConfig.widthMultiplier * 100,
                      color: detail.color,
                    )),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: SizeConfig.heightMultiplier * 70,
                    width: SizeConfig.widthMultiplier * 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(50))),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: SizeConfig.heightMultiplier * 13,
                    width: SizeConfig.widthMultiplier * 100,
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: SizeConfig.heightMultiplier * 2),
                      child: Row(
                        children: [
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 7,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "2 items",
                                style: TextStyle(
                                    fontSize: SizeConfig.textMultiplier * 1.2,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: SizeConfig.heightMultiplier * 0.5,
                              ),
                              Text(
                                "Total:",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: SizeConfig.textMultiplier * 2.7),
                              ),
                              SizedBox(
                                height: SizeConfig.heightMultiplier * 0.5,
                              ),
                              Text(
                                "\$ 25",
                                style: TextStyle(
                                    color: Color(0xFFB23F56),
                                    fontSize: SizeConfig.textMultiplier * 2.7),
                              ),
                            ],
                          ),
                          Spacer(),
                          MyButton(
                              width: SizeConfig.widthMultiplier * 55,
                              height: SizeConfig.heightMultiplier * 6,
                              circular: 50,
                              title: "purchase".toUpperCase(),
                              color: Color(0xFFB23F56),
                              press: () {}),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 4,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: SizeConfig.heightMultiplier * 3,
                  left: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UpperDetail(detail: detail),
                      MidDescriptionBody(detail: detail),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class MidDescriptionBody extends StatelessWidget {
  const MidDescriptionBody({
    Key key,
    @required this.detail,
  }) : super(key: key);

  final MegaDealsModels detail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
      child: Container(
        height: SizeConfig.heightMultiplier * 55,
        width: SizeConfig.widthMultiplier * 90,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Materials",
              style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 2,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 0.5,
            ),
            Text(
              detail.materials,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Text(
              "Instructions",
              style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 2,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 0.5,
            ),
            Text(detail.instructions),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Text(
              "Descriptions",
              style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 2,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            Row(
              children: [
                DescriptionSmallContainers(
                  detail: detail,
                  color: Color(0xFFB1EAFD),
                  title: "${detail.pieces} Pieces",
                  image: "assets/calories.png",
                ),
                DescriptionSmallContainers(
                    detail: detail,
                    color: Color(0xFFF9BEAD),
                    title: "${detail.calories} Calories",
                    image: "assets/calories.png")
              ],
            ),
            Text(
              "Quantity",
              style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 2,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.5,
            ),
            CounterButtons(),
          ],
        ),
      ),
    );
  }
}

class CounterButtons extends StatelessWidget {
  const CounterButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 3.2,
          width: SizeConfig.widthMultiplier * 8,
          decoration: BoxDecoration(
            color: Color(0xFFB1EAFD),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Icon(Icons.remove, color: Color(0xFF48B6DB)),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
          child: Text(
            "2",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: SizeConfig.textMultiplier * 2),
          ),
        ),
        Container(
          height: SizeConfig.heightMultiplier * 3.2,
          width: SizeConfig.widthMultiplier * 8,
          decoration: BoxDecoration(
            color: Color(0xFFB1EAFD),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Icon(Icons.add, color: Color(0xFF48B6DB)),
          ),
        )
      ],
    );
  }
}

class DescriptionSmallContainers extends StatelessWidget {
  const DescriptionSmallContainers({
    Key key,
    @required this.detail,
    @required this.color,
    @required this.title,
    @required this.image,
  }) : super(key: key);

  final MegaDealsModels detail;
  final Color color;
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: SizeConfig.widthMultiplier * 7),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 6,
            width: SizeConfig.widthMultiplier * 14,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(image),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.heightMultiplier * 1,
              bottom: SizeConfig.heightMultiplier * 2,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textMultiplier * 1.3),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class UpperDetail extends StatelessWidget {
  const UpperDetail({
    Key key,
    @required this.detail,
  }) : super(key: key);

  final MegaDealsModels detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 35,
      width: SizeConfig.widthMultiplier * 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 30,
            width: SizeConfig.widthMultiplier * 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(detail.image), fit: BoxFit.cover)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Deals of the week",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.textMultiplier * 1.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.5,
              ),
              Text(
                detail.name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: SizeConfig.textMultiplier * 2.5),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              Text(
                detail.category,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: SizeConfig.textMultiplier * 2.5,
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              ProductRatings(),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              Text(
                "${detail.votes} Votes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.textMultiplier * 1.3,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: SizeConfig.heightMultiplier * 6,
                  width: SizeConfig.widthMultiplier * 50,
                  decoration: BoxDecoration(
                      color: Color(0xFFB23F56),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${detail.discountedPrice}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.textMultiplier * 2.5,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          " \$ ${detail.price} ",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey,
                              fontSize: SizeConfig.textMultiplier * 2.5,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
