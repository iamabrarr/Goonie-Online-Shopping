import 'package:flutter/material.dart';

class FilterCategoriesModels {
  String title, image;
  FilterCategoriesModels({
    this.title,
    this.image,
  });
}

List<FilterCategoriesModels> filtercats = [
  FilterCategoriesModels(image: "assets/cake.png", title: "Cake"),
  FilterCategoriesModels(image: "assets/food.png", title: "Food"),
  FilterCategoriesModels(image: "assets/drinks.png", title: "Drinks"),
  FilterCategoriesModels(image: "assets/snacks.png", title: "Snacks"),
  FilterCategoriesModels(image: "assets/beverage.png", title: "Beverages"),
];
