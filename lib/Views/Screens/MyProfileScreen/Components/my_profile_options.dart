import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/my_profile_options_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class MyProfileOptions extends StatelessWidget {
  const MyProfileOptions({
    Key key,
    @required this.option,
  }) : super(key: key);
  final MyProfileOptionsModels option;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 5,
          width: SizeConfig.widthMultiplier * 100,
          child: Row(
            children: [
              Icon(
                option.icon,
                color: Color(0xFFB23F56),
              ),
              SizedBox(width: SizeConfig.widthMultiplier * 5),
              Text(
                option.title,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Icon(Icons.keyboard_arrow_right),
            ],
          ),
        ),
        Divider(),
        SizedBox(
          height: SizeConfig.heightMultiplier * 3,
        )
      ],
    );
  }
}
