import 'package:flutter/material.dart';

class FoodCategories {
  String title, image;
  Color color;
  FoodCategories({
    this.title,
    this.image,
    this.color,
  });
}

List<FoodCategories> food = [
  FoodCategories(
    title: "Steak",
    image: "assets/category1.png",
    color: Color(0xFFF9BEAD),
  ),
  FoodCategories(
    title: "Vagetables",
    image: "assets/category2.png",
    color: Color(0xFFFBD96D),
  ),
  FoodCategories(
    title: "Beverages",
    image: "assets/category3.png",
    color: Color(0xFFCDB9FF),
  ),
  FoodCategories(
    title: "Fish",
    image: "assets/category4.png",
    color: Color(0xFFB1EAFD),
  ),
  FoodCategories(
    title: "Wine",
    image: "assets/category1.png",
    color: Color(0xFFFF9EC3),
  )
];
