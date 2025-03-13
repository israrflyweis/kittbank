import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/app_routes.dart';
import 'package:kittbank/components/custom_container.dart';
import 'package:kittbank/components/custom_tile.dart';

import '../../utils/utils.dart';

class MyAccount extends StatelessWidget {
  MyAccount({super.key});
  final List<Map<String, dynamic>> menuItems = [
    {"title": "Edit Profile", "icon": Icons.border_color},
    {"title": "Linked Banks", "icon": Icons.food_bank_outlined},
    {"title": "Security & Privacy", "icon": Icons.security_outlined},
    {"title": "Favorites", "icon": Icons.favorite_border},
    {"title": "Notifications", "icon": Icons.notifications},
    {"title": "Themes", "icon": Icons.color_lens_sharp},
    {"title": "Documents", "icon": Icons.insert_drive_file},
    {"title": "Support", "icon": Icons.support_agent_sharp},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: gradient),
        child: SingleChildScrollView(
          // Fix: Enable scrolling
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "My Account",
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                      ),
                    )),
                    Stack(
                      children: [
                        Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                          size: 40.h,
                        ),
                        Positioned(
                          right: 0,
                          top: 4,
                          child: Container(
                            alignment: Alignment.center,
                            height: 13.h,
                            width: 25.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              color: Colors.red,
                            ),
                            child: Text(
                              "9 +",
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                ListTile(
                  horizontalTitleGap: 0,
                  contentPadding: EdgeInsets.zero,
                  leading: Stack(
                    children: [
                      //showDialog(context: context, builder: (context){});
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                backgroundColor: Colors
                                    .white, // Make the background transparent
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.qr_code_2,
                                      color: Colors.black,
                                      size: 200.h,
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: CircleAvatar(
                          radius: 40.h,
                          backgroundImage:
                              AssetImage("assets/images/layer.png"),
                        ),
                      ),

                      Positioned(
                          top: 30,
                          bottom: 0,
                          right: 10,
                          child: Icon(
                            Icons.qr_code_2,
                            color: Colors.white,
                            size: 30,
                          )),
                    ],
                  ),
                  title: Text(
                    "Talan Vaccaro",
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                    ),
                  ),
                  subtitle: Text(
                    "talanvaccaro@kittbank.com",
                    style: GoogleFonts.openSans(
                      color: Colors.white54,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                DashedDivider(),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      color: Colors.white54,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Account & Settings",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap:
                              true, // Important to avoid unbounded height issues
                          physics:
                              NeverScrollableScrollPhysics(), // Disable scrolling inside a Column
                          itemCount: menuItems.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                menuItems[index]["title"],
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                ),
                              ),
                              leading: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                child: Icon(
                                  menuItems[index]["icon"],
                                  color: Colors.white,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 20.h,
                              ),
                              onTap: () {
                                // Handle tap action here
                                print("${menuItems[index]["title"]} tapped");
                                switch (menuItems[index]["title"]) {
                                  case "Edit Profile":
                                    Get.toNamed(AppRoutes.editProfile);
                                    break;
                                  case "Linked Banks":
                                    Get.toNamed(AppRoutes.linkedBanks);
                                    break;

                                  case "Security & Privacy":
                                    Get.toNamed(AppRoutes.securityPrivacy);
                                    break;
                                  case "Favorites":
                                    Get.toNamed(AppRoutes.favorites);
                                    break;

                                }
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomContainer(
                    child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  title: Text(
                    "Logout",
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                  leading: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: Icon(
                      Icons.login_outlined,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 20.h,
                  ),
                  onTap: () {
                    // Handle tap action here
                  },
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DashedDivider extends StatelessWidget {
  final double height;
  final Color color;

  DashedDivider({this.height = 1, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, height),
      painter: _DashedLinePainter(color: color),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  final Color color;
  _DashedLinePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = size.height;

    double dashWidth = 5, dashSpace = 5, startX = 0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
