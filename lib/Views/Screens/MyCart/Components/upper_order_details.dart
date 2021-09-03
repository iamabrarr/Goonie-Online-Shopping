import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class UpperOrderDetails extends StatelessWidget {
  const UpperOrderDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.heightMultiplier * 5,
          ),
          Container(
            height: SizeConfig.heightMultiplier * 7,
            width: SizeConfig.widthMultiplier * 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  MdiIcons.clipboardListOutline,
                  color: Color(0xFFC13254),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Food Crazy Pizza Store",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.textMultiplier * 1.6),
                    ),
                    Text(
                      "x 2 Big Pizza Menu",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.textMultiplier * 1.6),
                    ),
                    Text(
                      "x 3 Fresh Banan Milkshake",
                      style: Theme.of(context).textTheme.caption.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.textMultiplier * 1.6),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 2,
          ),
          Row(
            children: [
              Icon(
                MdiIcons.mapMarker,
                color: Color(0xFFC13254),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 15,
              ),
              Text("Old Student House 56 Street",
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: Colors.grey.shade600,
                      fontSize: SizeConfig.textMultiplier * 1.9))
            ],
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          Row(
            children: [
              Icon(
                Icons.circle,
                color: Color(0xFFC13254),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 15,
              ),
              Text("13:00 Today, Jul 24",
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: Colors.grey.shade600,
                      fontSize: SizeConfig.textMultiplier * 1.9))
            ],
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
        ],
      ),
    );
  }
}
