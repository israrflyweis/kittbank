import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kittbank/components/primary_button.dart';
import 'package:kittbank/utils/utils.dart';

import '../../app_routes.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  bool obscureText = true;
  bool cObscureText = true;

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();

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
                      Text(
                        "OTP Verification",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.r),
                        child: Image.asset(
                          "assets/images/logo.jpeg",
                          height: 50.h,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: Get.width * 0.9,
                  child: Text(
                    "Please check your email to see the verification code",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 80.h,
                ),
                SizedBox(
                  width: Get.width * 0.9,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    focusNode2.requestFocus();
                                  }
                                },
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp),
                                focusNode: focusNode1,
                                maxLength: 1,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey.withOpacity(0.1),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.h, vertical: 20.w),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(
                            child: TextField(
                                onChanged: (value) => {
                                      if (value.length == 1)
                                        {
                                          focusNode3.requestFocus(),
                                        }
                                    },
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp),
                                focusNode: focusNode2,
                                maxLength: 1,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey.withOpacity(0.1),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.h, vertical: 20.w),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(
                            child: TextField(
                                onChanged: (value) => {
                                      if (value.length == 1)
                                        {
                                          focusNode4.requestFocus(),
                                        }
                                    },
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp),
                                focusNode: focusNode3,
                                maxLength: 1,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey.withOpacity(0.1),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.h, vertical: 20.w),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(
                            child: TextField(
                                onChanged: (value) => {
                                      if (value.length == 1)
                                        {
                                          // Remove Focus
                                          focusNode4.unfocus(),
                                        }
                                    },
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp),
                                focusNode: focusNode4,
                                maxLength: 1,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey.withOpacity(0.1),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.h, vertical: 20.w),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0.5),
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Send code reload in",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "03:23",
                            style: TextStyle(
                                color: Color(0xffFAD332),
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 80.h,
                ),
                PrimaryButton(
                  text: "Next",
                  onTap: () {
                    Get.toNamed(AppRoutes.newPassword);
                  },
                ),
                SizedBox(
                  height: 40.h,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Want to change your mail?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Text(
                        "Back",
                        style: TextStyle(
                          color: Color(
                            0xffFAD332,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
