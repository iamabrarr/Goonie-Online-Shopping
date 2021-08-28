import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/arimer_cafe_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/ratings.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'Components/customer_review_widget.dart';
import 'Components/ratings_bar.dart';
import 'Components/upper_rating_small_widgets.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int reviewStar = 4;
    final AirmerCafeModels review = reviews[0];
    return Scaffold(
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 4),
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
                            RatingSmallContainer(
                              number: 1,
                              color: Color(0xFFEB4654),
                            ),
                            RatingSmallContainer(
                              number: 2,
                              color: Color(0xFF5698E2),
                            ),
                            RatingSmallContainer(
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
                            RatingSmallContainer(
                              number: 4,
                              color: Color(0xFFFA8968),
                            ),
                            RatingSmallContainer(
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
                  style: Theme.of(context).textTheme.caption.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 3,
                ),
                RatingBar(
                  rating: 5,
                  color: Color(0xFF125BB7),
                  percent: 0.85,
                ),
                RatingBar(
                  rating: 4,
                  color: Color(0xFFFA8968),
                  percent: 0.70,
                ),
                RatingBar(
                  rating: 3,
                  color: Color(0xFF5C5B5C),
                  percent: 0.40,
                ),
                RatingBar(
                  rating: 2,
                  color: Color(0xFF5698E2),
                  percent: 0.15,
                ),
                RatingBar(
                  rating: 1,
                  color: Color(0xFFEB4654),
                  percent: 0.10,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: reviews.length,
                  shrinkWrap: true,
                  itemBuilder: (_, index) => CustomerReviewWidget(
                    review: reviews[index],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
