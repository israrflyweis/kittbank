import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kittbank/components/primary_button.dart';
import 'package:kittbank/utils/utils.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          decoration: BoxDecoration(gradient: gradient),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () => Get.back(),
                          child: Image.asset("assets/images/backbtn.png",
                              height: 40.h)),
                      SizedBox(
                        width: 80.w,
                      ),
                      Text("Contact Us",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                SizedBox(
                  width: Get.width * 0.9,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Image.asset("assets/images/contact1.png"),
                      SizedBox(
                        height: 20.h,
                      ),
                      Image.asset("assets/images/contact2.png"),
                      SizedBox(
                        height: 20.h,
                      ),
                      Image.asset("assets/images/contact3.png"),
                      SizedBox(
                        height: 60.h,
                      ),
                    ],
                  ),
                ),
                PrimaryButton(
                  text: "Chat with us",
                  onTap: () {
                    // Get.offNamed(AppRoutes.otp);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
