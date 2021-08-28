import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/arimer_cafe_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class CustomerReviewWidget extends StatelessWidget {
  const CustomerReviewWidget({
    Key key,
    @required this.review,
  }) : super(key: key);

  final AirmerCafeModels review;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
      // height: SizeConfig.heightMultiplier * 20,
      width: SizeConfig.widthMultiplier * 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade200)),
      child: Column(children: [
        Container(
          padding: EdgeInsets.symmetric(
              vertical: SizeConfig.heightMultiplier * 0.5,
              horizontal: SizeConfig.widthMultiplier * 3),
          width: SizeConfig.widthMultiplier * 100,
          child: Text(
            review.customerReview,
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(fontSize: SizeConfig.textMultiplier * 1.4),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: SizeConfig.heightMultiplier * 1),
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 2),
          height: SizeConfig.heightMultiplier * 5,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                review.customername,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(fontSize: SizeConfig.textMultiplier * 1.5),
              ),
              Spacer(),
              for (var i = 0; i < 5; i++)
                Icon(
                  Icons.star,
                  color: i < review.customerRating
                      ? Colors.amber
                      : Colors.grey.shade300,
                  size: SizeConfig.heightMultiplier * 2,
                )
            ],
          ),
        )
      ]),
    );
  }
}
