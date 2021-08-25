import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarketapp/Views/Constants/colors.dart';
import 'package:onlinemarketapp/Views/Screens/Authscreens/OTPscreens/OTPcodeScreen/otp_code.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/my_button.dart';

class EnterNumber extends StatefulWidget {
  const EnterNumber({Key key}) : super(key: key);

  @override
  _EnterNumberState createState() => _EnterNumberState();
}

class _EnterNumberState extends State<EnterNumber> {
  TextEditingController otpnumber = TextEditingController();
  String _phoneCode = '92';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 5,
            ),
            Center(
              child: Column(children: [
                Image.asset(
                  "assets/logo.png",
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 4),
                Text("Getting Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: SizeConfig.textMultiplier * 2.7)),
                SizedBox(height: SizeConfig.heightMultiplier * 2),
                Text(
                  "Create an account to continued",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ]),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 12,
            ),
            Container(
              height: SizeConfig.heightMultiplier * 31,
              width: SizeConfig.widthMultiplier * 93,
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.heightMultiplier * 4,
                  horizontal: SizeConfig.widthMultiplier * 7),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "OTP authentication",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3.5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: SizeConfig.widthMultiplier * 18,
                        child: GestureDetector(
                            onTap: () {
                              showCountryPicker(
                                showPhoneCode: true,
                                context: context,
                                onSelect: (Country country) {
                                  setState(() {
                                    _phoneCode = country.phoneCode;
                                  });
                                },
                              );
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "+" + _phoneCode,
                                      style:
                                          Theme.of(context).textTheme.subtitle1,
                                    ),
                                    Icon(Icons.keyboard_arrow_down),
                                  ],
                                ),
                                SizedBox(
                                  height: SizeConfig.heightMultiplier * 1,
                                ),
                                Divider(
                                  height: 2.5,
                                  color: Colors.black,
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 5,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            TextFormField(
                              controller: otpnumber,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                            Divider(
                              height: 1,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3,
                  ),
                  MyButton(
                    press: () {
                      Get.to(OTPCode());
                    },
                    height: SizeConfig.heightMultiplier * 08,
                    width: SizeConfig.widthMultiplier * 85,
                    circular: 20,
                    title: "Next",
                    color: SecondaryColor,
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
