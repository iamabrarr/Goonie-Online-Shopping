import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarketapp/Views/Constants/colors.dart';
import 'package:onlinemarketapp/Views/Screens/Authscreens/Signup/signup.dart';
import 'package:onlinemarketapp/Views/Screens/BottomNavBar/BottomNavBar.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';
import 'package:onlinemarketapp/Views/Widgets/input_textfield.dart';
import 'package:onlinemarketapp/Views/Widgets/my_button.dart';

class Signin extends StatelessWidget {
  const Signin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
        backgroundColor: PrimaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.heightMultiplier * 5),
                Center(
                  child: Column(children: [
                    Image.asset(
                      "assets/logo.png",
                    ),
                    SizedBox(height: SizeConfig.heightMultiplier * 4),
                    Text("Let’s Sign You In",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: SizeConfig.textMultiplier * 2.7)),
                    SizedBox(height: SizeConfig.heightMultiplier * 2),
                    Text(
                      "Welcome back, you’ve been missed!",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ]),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 10),
                Container(
                  height: SizeConfig.heightMultiplier * 56.5,
                  width: SizeConfig.widthMultiplier * 93,
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.heightMultiplier * 5,
                      horizontal: SizeConfig.widthMultiplier * 7),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Column(
                    children: [
                      InputTextField(
                        pass: false,
                        controller: username,
                        title: "Username or Mail",
                        suffixtext: false,
                        icon: Icons.person_outline_outlined,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 5,
                      ),
                      InputTextField(
                        pass: true,
                        controller: password,
                        title: "Password",
                        suffixtext: true,
                        icon: Icons.lock_outline,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 6,
                      ),
                      MyButton(
                        press: () {
                          Get.to(BottomNavBar());
                        },
                        height: SizeConfig.heightMultiplier * 08,
                        width: SizeConfig.widthMultiplier * 85,
                        circular: 20,
                        title: "Sign in",
                        color: SecondaryColor,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’t have an account?",
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(SignUp());
                            },
                            child: Text(" Sign Up",
                                style: TextStyle(
                                  color: PrimaryColor,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
