import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kittbank/components/primary_button.dart';
import 'package:kittbank/utils/utils.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
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
                      Image.asset("assets/images/backbtn.png", height: 40.h),
                      SizedBox(
                        width: 80.w,
                      ),
                      Text("Add Card",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.9,
                  child: Column(
                    children: [
                      Image.asset("assets/images/card.png", height: 200.h),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.withOpacity(0.1),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10.h, vertical: 20.w),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.5),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.5),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.5),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            hintText: "Cardholder Name",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.withOpacity(0.1),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10.h, vertical: 20.w),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.5),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.5),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0.5),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            hintText: "Card Number",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300),
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(right: 15.w),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    "assets/images/master.png",
                                    height: 15.h,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Image.asset(
                                    "assets/images/down_arrow.png",
                                    height: 15.h,
                                  )
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                                style: TextStyle(color: Colors.white),
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
                                  hintText: "Expiry Date",
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w300),
                                )),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: TextField(
                                style: TextStyle(color: Colors.white),
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
                                  hintText: "3-Digit CVV",
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w300),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                    ],
                  ),
                ),
                PrimaryButton(
                  text: "Add",
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
