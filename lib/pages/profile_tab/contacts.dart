import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/components/custom_container.dart';

import '../../utils/utils.dart';

class Contacts extends StatelessWidget {
   Contacts({super.key});
final List<Map<String, dynamic>>searchList = [
  {"image" : "assets/images/fav.jpeg", "title" : "Aheyenne Dias", "subtitle" : "Lorem Ipsum is simply dummy text"},
  {"image" : "assets/images/search_img.jpeg", "title" : "Aincoln Geidt", "subtitle" : "Lorem Ipsum is simply dummy text"},
  {"image" : "assets/images/search_img1.jpeg", "title" : "Aincoln Geidt", "subtitle" : "Lorem Ipsum is simply dummy text"},
];
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
                          "Contacts",
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
                  height: 20.h,
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Search by Name",
                    hintStyle: GoogleFonts.roboto(
                        color: Colors.white70,
                        fontWeight: FontWeight.w700,
                        fontSize: 13),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
                CustomContainer(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "A",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
