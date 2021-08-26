import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Models/best_deals_models.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class BestDealsWidget extends StatefulWidget {
  const BestDealsWidget({
    Key key,
    @required this.deal,
  }) : super(key: key);
  final BestDeals deal;

  @override
  _BestDealsWidgetState createState() => _BestDealsWidgetState();
}

class _BestDealsWidgetState extends State<BestDealsWidget> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 17,
      width: SizeConfig.widthMultiplier * 84,
      margin: EdgeInsets.only(
          bottom: SizeConfig.heightMultiplier * 4,
          left: SizeConfig.widthMultiplier * 3.5,
          right: SizeConfig.widthMultiplier * 2),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 3),
                height: SizeConfig.heightMultiplier * 15,
                width: SizeConfig.widthMultiplier * 30,
                decoration: BoxDecoration(
                  color: widget.deal.color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(widget.deal.image)),
              ),
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      liked = !liked;
                    });
                  },
                  child: Container(
                    height: SizeConfig.imageSizeMultiplier * 9,
                    width: SizeConfig.widthMultiplier * 9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: liked
                            ? Icon(
                                Icons.favorite,
                                color: Color(0xFFEF6A62),
                                size: 17,
                              )
                            : Icon(
                                Icons.favorite_outline,
                                color: Colors.grey,
                                size: 17,
                              )),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              Text(
                widget.deal.title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: SizeConfig.textMultiplier * 1.5),
              ),
              Text(
                "Pieces ${widget.deal.pieces}",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade700,
                    fontSize: SizeConfig.textMultiplier * 1.5),
              ),
              Row(
                children: [
                  Icon(
                    MdiIcons.mapMarker,
                    size: 12,
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 2,
                  ),
                  Text(
                    "${widget.deal.locationtime} Away",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.textMultiplier * 1.5),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "\$ ${widget.deal.discountprice}",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFEF6A62),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 4,
                  ),
                  Text(" \$ ${widget.deal.price} ",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      )),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
