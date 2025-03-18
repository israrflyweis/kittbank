import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/bottom_sheet.dart';

import '../../utils/utils.dart';

class SavingScreen extends StatelessWidget {
  SavingScreen({super.key});

  final List months = [
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
                          "Savings",
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
                  itemCount: months.length,
                  itemBuilder: (context, index) {
                    //final monthList  =  months[index];
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15.h, horizontal: 5),
                      child: GestureDetector(
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

// class CustomBottomSheet extends StatelessWidget {
//   CustomBottomSheet({
//     super.key,
//   });
//   final SocialController controller = Get.put(SocialController());
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomSheet(
//         enableDrag: false,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             top: Radius.circular(15.r),
//           ),
//         ),
//         onClosing: () {},
//         builder: (context) {
//           return Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.vertical(
//                 top: Radius.circular(15.r),
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       InkWell(
//                         onTap: () => Get.back(),
//                         child: Card(
//                           shadowColor: Colors.black,
//                           elevation: 3,
//                           color: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           child: CircleAvatar(
//                             backgroundColor: Colors.white,
//                             radius: 25,
//                             child: Icon(
//                               Icons.arrow_back,
//                               color: Colors.black,
//                               size: 25,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Text(
//                         "January 2024",
//                         style: GoogleFonts.roboto(
//                           color: Colors.black,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 16.sp,
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Get.bottomSheet(
//                             enableDrag: false,
//                             BottomSheet(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                                 onClosing: () {},
//                                 builder: (context) {
//                                   return Container(
//                                     decoration: BoxDecoration(),
//                                     child: Column(
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Expanded(
//                                               child: Center(
//                                                 child: Text(
//                                                   "SHARE TO",
//                                                   style: GoogleFonts.roboto(
//                                                       color: Colors.black,
//                                                       fontSize: 16.sp),
//                                                 ),
//                                               ),
//                                             ),
//                                             Icon(
//                                               Icons.close,
//                                               color: Colors.black,
//                                               size: 30,
//                                             )
//                                           ],
//                                         ),
//                                         Obx(
//                                           () => GridView.builder(
//                                               gridDelegate:
//                                                   SliverGridDelegateWithFixedCrossAxisCount(
//                                                       crossAxisCount: 4,
//                                                       crossAxisSpacing: 10,
//                                                       mainAxisSpacing: 10),
//                                               itemCount:
//                                                   controller.shareOption.length,
//                                               shrinkWrap: true,
//                                               physics:
//                                                   NeverScrollableScrollPhysics(),
//                                               itemBuilder: (context, index) {
//                                                 final social = controller
//                                                     .shareOption[index];
//                                                 return Column(
//                                                   mainAxisSize:
//                                                       MainAxisSize.min,
//                                                   children: [
//                                                     Image.asset(social.img,
//                                                         height: 50, width: 50),
//                                                     SizedBox(height: 5),
//                                                     Text(
//                                                       social.name,
//                                                       style: GoogleFonts.roboto(
//                                                         color: Colors.black,
//                                                         fontSize: 12,
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 );
//                                               }),
//                                         ),
//                                         SizedBox(height: 20),
//                                         Text(
//                                           "RECENT CONTACTS",
//                                           style: GoogleFonts.roboto(
//                                             color: Colors.black,
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                         Obx(() => GridView.builder(
//                                               shrinkWrap: true,
//                                               physics:
//                                                   NeverScrollableScrollPhysics(),
//                                               gridDelegate:
//                                                   SliverGridDelegateWithFixedCrossAxisCount(
//                                                 crossAxisCount: 4,
//                                                 crossAxisSpacing: 10,
//                                                 mainAxisSpacing: 10,
//                                               ),
//                                               itemCount: controller
//                                                   .recentContact.length,
//                                               itemBuilder: (context, index) {
//                                                 final contact = controller
//                                                     .recentContact[index];
//                                                 return Column(
//                                                   mainAxisSize:
//                                                       MainAxisSize.min,
//                                                   children: [
//                                                     ClipOval(
//                                                       child: Image.asset(
//                                                         contact.img,
//                                                         height: 50,
//                                                         width: 50,
//                                                         fit: BoxFit.cover,
//                                                       ),
//                                                     ),
//                                                     SizedBox(height: 5),
//                                                     Text(
//                                                       contact.name,
//                                                       style: GoogleFonts.roboto(
//                                                         color: Colors.black,
//                                                         fontSize: 12,
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 );
//                                               },
//                                             )),
//                                         SizedBox(height: 20),
//                                       ],
//                                     ),
//                                   );
//                                 }),
//                             // isScrollControlled: true,
//                           );
//                         },
//                         child: Card(
//                           shadowColor: Colors.black,
//                           elevation: 3,
//                           color: Colors.white,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           child: CircleAvatar(
//                             backgroundColor: Colors.white,
//                             radius: 25,
//                             child: Icon(
//                               Icons.file_upload_outlined,
//                               color: Colors.black,
//                               size: 25,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Column(
//                           children: [
//                             Text(
//                               textAlign: TextAlign.justify,
//                               "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
//                               style: GoogleFonts.roboto(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 12.sp,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Spacer(),
//                       Expanded(
//                         child: Column(
//                           children: [
//                             Text(
//                               textAlign: TextAlign.justify,
//                               "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
//                               style: GoogleFonts.roboto(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 12.sp,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   Spacer(),
//                   Text(
//                     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
//                     style: GoogleFonts.roboto(
//                       color: Colors.black,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 12.sp,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//   }
// }
