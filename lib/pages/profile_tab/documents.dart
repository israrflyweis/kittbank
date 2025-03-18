import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/app_routes.dart';
import 'package:kittbank/components/custom_container.dart';

import '../../utils/utils.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: gradient),
        child: SingleChildScrollView(
          // Fix: Enable scrolling
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                            "Documents",
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
                  height: 30.h,
                ),
                Container(
                  width: Get.width,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    gradient: gradient,
                  ),
                  child: Text(
                    "CATEGORY",
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    CustomContainer(
                      child: Column(
                        children: [
                          ListTile(
                            onTap:() =>
                              Get.toNamed(AppRoutes.accountStatement),

                            leading: Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                              ),
                              child: Image.asset("assets/images/bank.png"),
                            ),
                            title: Text(
                              "Account Statements",
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                          ListTile(
                            onTap: () => Get.toNamed(AppRoutes.savingScreen),
                            leading: Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                              ),
                              child: Image.asset("assets/images/bank.png"),
                            ),
                            title: Text(
                              "Savings",
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                          ListTile(
                            onTap: ()=> Get.toNamed(AppRoutes.texReturnsScreen),
                            leading: Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                              ),
                              child: Image.asset("assets/images/bank.png"),
                            ),
                            title: Text(
                              "Tax Returns",
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
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
