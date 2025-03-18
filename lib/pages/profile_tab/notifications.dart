import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/components/custom_container.dart';

import '../../controller/notification_controller.dart';
import '../../utils/utils.dart';

class NotificationsScreen extends StatelessWidget {
   NotificationsScreen({super.key});

  final NotificationController controller = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    //print("build");
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: gradient),
        child: SingleChildScrollView(
          // Fix: Enable scrolling
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
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
                          "Notifications",
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),SizedBox(
                  height: 30.h,
                ),
                CustomContainer(
                  child: Column(
                    children: [
                      Obx(()=>ListTile(
                        horizontalTitleGap: 0,
                        contentPadding: EdgeInsets.zero,
                        leading: Checkbox(
                          checkColor: Colors.black,
                          activeColor: Colors.white,
                          side: BorderSide(color: Colors.white, width: 2),
                          value:  controller.pushNotification.value,
                          onChanged: controller.togglePush,
                        ),
                        title: Text("Push Notification",
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15.sp,
                          ),),
                      ),),
                      Obx(() =>ListTile(
                        horizontalTitleGap: 0,
                        contentPadding: EdgeInsets.zero,
                        leading: Checkbox(
                          checkColor: Colors.black,
                          activeColor: Colors.white,
                          side: BorderSide(color: Colors.white, width: 2),
                          value: controller.phoneNumber.value,
                          onChanged: controller.togglePhoneNumber,
                        ),
                        title: Text("+1 98765 43210",
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15.sp,
                          ),),
                      ),),
                     Obx(() => ListTile(
                       horizontalTitleGap: 0,
                       contentPadding: EdgeInsets.zero,
                       leading: Checkbox(
                         checkColor: Colors.black,
                         activeColor: Colors.white,
                         side: BorderSide(color: Colors.white, width: 2),
                         value: controller.email.value,

                         onChanged:controller.toggleEmail,
                       ),
                       title: Text("example@gmail.com",
                         style: GoogleFonts.openSans(
                           color: Colors.white,
                           fontWeight: FontWeight.w700,
                           fontSize: 15.sp,
                         ),),
                     ),),
                     Obx(() => ListTile(
                       horizontalTitleGap: 0,
                       contentPadding: EdgeInsets.zero,
                       leading: Checkbox(
                         checkColor: Colors.black,
                         activeColor: Colors.white,
                         side: BorderSide(color: Colors.white, width: 2),
                         value: controller.cashTerm.value,
                         onChanged: controller.toggleCashTerm
                       ),
                       title: Text("Cash Term Notification",
                         style: GoogleFonts.openSans(
                           color: Colors.white,
                           fontWeight: FontWeight.w700,
                           fontSize: 15.sp,
                         ),),
                     ),)
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
