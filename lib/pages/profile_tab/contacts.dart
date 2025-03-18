import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/components/custom_container.dart';

import '../../utils/utils.dart';

class Contacts extends StatelessWidget {
  Contacts({super.key});
  final List<Map<String, dynamic>> searchList = [
    {
      "image": "assets/images/fav.jpeg",
      "title": "Aheyenne Dias",
      "subtitle": "Lorem Ipsum is simply dummy text"
    },
    {
      "image": "assets/images/search_img.jpeg",
      "title": "Aincoln Geidt",
      "subtitle": "Lorem Ipsum is simply dummy text"
    },
    {
      "image": "assets/images/search_img1.jpeg",
      "title": "Aincoln Geidt",
      "subtitle": "Lorem Ipsum is simply dummy text"
    },
    {
      "image": "assets/images/search_img2.jpeg",
      "title": "Baylon Korsgaard",
      "subtitle": "Lorem Ipsum is simply dummy text"
    },
    {
      "image": "assets/images/search_img3.jpeg",
      "title": "Cspen Siphron",
      "subtitle": "Lorem Ipsum is simply dummy text"
    },
    {
      "image": "assets/images/search_img4.jpeg",
      "title": "Cspen Siphron",
      "subtitle": "Lorem Ipsum is simply dummy text"
    },
    {
      "image": "assets/images/search_img5.jpeg",
      "title": "Cspen Siphron",
      "subtitle": "Lorem Ipsum is simply dummy text",
    },
    {
      "image": "assets/images/search_img6.jpeg",
      "title": "Cspen Siphron",
      "subtitle": "Lorem Ipsum is simply dummy text"
    }
  ];

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    searchList.sort((a, b) => a["title"].compareTo(b["title"]));

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: gradient),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
          child: SingleChildScrollView(
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
                SizedBox(
                  height: 30.h,
                ),
                CustomContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: AlwaysScrollableScrollPhysics(),
                          itemCount: searchList.length,
                          itemBuilder: (context, index) {
                            final user = searchList[index];
                            final String currentLetter =
                                user["title"][0].toUpperCase();
                            final String? previousLetter = index == 0
                                ? null
                                : searchList[index - 1]["title"][0]
                                    .toUpperCase();

                            return Column(
                              children: [
                                if (currentLetter != previousLetter)
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.h),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        currentLetter,
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: CircleAvatar(
                                    radius: isLandscape ? 50 : 23,
                                    backgroundImage: AssetImage(user["image"]),
                                  ),
                                  title: Text(
                                    user["title"],
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.sp),
                                  ),
                                  subtitle: Text(
                                    user["subtitle"],
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp),
                                  ),
                                ),
                                Divider(
                                  color: Colors.white,
                                ),

                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
