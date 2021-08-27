import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class CounterButtons extends StatelessWidget {
  const CounterButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 3.2,
          width: SizeConfig.widthMultiplier * 8,
          decoration: BoxDecoration(
            color: Color(0xFFB1EAFD),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Icon(Icons.remove, color: Color(0xFF48B6DB)),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
          child: Text(
            "2",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: SizeConfig.textMultiplier * 2),
          ),
        ),
        Container(
          height: SizeConfig.heightMultiplier * 3.2,
          width: SizeConfig.widthMultiplier * 8,
          decoration: BoxDecoration(
            color: Color(0xFFB1EAFD),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Icon(Icons.add, color: Color(0xFF48B6DB)),
          ),
        )
      ],
    );
  }
}
