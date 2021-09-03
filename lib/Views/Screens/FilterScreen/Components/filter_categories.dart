import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/filter_categories_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class FilterCategories extends StatelessWidget {
  const FilterCategories({
    Key key,
    @required this.categories,
    this.press,
    this.index,
    this.selectedindex,
  }) : super(key: key);
  final FilterCategoriesModels categories;
  final VoidCallback press;
  final int index;
  final int selectedindex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: SizeConfig.heightMultiplier * 1,
          right: SizeConfig.widthMultiplier * 10),
      height: SizeConfig.heightMultiplier * 11,
      width: SizeConfig.widthMultiplier * 17,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: press,
            child: Container(
              height: SizeConfig.heightMultiplier * 7,
              width: SizeConfig.widthMultiplier * 16,
              decoration: BoxDecoration(
                color: selectedindex == index
                    ? Color(0xFFB23F56)
                    : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Image.asset(
                categories.image,
                height: SizeConfig.imageSizeMultiplier * 9,
                color: selectedindex == index
                    ? Colors.white
                    : Colors.grey.shade500,
              )),
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 1.5,
          ),
          Text(
            categories.title,
            style: TextStyle(
                color: selectedindex == index
                    ? Colors.grey.shade700
                    : Colors.grey.shade500,
                fontWeight: FontWeight.w700,
                fontSize: SizeConfig.textMultiplier * 1.3),
          )
        ],
      ),
    );
  }
}
