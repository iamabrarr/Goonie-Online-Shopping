import 'package:flutter/material.dart';

class MyOrdersModels {
  String title, image, type;
  int quantity, price;
  Color color;

  MyOrdersModels({
    this.image,
    this.title,
    this.type,
    this.color,
    this.quantity,
    this.price,
  });
}

List<MyOrdersModels> myorders = [
  MyOrdersModels(
      title: "Turkish Steak",
      image: "assets/category1.png",
      color: Color(0xFFF9BEAD),
      quantity: 143,
      type: "Grams",
      price: 25),
  MyOrdersModels(
      title: "Salmon",
      image: "assets/category4.png",
      color: Color(0xFFB1EAFD),
      price: 30,
      quantity: 2,
      type: "Serving"),
  MyOrdersModels(
      title: "2 Cola",
      image: "assets/category3.png",
      color: Color(0xFFCDB9FF),
      price: 11,
      quantity: 1,
      type: "Bottle"),
  MyOrdersModels(
      image: "assets/category2.png",
      color: Color(0xFFFBD96D),
      title: "Vegetables",
      price: 34,
      quantity: 3,
      type: "Kg"),
];
