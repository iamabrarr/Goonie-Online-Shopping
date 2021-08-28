import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/arimer_cafe_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/ratings.dart';

class FeaturedDrinksWidget extends StatelessWidget {
  const FeaturedDrinksWidget({
    Key key,
    @required this.drink,
    this.press,
  }) : super(key: key);

  final AirmerCafeModels drink;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
      height: SizeConfig.heightMultiplier * 31,
      width: SizeConfig.widthMultiplier * 55,
      child: Stack(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 30,
            width: SizeConfig.widthMultiplier * 43,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 2,
                )
              ],
              borderRadius: BorderRadius.circular(20),
              color: drink.color,
            ),
          ),
          Positioned(
              top: SizeConfig.heightMultiplier * 4,
              right: 0,
              child: Container(
                height: SizeConfig.heightMultiplier * 20,
                width: SizeConfig.widthMultiplier * 27,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(drink.image),
                )),
              )),
          Positioned(
              bottom: 0,
              right: SizeConfig.widthMultiplier * 8,
              child: GestureDetector(
                onTap: press,
                child: Container(
                  height: SizeConfig.heightMultiplier * 6,
                  width: SizeConfig.widthMultiplier * 11,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: drink.darkcolor),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.grey[200],
                    ),
                  ),
                ),
              )),
          Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.widthMultiplier * 3,
                top: SizeConfig.heightMultiplier * 1.8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Ratings(
                  rating: drink.rating,
                  color: drink.darkcolor,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1,
                ),
                Text(
                  "${drink.votes} Votes",
                  style: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 1.1,
                    color: drink.darkcolor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 4,
                ),
                Container(
                  width: SizeConfig.widthMultiplier * 27,
                  child: Text(
                    drink.title,
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                        fontWeight: FontWeight.w500, color: drink.darkcolor),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 0.8,
                ),
                Text(
                  drink.category,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      color: drink.darkcolor, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 4,
                ),
                Text("\$ ${drink.price}",
                    style: TextStyle(
                        color: drink.darkcolor,
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.heightMultiplier * 3.7))
              ],
            ),
          )
        ],
      ),
    );
  }
}
