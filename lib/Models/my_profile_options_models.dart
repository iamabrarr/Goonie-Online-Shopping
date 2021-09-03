import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyProfileOptionsModels {
  String title;
  IconData icon;
  MyProfileOptionsModels({
    this.title,
    this.icon,
  });
}

List<MyProfileOptionsModels> options = [
  MyProfileOptionsModels(
    title: "Manage Address",
    icon: MdiIcons.mapMarker,
  ),
  MyProfileOptionsModels(
    title: "Payment",
    icon: MdiIcons.walletOutline,
  ),
  MyProfileOptionsModels(
    title: "Orders",
    icon: LineAwesomeIcons.clipboard_list,
  ),
  MyProfileOptionsModels(
    title: "Favourites",
    icon: Icons.favorite_outline,
  ),
  MyProfileOptionsModels(
    title: "Offers",
    icon: Icons.card_giftcard,
  )
];
