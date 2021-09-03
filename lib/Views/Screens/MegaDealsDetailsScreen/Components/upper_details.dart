import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/mega_deals_models.dart';
import 'package:onlinemarketapp/Views/Widgets/ratings.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

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
            height: SizeConfig.heightMultiplier * 35,
            width: SizeConfig.widthMultiplier * 50,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(detail.image),
            )),
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
              Ratings(
                itemSize: SizeConfig.heightMultiplier * 2,
                color: Colors.amber,
                rating: detail.rating,
              ),
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
