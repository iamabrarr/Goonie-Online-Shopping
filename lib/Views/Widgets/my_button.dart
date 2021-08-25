import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key key,
    @required this.width,
    @required this.height,
    @required this.circular,
    @required this.title,
    @required this.color,
    @required this.press,
  }) : super(key: key);
  final double width;
  final double height;
  final double circular;
  final String title;
  final Color color;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      // ignore: deprecated_member_use
      child: FlatButton(
        color: color,
        onPressed: press,
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(circular)),
      ),
    );
  }
}
