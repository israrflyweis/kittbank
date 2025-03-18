import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../controller/bottom_sheet.dart';
import '../../utils/utils.dart';

class AccountStatement extends StatelessWidget {
  AccountStatement({super.key});
  final List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: gradient),
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
                          "Account Statements",
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
                  "2025",
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  // shrinkWrap: true,
                  // physics: AlwaysScrollableScrollPhysics(),
                  //scrollDirection: Axis.vertical,
                  itemCount: months.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15.h, horizontal: 5),
                      child: InkWell(
                        onTap: () {
                          if (months[index] == "January") {
                            Get.bottomSheet(
                              Padding(
                                padding: const EdgeInsets.only(top: 100),
                                child: CustomBottomSheet(),
                              ),
                              isScrollControlled: true,
                            );
                          }
                        },
                        child: Text(
                          months[index],
                          style: GoogleFonts.openSans(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
