import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Models/addresses_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({
    Key key,
    @required this.address,
  }) : super(key: key);
  final Address address;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 7,
      padding: EdgeInsets.only(left: 4, top: 4, bottom: 4, right: 15),
      margin: EdgeInsets.only(
        bottom: SizeConfig.heightMultiplier * 3,
        left: SizeConfig.widthMultiplier * 3,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade200)),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: 6,
            ),
            height: SizeConfig.heightMultiplier * 6,
            width: SizeConfig.widthMultiplier * 13,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(address.image), fit: BoxFit.cover)),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  address.title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.textMultiplier * 1.6),
                ),
                Text(
                  address.address,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textMultiplier * 1.3),
                ),
                Text(
                  address.street,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.textMultiplier * 1.3),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
