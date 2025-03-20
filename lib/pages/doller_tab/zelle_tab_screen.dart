import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/components/custom_container.dart';
import 'package:kittbank/pages/doller_tab/pay_request_screen.dart';

import '../../app_routes.dart';
import '../../utils/utils.dart';

class ZelleTabScreen extends StatefulWidget {
  const ZelleTabScreen({super.key});

  @override
  State<ZelleTabScreen> createState() => _ZelleTabScreenState();
}

class _ZelleTabScreenState extends State<ZelleTabScreen> {
  List<bool> selectedIndexes = [];

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
  void initState() {
    super.initState();
    selectedIndexes = List.generate(searchList.length, (index) => false);

    // Future.delayed(Duration(seconds: 2),() {
    //   Get.offNamed(AppRoutes.payRequestScreen);
    // });
  }

  void toggleSelection(int index, bool? value) {
    setState(() {
      selectedIndexes[index] = value ?? false;
    });
  }

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
          padding: EdgeInsets.only(top: 50, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                   Column(
                     children: [
                       Text(
                         "\$883.70",
                         style: GoogleFonts.openSans(
                           color: Colors.white,
                           fontWeight: FontWeight.w700,
                           fontSize: 18.sp,
                         ),
                       ),
                      Row(
                        children: [
                          Text("Debit Card 123",
                        style: GoogleFonts.openSans(
                        color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp,
                      ),),
                          Icon(Icons.keyboard_arrow_down_rounded,color: Colors.white,),
                        ],
                      ),
                     ],
                   ),
                    SizedBox(
                      height: 40,
                      width: 110,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.2),
                        ),
                        onPressed: () {
                          Get.dialog(
                            Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 50),
                                width: 300,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      "assets/images/succses.png",
                                      height: 120,
                                      width: 120,
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text.rich(
                                      TextSpan(children: [
                                        TextSpan(
                                          text: "successfully ",
                                          style: GoogleFonts.openSans(
                                            color: Color(0xff78B348),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Payment ",
                                          style: GoogleFonts.openSans(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ]),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          );
                          Future.delayed(Duration(seconds: 3), () {
                            Get.offNamed(AppRoutes.tabScreen,);
                          },);
                        },
                        child: Text(
                          "ZELLE",
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      prefixText: "To: ",
                      prefixStyle: TextStyle(color: Colors.white),
                      hintStyle: GoogleFonts.roboto(
                          color: Colors.white70,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                      hintText: "Cheyenne Dias",
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      )),
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
                              : searchList[index - 1]["title"][0].toUpperCase();

                          return Column(
                            children: [
                              if (currentLetter != previousLetter)
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.h),
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
                                trailing: Checkbox(
                                  side:
                                  BorderSide(color: Colors.white, width: 2),
                                  activeColor: Colors
                                      .white, // Checkbox color when checked
                                  checkColor: Colors.black, // Tick mark color
                                  fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                          (states) {
                                        if (states
                                            .contains(MaterialState.selected)) {
                                          return Colors.white; // Active color
                                        }
                                        return Colors
                                            .transparent; // Inactive color (lighter white)
                                      }),
                                  value: selectedIndexes[index],
                                  onChanged: (value) =>
                                      toggleSelection(index, value),
                                ),
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
