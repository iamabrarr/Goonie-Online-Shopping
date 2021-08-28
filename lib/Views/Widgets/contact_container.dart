import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class ContactContainer extends StatelessWidget {
  const ContactContainer({
    Key key,
    @required this.color,
    @required this.darkColor,
    @required this.title,
    @required this.icon,
    @required this.press,
  }) : super(key: key);
  final Color color;
  final Color darkColor;
  final String title;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: SizeConfig.widthMultiplier * 3),
      child: GestureDetector(
        onTap: press,
        child: Container(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
          height: SizeConfig.heightMultiplier * 5,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 17,
                  color: darkColor,
                ),
                SizedBox(width: SizeConfig.widthMultiplier * 2),
                Text(title,
                    style: TextStyle(
                        color: darkColor, fontWeight: FontWeight.w600))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
