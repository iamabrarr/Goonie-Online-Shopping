import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/ratings.dart';
import '../../../../Widgets/contact_container.dart';
import 'Components/order_now_bottom_sheet.dart';

class InfoTab extends StatelessWidget {
  const InfoTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              Text(
                "Aimer le Café",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              Row(
                children: [
                  Ratings(
                    color: Colors.amber,
                    rating: 4,
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 4,
                  ),
                  Text(
                    "Open Now",
                    style: TextStyle(
                        color: Colors.lightGreen,
                        fontWeight: FontWeight.w700,
                        fontSize: SizeConfig.textMultiplier * 1.4),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              Text(
                "6 Place St Germain des Pres,Paris",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.black),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              Text(
                "Info",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              Text(
                "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or  randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. ",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.black),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              Text(
                "Contact",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ContactContainer(
                      color: Color(0xFFF9BEAD),
                      darkColor: Color(0xFFEF6060),
                      title: "+1 232 2323 23",
                      icon: Icons.call,
                      press: () {},
                    ),
                    ContactContainer(
                      press: () {},
                      color: Color(0xFFB1EAFD),
                      darkColor: Color(0xFF59A3BC),
                      title: "bugradere.com",
                      icon: MdiIcons.web,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              Text(
                "Info",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              Text(
                "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or  randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. ",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.black),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 13,
              )
            ],
          ),
        ),
      ),
      bottomSheet: OrderNowBottomSheet(),
    );
  }
}
