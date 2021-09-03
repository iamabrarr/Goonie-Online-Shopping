import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class CategoryContainer extends StatefulWidget {
  const CategoryContainer({
    Key key,
    @required this.title,
  }) : super(key: key);
  final String title;

  @override
  _CategoryContainerState createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  bool tapped = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tapped = !tapped;
        });
      },
      child: Container(
        margin: EdgeInsets.only(left: SizeConfig.widthMultiplier * 4),
        height: SizeConfig.heightMultiplier * 6,
        decoration: BoxDecoration(
          color: tapped ? Colors.grey.shade200 : Color(0xFFB23F56),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 5.8),
            child: Text(
              widget.title,
              style: TextStyle(
                  fontWeight: tapped ? FontWeight.w600 : FontWeight.w400,
                  color: tapped ? Colors.grey.shade500 : Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
