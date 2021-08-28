import 'dart:ffi';

import 'package:flutter/material.dart';

class MegaDealsModels {
  String name, category, materials, instructions, availableTime, image;
  int price, discountedPrice, pieces, calories, votes;
  double rating;
  Color color;
  MegaDealsModels({
    this.name,
    this.category,
    this.pieces,
    this.votes,
    this.price,
    this.availableTime,
    this.calories,
    this.discountedPrice,
    this.instructions,
    this.materials,
    this.image,
    this.color,
    this.rating,
  });
}

List<MegaDealsModels> megaDeals = [
  MegaDealsModels(
      name: "Zinger Tower",
      materials: "cheese,bun,chicken breasts,Egg,Zinger Sauce,Mustard",
      category: "Burgers",
      pieces: 1,
      calories: 214,
      instructions:
          "It is a long established fact that areader will be distracted by the readable content of a page when looking at its layout",
      price: 32,
      discountedPrice: 17,
      votes: 243,
      image: "assets/hamburger.png",
      color: Color(0xFFFB9C89),
      availableTime: "15 August 2021",
      rating: 4),
  MegaDealsModels(
    name: "Fresh Strawberry",
    materials:
        "Ice cream, heavy cream, milk, vanilla and strawberries in a large.",
    category: "Milkshakes",
    pieces: 4,
    calories: 323,
    instructions:
        "It is a long established fact that areader will be distracted by the readable content of a page when looking at its layout",
    price: 19,
    discountedPrice: 12,
    votes: 125,
    image: "assets/icecreams.png",
    color: Color(0xFFCB6D80),
    availableTime: "15 August 2021",
    rating: 4,
  ),
];
