import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class Ratings extends StatefulWidget {
  const Ratings({
    Key key,
    @required this.rating,
    @required this.color,
    @required this.itemSize,
  }) : super(key: key);
  final double rating;
  final Color color;
  final double itemSize;
  @override
  _RatingsState createState() => _RatingsState();
}

class _RatingsState extends State<Ratings> {
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: widget.rating,
      minRating: 0.5,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemSize: widget.itemSize,
      itemCount: 5,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: widget.color,
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
