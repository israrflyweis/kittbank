import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/components/custom_container.dart';
import 'package:kittbank/components/primary_button.dart';

import '../../app_routes.dart';
import '../../utils/utils.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  bool selectIndex = false;
  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
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
                          "Favorites",
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
                SizedBox(
                  height: 30,
                ),
                CustomContainer(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: isLandscape ? 50 : 23,
                      backgroundImage: AssetImage("assets/images/fav.jpeg"),
                    ),
                    title: Text(
                      "Aheyenne Dias",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                      ),
                    ),
                    subtitle: Text(
                      "Lorem Ipsum is simply dummy text",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 11.sp,
                      ),
                    ),
                    trailing: InkWell(
                      onTap: () {
                        setState(() {
                          selectIndex = !selectIndex;
                        });
                      },
                      child: Icon(
                        Icons.star,
                        color: selectIndex ? Color(0xff04D900) : Colors.white,
                      ),
                    ),
                  ),
                ),
               SizedBox(
                 height: MediaQuery.of(context).size.height*0.6,
               ),
                Center(
                  child: SizedBox(
                    width: Get.width * 0.85,
                    height: Get.height * 0.07,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.contacts);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Color(0xffFAD332)),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                        ),
                      ),
                      child: Text(
                        "Add more to favorites",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp),
                      ),
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
