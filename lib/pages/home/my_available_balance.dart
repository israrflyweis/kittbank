import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/custom_container.dart';
import '../../components/custom_tile.dart';
import '../../utils/utils.dart';

class AvailableBalanceScreen extends StatelessWidget {
  const AvailableBalanceScreen({super.key});

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
            padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
            child: Column(
              children: [
                Row(
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
                          "My Available Balance",
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
                Text(
                  "\$12,253.70",
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Turn on free overdraft coverage",
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Color(0xffF5ED31).withOpacity(0.3),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Account details",
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "Routing number",
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                  ),
                  trailing: Icon(
                    Icons.copy,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "Account number",
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                  ),
                  trailing: Icon(
                    Icons.copy,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "How to use these numbers",
                  style: GoogleFonts.openSans(
                    color: Color(0xffF5ED31),
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  color: Color(0xffF5ED31).withOpacity(0.3),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "More way to add mony",
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 13.sp,
                          ),
                        ),
                        CustomTile(
                          title: "Add instantly",
                          subtitle: "Transfer from linked bank",
                          leading: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/bank.png")),
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(width: 2, color: Colors.white),
                            ),
                          ),
                        ),
                        CustomTile(
                          title: "Direct deposit",
                          subtitle: "Get paid up to 2 days faster",
                          leading: Card(
                            elevation: 3,
                            shadowColor: Colors.black12,
                            color: Colors.transparent,
                            child: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/down.png")),
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border:
                                    Border.all(width: 2, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        CustomTile(
                          title: "Get bank or wire transfer",
                          subtitle: "Send from another account",
                          leading: Card(
                            elevation: 3,
                            shadowColor: Colors.black12,
                            color: Colors.transparent,
                            child: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border:
                                    Border.all(width: 2, color: Colors.white),
                              ),
                              child: Icon(
                                Icons.settings_backup_restore,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        CustomTile(
                          title: "Deposit paper mony",
                          subtitle: "Send from another account",
                          leading: Card(
                            elevation: 3,
                            shadowColor: Colors.black12,
                            color: Colors.transparent,
                            child: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border:
                                    Border.all(width: 2, color: Colors.white),
                              ),
                              child: Icon(
                                Icons.fact_check_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        CustomTile(
                          title: "Direct Check",
                          subtitle: "Send from another account",
                          leading: Card(
                            elevation: 3,
                            shadowColor: Colors.black12,
                            color: Colors.transparent,
                            child: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border:
                                    Border.all(width: 2, color: Colors.white),
                              ),
                              child: Icon(
                                Icons.border_color_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        CustomTile(
                          title: "Auto reload",
                          subtitle: "Send from another account",
                          leading: Card(
                            elevation: 3,
                            shadowColor: Colors.black12,
                            color: Colors.transparent,
                            child: Container(
                              height: 40.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border:
                                    Border.all(width: 2, color: Colors.white),
                              ),
                              child: Icon(
                                Icons.autorenew_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomContainer(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Withdrow from your balance",
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                          ),
                        ),
                        CustomTile(
                          title: "Add instantly",
                          subtitle: "Transfer from linked bank",
                          leading: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/bank.png")),
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(width: 2, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
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
