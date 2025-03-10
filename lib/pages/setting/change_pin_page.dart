import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kittbank/components/primary_button.dart';
import 'package:kittbank/utils/utils.dart';

class ChangePinCode extends StatefulWidget {
  const ChangePinCode({super.key});

  @override
  State<ChangePinCode> createState() => _ChangePinCodeState();
}

class _ChangePinCodeState extends State<ChangePinCode> {
  bool obscureText = true;
  bool cObscureText = true;
  bool c2ObscureText = true;

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
                        width: 40.w,
                      ),
                      Text("Change Cash PIN",
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
                      TextField(
                          obscureText: obscureText,
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
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    obscureText = !obscureText;
                                  });
                                },
                                icon: Icon(
                                  obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.white,
                                )),
                            hintText: "Your Current PIN",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextField(
                          obscureText: cObscureText,
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
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    cObscureText = !cObscureText;
                                  });
                                },
                                icon: Icon(
                                  cObscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.white,
                                )),
                            hintText: "Re-enter Password",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextField(
                          obscureText: c2ObscureText,
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
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    c2ObscureText = !c2ObscureText;
                                  });
                                },
                                icon: Icon(
                                  c2ObscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.white,
                                )),
                            hintText: "Re Enter PIN",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(
                        height: 60.h,
                      ),
                    ],
                  ),
                ),
                PrimaryButton(
                  text: "Next",
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
