import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class ProductRatings extends StatefulWidget {
  const ProductRatings({
    Key key,
  }) : super(key: key);

  @override
  _ProductRatingsState createState() => _ProductRatingsState();
}

class _ProductRatingsState extends State<ProductRatings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RatingBar.builder(
          initialRating: 4,
          minRating: 0.5,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemSize: SizeConfig.heightMultiplier * 2.5,
          itemCount: 5,
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {},
        ),
      ],
    );
  }
}
