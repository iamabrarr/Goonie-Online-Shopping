import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class RangeSliderr extends StatefulWidget {
  const RangeSliderr({Key key}) : super(key: key);

  @override
  _RangeSliderrState createState() => _RangeSliderrState();
}

class _RangeSliderrState extends State<RangeSliderr> {
  static double _lowerValue = 18;
  static double _upperValue = 100;
  static double maxValue = 60;
  static double minValue = 18;

  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
        values: [_lowerValue, _upperValue],
        rangeSlider: true,
        max: maxValue,
        min: minValue,
        handlerAnimation: FlutterSliderHandlerAnimation(
            curve: Curves.elasticOut,
            reverseCurve: null,
            duration: Duration(milliseconds: 700),
            scale: 1.4),
        trackBar: FlutterSliderTrackBar(
          activeTrackBar: BoxDecoration(
            color: Color(0xFFB23F56),
          ),
          inactiveTrackBar:
              BoxDecoration(color: Colors.grey.shade200.withOpacity(0.7)),
          activeTrackBarHeight: SizeConfig.heightMultiplier * 1.7,
          inactiveTrackBarHeight: SizeConfig.heightMultiplier * 1.7,
        ),
        rightHandler: FlutterSliderHandler(
            decoration: BoxDecoration(),
            child: Container(
              height: SizeConfig.heightMultiplier * 1.8,
              width: SizeConfig.widthMultiplier * 10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)]),
              child: Text(
                "\$ ${34}",
                style: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 1.5,
                    fontWeight: FontWeight.w600),
              ),
            )),
        handler: FlutterSliderHandler(
            decoration: BoxDecoration(),
            child: Container(
              height: SizeConfig.heightMultiplier * 1.8,
              width: SizeConfig.widthMultiplier * 10,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)]),
              child: Text(
                "\$ ${18}",
                style: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 1.5,
                    fontWeight: FontWeight.w600),
              ),
            )));
  }
}
