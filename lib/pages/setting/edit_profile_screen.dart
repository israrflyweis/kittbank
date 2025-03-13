import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/components/primary_button.dart';
import 'package:kittbank/utils/utils.dart';

import '../../app_routes.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
                      Text(
                        "Edit Profile",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          enableDrag: true, // Allow user to swipe down to close
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                          ),
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return Container(
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(12),
                                ),
                                gradient: gradient,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "Upload From",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.openSans(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () => Navigator.pop(context),
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 25),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                            // TODO: Open Camera Function
                                          },
                                          child: Column(
                                            children: [
                                              Icon(Icons.linked_camera, color: Colors.white, size: 40),
                                              SizedBox(height: 5),
                                              Text(
                                                "Camera",
                                                style: GoogleFonts.openSans(
                                                  color: Color(0xffFAD332),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                            // TODO: Open File Picker
                                          },
                                          child: Column(
                                            children: [
                                              Icon(Icons.file_open_rounded, color: Colors.white, size: 40),
                                              SizedBox(height: 5),
                                              Text(
                                                "Files",
                                                style: GoogleFonts.openSans(
                                                  color: Color(0xffFAD332),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/images/layer.png"),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Image.asset("assets/images/capture.png"),
                    ),
                  ],
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
                            hintText: "Full Name",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300),
                          )),
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
                        height: 70.h,
                      ),
                    ],
                  ),
                ),
                PrimaryButton(
                  text: "Update Information",
                  onTap: () {
                     Get.offNamed(AppRoutes.tabScreen,arguments: {"initialIndex" : 4});
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
