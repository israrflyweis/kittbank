import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kittbank/app_routes.dart';
import 'package:kittbank/components/primary_button.dart';
import 'package:kittbank/utils/utils.dart';
import 'package:percent_indicator/percent_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<IntroItem> items = [
    IntroItem(
        image: "assets/images/intro1.png",
        title: "Easy way to Track your financial",
        subtitle:
            "All your financial activities wil be recorded and displayed briefly and clearly",
        percent: 0.25),
    IntroItem(
        image: "assets/images/intro2.png",
        title: "Set your finances for the future",
        subtitle:
            "Features that can make it easier for you to save and plan finances in the future",
        percent: .5),
    IntroItem(
        image: "assets/images/intro3.png",
        title: "New experience in manage money",
        subtitle:
            "Let’s get started and feel a new and fun experience in managing your finances",
        percent: .75),
    IntroItem(
        image: "assets/images/intro4.png",
        title: "Manage all your savings in a single place",
        subtitle:
            "Let’s get started and feel a new and fun experience in managing your finances",
        percent: 1)
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: gradient),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'KittBank',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Get.offNamed(AppRoutes.login),
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30.r),
                              child: Image.asset(
                                "assets/images/logo.jpeg",
                                height: 50.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            child: CircularPercentIndicator(
                              radius: 30.0,
                              lineWidth: 5.0,
                              percent: items[index].percent,
                              backgroundColor: Colors.white,
                              progressColor: Color(0xffDDBC2C),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Image.asset(items[index].image),
                Text(items[index].title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  items[index].subtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                PrimaryButton(
                  text: "Next",
                  onTap: () {
                    if (index != items.length - 1) {
                      setState(() {
                        index++;
                      });
                    } else {
                      Navigator.pushNamed(context, AppRoutes.login);
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IntroItem {
  String image;
  String title;
  String subtitle;
  double percent;

  IntroItem(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.percent});
}
