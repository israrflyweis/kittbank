import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/components/custom_container.dart';

import '../../utils/utils.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final RxBool showMore = false.obs;
  final List<String> images = [
    "assets/images/user1.png",
    "assets/images/user2.png",
    "assets/images/user3.png",
    "assets/images/user4.png",
    "assets/images/facebook.png",
    "assets/images/credit.png",
    "assets/images/debit.png",
    "assets/images/user2.png",
    "assets/images/user3.png",
    "assets/images/user4.png",
    "assets/images/facebook.png",
    "assets/images/credit.png",
    "assets/images/debit.png"
  ]; // Add more images as needed

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Discover",
                      style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 18.sp),
                    ),
                    Stack(children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/layer.png"),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
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
                    ]),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Card(
                  elevation: 10, // Soft shadow effect
                  shadowColor: Colors.black.withOpacity(0.4),
                  color: Colors
                      .transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10),
                    side: BorderSide(
                        color: Colors.white.withOpacity(0.5),
                        width: 1.2),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.9,
                        //padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          style: GoogleFonts.openSans(
                              color: Colors.white, fontSize: 16),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search,
                                color: Colors.white, size: 22),
                            hintText: "Search...",
                            hintStyle: GoogleFonts.openSans(
                                color: Colors.white70, fontSize: 16),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Obx(() {
                      int visibleCount = showMore.value
                          ? images.length
                          : 7;

                      return Wrap(
                        spacing: 20,
                        runSpacing: 10,
                        alignment: WrapAlignment.start,
                        children: [
                          ...images
                              .sublist(0, visibleCount)
                              .map((image) => CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(image),
                                  )),


                          GestureDetector(
                            onTap: () => showMore.toggle(),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white.withOpacity(0.2),
                              child: Icon(
                                showMore.value
                                    ? Icons.expand_less
                                    : Icons.expand_more,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("assets/images/bck_image.jpeg"),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.low),),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Image.asset("assets/images/card_group.png")),
                        SizedBox(
                          height: 10,
                        ),
                        Text("A New Classic",style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),),
                        Text("The 1 of 1 Tortoise Card is \nhere.",style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w800,
                        ),),

                        Container(
                          margin: EdgeInsets.only(right: 190,top: 10,),
                          alignment: Alignment.center,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white
                          ),
                          child: Text("Customize yours",style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),),
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
