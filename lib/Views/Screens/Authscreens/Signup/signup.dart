import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarketapp/Views/Constants/colors.dart';
import 'package:onlinemarketapp/Views/Screens/Authscreens/OTPscreens/EnterNumberScreen/enter_number.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/input_textfield.dart';
import 'package:onlinemarketapp/Views/Widgets/my_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();

    TextEditingController password = TextEditingController();
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.heightMultiplier * 3),
              Center(
                child: Column(children: [
                  Image.asset(
                    "assets/logo.png",
                  ),
                  SizedBox(height: SizeConfig.heightMultiplier * 2),
                  Text("Getting Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: SizeConfig.textMultiplier * 2.7)),
                  SizedBox(height: SizeConfig.heightMultiplier * 1),
                  Text(
                    "Create an account to continued",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ]),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 6,
              ),
              Container(
                height: SizeConfig.heightMultiplier * 64,
                width: SizeConfig.widthMultiplier * 93,
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.heightMultiplier * 3,
                    horizontal: SizeConfig.widthMultiplier * 7),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                child: Column(
                  children: [
                    InputTextField(
                        pass: false,
                        title: "Your Name",
                        icon: Icons.person_outline_outlined,
                        suffixtext: false,
                        controller: name),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 4,
                    ),
                    InputTextField(
                        title: "Email",
                        icon: Icons.mail_outline,
                        suffixtext: false,
                        pass: false,
                        controller: email),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 4,
                    ),
                    InputTextField(
                        pass: true,
                        suffixtext: false,
                        title: "Password",
                        icon: Icons.lock_outline,
                        controller: password),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 4,
                    ),
                    MyButton(
                      press: () {
                        Get.to(EnterNumber());
                      },
                      height: SizeConfig.heightMultiplier * 08,
                      width: SizeConfig.widthMultiplier * 85,
                      circular: 20,
                      title: "Sign Up",
                      color: SecondaryColor,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Text(" Sign in",
                              style: TextStyle(
                                color: PrimaryColor,
                                fontWeight: FontWeight.w600,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
