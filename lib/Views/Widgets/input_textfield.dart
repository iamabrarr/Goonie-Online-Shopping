import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Constants/colors.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key key,
    @required this.title,
    @required this.icon,
    this.suffixtext,
    this.validator,
    @required this.pass,
    @required this.controller,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final bool suffixtext;
  final TextEditingController controller;
  final Function validator;
  final bool pass;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 8.0,
              ),
              child: Icon(
                icon,
                color: Colors.grey.shade600,
                size: SizeConfig.heightMultiplier * 3,
              ),
            ),
            Expanded(
              child: TextFormField(
                obscureText: pass,
                validator: validator,
                maxLines: 1,
                controller: controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixText: suffixtext ? "Forget?  " : null,
                    suffixStyle: TextStyle(
                        color: PrimaryColor, fontWeight: FontWeight.w600)),
              ),
            ),
          ],
        ),
        Divider(
          height: 1.5,
          color: Colors.grey.shade700,
        )
      ],
    );
  }
}
