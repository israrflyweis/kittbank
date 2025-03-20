import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/components/primary_button.dart';
import 'package:kittbank/utils/utils.dart';

import '../../app_routes.dart';
import '../../components/checkyour_mail_popup.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  bool obscureText = true;
  bool cObscureText = true;

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
                        "Forgot Password",
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
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  width: Get.width * 0.9,
                  child: Column(
                    children: [
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
                            hintText: "Email Address",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80.h,
                ),
                PrimaryButton(
                  text: "Next",
                  onTap: () {
                    showModalBottomSheet(
                      //backgroundColor: Colors.black.withOpacity(0.8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),),
                      ),
                        context: context, builder: (context){
                      return BottomSheet(
                         backgroundColor:  Colors.black.withOpacity(0.2),
                        enableDrag: false,
                        onClosing: () {},
                        builder: (context) {
                          return Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                color: Colors.black.withOpacity(0.8),
                                height: 250,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 35),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Check your email",
                                          style: GoogleFonts.openSans(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "We have sent a instructions to recover your password to your email",

                                          textAlign: TextAlign.center,

                                          style: GoogleFonts.openSans(
                                            color: Colors.white54,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Spacer(),
                                        ElevatedButton(
                                          onPressed: () {
                                            Get.back();
                                            Get.toNamed(AppRoutes.otpVerification);
                                          },
                                          style: ElevatedButton.styleFrom(
                                              minimumSize:
                                              Size(MediaQuery.of(context).size.width, 45),
                                              backgroundColor: Colors.white38,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              )),
                                          child: Text(
                                            "Done",
                                            style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -25,
                                left: 0,
                                right: 0,
                                child: CircleAvatar(
                                  foregroundColor: Colors.brown,
                                  radius: 30,
                                  backgroundColor: Color(0xffFAD332),
                                  child: Icon(
                                    Icons.chat,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    });
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
                      "i have an account, ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    GestureDetector(
                      onTap: () => Get.offNamed(AppRoutes.login),
                      child: Text(
                        "Log in",
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
