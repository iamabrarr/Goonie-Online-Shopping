import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/food_categories_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key key,
    @required this.category,
  }) : super(key: key);
  final FoodCategories category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.widthMultiplier * 3,
        right: SizeConfig.widthMultiplier * 2,
      ),
      child: Column(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 7,
            width: SizeConfig.widthMultiplier * 16,
            margin: EdgeInsets.only(bottom: 7),
            decoration: BoxDecoration(
                color: category.color, borderRadius: BorderRadius.circular(15)),
            child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(category.image)),
          ),
          Text(category.title,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: SizeConfig.textMultiplier * 1.5)),
        ],
      ),
    );
  }
}
