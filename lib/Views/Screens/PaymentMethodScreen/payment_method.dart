import 'package:flutter/material.dart';
import 'package:onlinemarketapp/Views/Constants/colors.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

import 'Components/payment_method_container.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox.expand(
        child: Padding(
          padding: EdgeInsets.only(
              top: SizeConfig.heightMultiplier * 10,
              left: SizeConfig.widthMultiplier * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment Methods",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 5,
              ),
              PaymentMethodContainer(
                textcolor: Color(0xFFD14937),
                color: Color(0xFFF9BEAD),
                title: "Bank Card",
                image: "assets/bankcard.png",
              ),
              PaymentMethodContainer(
                textcolor: Color(0xFFB38800),
                color: Color(0xFFFBD96D),
                title: "Credit Card",
                image: "assets/creditcard.png",
              ),
              PaymentMethodContainer(
                textcolor: Color(0xFF30A764),
                color: Color(0xFFDFF8EA),
                title: "Cash",
                image: "assets/Cash.png",
              ),
              PaymentMethodContainer(
                  title: "PayPal",
                  image: "assets/paypal.png",
                  textcolor: Color(0xFF1E5162),
                  color: Color(0xFFB1EAFD))
            ],
          ),
        ),
      )),
    );
  }
}
