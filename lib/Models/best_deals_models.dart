import 'package:flutter/material.dart';

class BestDeals {
  String image, title, locationtime;

  int price, discountprice, pieces;
  Color color;
  BestDeals({
    this.title,
    this.image,
    this.discountprice,
    this.locationtime,
    this.pieces,
    this.price,
    this.color,
  });
}

List<BestDeals> deals = [
  BestDeals(
    image: "assets/icecream.png",
    title: "Summer Sun Ice Cream Pack",
    pieces: 5,
    locationtime: "15 Minutes",
    price: 18,
    discountprice: 12,
    color: Color(0xFFFCEDD9),
  ),
  BestDeals(
    image: "assets/cans.png",
    title: "Summer Cold Drinks",
    pieces: 7,
    locationtime: "5 Minutes",
    price: 21,
    discountprice: 15,
    color: Color(0xFF28D294),
  ),
];
