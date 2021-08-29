import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:onlinemarketapp/Models/credit_or_debit_cards_models.dart';
import 'package:onlinemarketapp/Views/Screens/PaymentScreen.dart/Components/bottom_sheet.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/steps_container.dart';

class Payment extends StatefulWidget {
  const Payment({Key key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 5,
            ),
            Row(
              children: [
                StepsContainer(
                  color: Color(0xFFCDB9FF),
                  darkcolor: Color(0xFF6236FF),
                  icon: LineAwesomeIcons.clipboard_list,
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 5,
                ),
                Container(
                    width: SizeConfig.widthMultiplier * 73,
                    child: Text(
                      "Food Crazy Pizza Store x 2 big Pizza Menu",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.textMultiplier * 1.6,
                          color: Colors.grey.shade700),
                    ))
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 0.5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 6),
              child: Container(
                height: SizeConfig.heightMultiplier * 10,
                decoration: DottedDecoration(
                    shape: Shape.line, linePosition: LinePosition.left),
              ),
            ),
            Row(
              children: [
                StepsContainer(
                  color: Color(0xFFFF9EC3),
                  darkcolor: Color(0xFFCF2F6C),
                  icon: MdiIcons.truckOutline,
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 5,
                ),
                Container(
                    width: SizeConfig.widthMultiplier * 73,
                    child: Text(
                      "Old Student House 56 Street",
                      style: TextStyle(color: Colors.grey.shade700),
                    ))
              ],
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 6,
            ),
            Text(
              "Credit/Debit Cards",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 4,
            ),
            ListView.builder(
                itemCount: cards.length,
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  return MyCardsContainer(
                      index: index,
                      selectedindex: selectedindex,
                      press: () {
                        setState(() {
                          selectedindex = index;
                        });
                      },
                      card: cards[index]);
                })
          ],
        ),
      )),
      bottomSheet: PaymentBottomSheet(),
    );
  }
}

class MyCardsContainer extends StatelessWidget {
  const MyCardsContainer({
    Key key,
    @required this.card,
    @required this.press,
    @required this.index,
    @required this.selectedindex,
  }) : super(key: key);
  final int index;
  final int selectedindex;
  final CardsModels card;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: SizeConfig.heightMultiplier * 7,
        width: SizeConfig.widthMultiplier * 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              MdiIcons.creditCard,
              size: 35,
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  card.title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 0.3,
                ),
                Text(
                  card.number,
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.textMultiplier * 1.4),
                ),
              ],
            ),
            Spacer(),
            selectedindex == index
                ? Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: SizeConfig.heightMultiplier * 3.5,
                        width: SizeConfig.widthMultiplier * 10,
                        decoration: BoxDecoration(
                            color: Color(0xFFFF9EC3), shape: BoxShape.circle),
                      ),
                      Container(
                        height: SizeConfig.heightMultiplier * 2.5,
                        width: SizeConfig.widthMultiplier * 4,
                        decoration: BoxDecoration(
                            color: Color(0xFFCF306D), shape: BoxShape.circle),
                      ),
                    ],
                  )
                : Container(
                    height: SizeConfig.heightMultiplier * 3.5,
                    width: SizeConfig.widthMultiplier * 10,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200, shape: BoxShape.circle),
                  ),
          ],
        ),
      ),
    );
  }
}
