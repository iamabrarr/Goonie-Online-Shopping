import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarketapp/Models/onboarding_models.dart';
import 'package:onlinemarketapp/Views/Constants/colors.dart';
import 'package:onlinemarketapp/Views/Screens/Authscreens/Signin/signin.dart';
import 'package:onlinemarketapp/Views/Utils/SizedConfig.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentindex = 0;
  PageController controller;
  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: PageView.builder(
                  controller: controller,
                  // controller: PageController,
                  onPageChanged: (int index) {
                    setState(() {
                      currentindex = index;
                    });
                  },
                  itemCount: onBoardingContents.length,
                  itemBuilder: (_, i) {
                    return Column(
                      children: [
                        SizedBox(height: SizeConfig.heightMultiplier * 09),
                        Text(
                          onBoardingContents[i].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.textMultiplier * 2.6),
                        ),
                        SizedBox(height: SizeConfig.heightMultiplier * 10),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.widthMultiplier * 4),
                          child: Image.asset(onBoardingContents[i].image),
                        )
                      ],
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 6,
                  right: SizeConfig.widthMultiplier * 4),
              child: Row(
                children: [
                  ...List.generate(
                    onBoardingContents.length,
                    (index) => Container(
                      margin: EdgeInsets.only(
                          right: SizeConfig.widthMultiplier * 1.5),
                      height: SizeConfig.heightMultiplier * 1.3,
                      width: currentindex == index
                          ? SizeConfig.widthMultiplier * 10
                          : SizeConfig.widthMultiplier * 3.5,
                      decoration: BoxDecoration(
                        color: currentindex == index
                            ? SecondaryColor
                            : Colors.grey.shade300,
                        borderRadius: currentindex == index
                            ? BorderRadius.circular(10)
                            : BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 5,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 6,
                  right: SizeConfig.widthMultiplier * 4),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(Signin());
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: SizeConfig.heightMultiplier * 7,
                    width: SizeConfig.widthMultiplier * 45,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      onPressed: () {
                        if (currentindex == onBoardingContents.length - 1) {
                          Get.to(Signin());
                        }
                        controller.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.bounceIn);
                      },
                      color: SecondaryColor,
                      child: currentindex == onBoardingContents.length - 1
                          ? Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )
                          : Text(
                              "Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
          ],
        ),
      ),
    );
  }
}
