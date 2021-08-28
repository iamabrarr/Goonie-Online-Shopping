import 'package:flutter/material.dart';

class AirmerCafeModels {
  String title, image, category, customerReview, customername;
  Color color, darkcolor;
  int votes, price;
  double rating, customerRating;
  AirmerCafeModels(
      {this.color,
      this.image,
      this.price,
      this.title,
      this.votes,
      this.category,
      this.rating,
      this.darkcolor,
      this.customerReview,
      this.customername,
      this.customerRating});
}

List<AirmerCafeModels> drinks = [
  AirmerCafeModels(
      image: "assets/cocktail.png",
      title: "Blue Diamond",
      category: "Coctail",
      price: 13,
      votes: 125,
      color: Color(0xFFD6E7FF),
      darkcolor: Color(0xFF408FE7),
      rating: 3.5),
  AirmerCafeModels(
    category: "Coffee",
    title: "Caramel",
    rating: 5,
    image: "assets/coffee.png",
    price: 10,
    votes: 230,
    darkcolor: Color(0xFFE36E4C),
    color: Color(0xFFF0C4B7),
  )
];
List<AirmerCafeModels> reviews = [
  AirmerCafeModels(
    rating: 4.8,
    customerRating: 5,
    customerReview:
        "I hate this story, but I just also learned of the things what the actress has done,I was so disappointed. Although she has done something wrong, I just wanna to say that the movie is pretty bad on its own and I hate the song especially Everything I Need. Also,the fight scenes are very boring, just like real people fighting in front of you.",
    customername: "Amad Zahid",
  ),
  AirmerCafeModels(
    rating: 4.8,
    customerRating: 4,
    customerReview:
        "I hate this story, but I just also learned of the things what the actress has done,I was so disappointed. Although she has done something wrong, I just wanna to say that the movie is pretty bad on its own and I hate the song especially Everything I Need. Also,the fight scenes are very boring, just like real people fighting in front of you.",
    customername: "Abrar Ahmad",
  ),
  AirmerCafeModels(
    rating: 4.8,
    customerRating: 3,
    customerReview:
        "I hate this story, but I just also learned of the things what the actress has done,I was so disappointed. Although she has done something wrong, I just wanna to say that the movie is pretty bad on its own and I hate the song especially Everything I Need. Also,the fight scenes are very boring, just like real people fighting in front of you.",
    customername: "Hamza Shehroz",
  ),
  AirmerCafeModels(
    rating: 4.8,
    customerRating: 4.5,
    customerReview:
        "I hate this story, but I just also learned of the things what the actress has done,I was so disappointed. Although she has done something wrong, I just wanna to say that the movie is pretty bad on its own and I hate the song especially Everything I Need. Also,the fight scenes are very boring, just like real people fighting in front of you.",
    customername: "Master",
  ),
];
