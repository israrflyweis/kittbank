import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AtmMapScreen extends StatefulWidget {
  const AtmMapScreen({super.key});

  @override
  State<AtmMapScreen> createState() => _AtmMapScreenState();
}

class _AtmMapScreenState extends State<AtmMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 20.h),
            height: Get.height * 0.15,
            color: Color(0xffD8DDE1),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Image.asset(
                      "assets/images/newback.png",
                      height: 60.h,
                    ),
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Text(
                    "ATM Location",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            width: Get.width,
            height: Get.height * 0.85,
            "assets/images/atmmap.png",
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
