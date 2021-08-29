import 'package:flutter/material.dart';

class CardsModels {
  String title, number;
  CardsModels({
    this.number,
    this.title,
  });
}

List<CardsModels> cards = [
  CardsModels(title: "Credit Card 1", number: "12456 **** **** **12"),
  CardsModels(title: "Credit Card 2", number: "12456 **** **** **54"),
  CardsModels(title: "Debit Card 1", number: "12456 **** **** **21"),
  CardsModels(title: "E-Wallet ", number: "Payment with a new card"),
];
