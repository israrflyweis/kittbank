import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/app_routes.dart';
import 'package:kittbank/components/custom_container.dart';
import 'package:kittbank/components/primary_button.dart';

import '../../components/custom_switch.dart';
import '../../utils/utils.dart';

class SecurityPrivacy extends StatefulWidget {
  const SecurityPrivacy({super.key});

  @override
  State<SecurityPrivacy> createState() => _SecurityPrivacyState();
}

class _SecurityPrivacyState extends State<SecurityPrivacy> {
  bool isOn = false;
  bool checkBox1 = false;
  bool checkBox2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: gradient),
        child: Padding(
          padding: EdgeInsets.only(
            top: 50,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.2),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Security & Privacy",
                            style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: gradient,
                  ),
                  child: Text(
                    "Security",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Security Lock",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                          ),
                          CustomSwitch(),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "A:Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
                        style: GoogleFonts.roboto(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      ListTile(
                        horizontalTitleGap: 0,
                        contentPadding: EdgeInsets.zero,
                        leading: Checkbox(
                          value: checkBox1,
                          onChanged: (value) {
                            setState(() {
                              checkBox1 = value!;
                            });
                          },
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          side: BorderSide(color: Colors.white, width: 2),
                        ),
                        title: Text(
                          "Move money",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      ListTile(
                        horizontalTitleGap: 0,
                        minLeadingWidth: 0,
                        minVerticalPadding: 0,
                        minTileHeight: 0,
                        contentPadding: EdgeInsets.zero,
                        leading: Checkbox(
                          value: checkBox2,
                          onChanged: (value) {
                            setState(() {
                              checkBox2 = value!;
                            });
                          },
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          side: BorderSide(color: Colors.white, width: 2),
                        ),
                        title: Text(
                          "Unlock the app",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.2,
                      ),
                      Center(
                        child: SizedBox(
                          width: Get.width * 0.85,
                          height: Get.height * 0.07,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.changePin);
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  Color(0xffFAD332)),
                              shape: WidgetStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                              ),
                            ),
                            child: Text(
                              "Change Cash PIN",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Text(
                        "Your Device",
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "A:Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
                        style: GoogleFonts.roboto(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
