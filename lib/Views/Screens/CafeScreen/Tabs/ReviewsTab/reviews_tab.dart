import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/arimer_cafe_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AirmerCafeModels review = reviews[0];
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 4,
            ),
            Row(
              children: [
                Container(
                  height: SizeConfig.heightMultiplier * 10,
                  width: SizeConfig.widthMultiplier * 27,
                  decoration: BoxDecoration(
                      color: Color(0xFFA2CE45),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "${review.rating}",
                      style: TextStyle(
                          fontSize: SizeConfig.textMultiplier * 3.5,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RatingContainer(
                          number: 1,
                          color: Color(0xFFEB4654),
                        ),
                        RatingContainer(
                          number: 2,
                          color: Color(0xFF5698E2),
                        ),
                        RatingContainer(
                          number: 3,
                          color: Color(0xFF5C5B5C),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 1.5,
                    ),
                    Row(
                      children: [
                        RatingContainer(
                          number: 4,
                          color: Color(0xFFFA8968),
                        ),
                        RatingContainer(
                          number: 5,
                          color: Color(0xFF125BB7),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Text(
              "Last Comment",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1,
            ),
            Text(
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or  randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. ",
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}

class RatingContainer extends StatelessWidget {
  const RatingContainer({
    Key key,
    @required this.color,
    @required this.number,
  }) : super(key: key);
  final Color color;
  final int number;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 5),
      height: SizeConfig.heightMultiplier * 4.2,
      width: SizeConfig.widthMultiplier * 12,
      decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${number}",
            style: TextStyle(fontWeight: FontWeight.w600, color: color),
          ),
          Icon(
            Icons.star,
            size: 15,
            color: color,
          )
        ],
      ),
    );
  }
}
