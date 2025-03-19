import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/app_routes.dart';

import '../../components/primary_button.dart';
import '../../utils/utils.dart';

class ZelleScreen extends StatefulWidget {
  const ZelleScreen({super.key});

  @override
  State<ZelleScreen> createState() => _ZelleScreenState();
}

class _ZelleScreenState extends State<ZelleScreen> {
  String? selectedMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: gradient),
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 10, right: 10),
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
                        "Choose Currency",
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
                height: 29,
              ),
              Expanded(
                child: Card(
                  elevation: 4,
                  shadowColor: Colors.black,
                  color: Colors.white.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Colors.black,
                              child: ListTile(
                                // contentPadding: EdgeInsets.zero,
                                leading: Image.asset(
                                  "assets/images/gift.png",
                                  fit: BoxFit.cover,
                                  height: 40,
                                  width: 40,
                                ),
                                title: Text(
                                  "Pay 0 fees & get a special exchange rate your first transfer.",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text(
                              "You Send",
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              color: Colors.white,
                              child: ListTile(
                                // contentPadding: EdgeInsets.zero,
                                leading: Image.asset(
                                  "assets/images/us_flag.png",
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                  "883.70",
                                  style: GoogleFonts.openSans(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                trailing: Text(
                                  "USD",
                                  style: GoogleFonts.openSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text(
                              "They Receive",
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              color: Colors.white,
                              child: ListTile(
                                // contentPadding: EdgeInsets.zero,
                                leading: Image.asset(
                                  "assets/images/ind_flag.png",
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                  "76771.88",
                                  style: GoogleFonts.openSans(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                trailing: Text(
                                  "INR",
                                  style: GoogleFonts.openSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text(
                              "Choose Delivery Method",
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            DropdownButtonFormField<String>(
                              value: selectedMethod,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedMethod = newValue;
                                });
                              },
                              items: [
                                DropdownMenuItem(
                                    value: "Standard Delivery",
                                    child: Text("Standard Delivery")),
                                DropdownMenuItem(
                                    value: "Express Delivery",
                                    child: Text("Express Delivery")),
                                DropdownMenuItem(
                                    value: "Same Day Delivery",
                                    child: Text("Same Day Delivery")),
                              ],
                              decoration: InputDecoration(
                                hintText: "Choose A Delivery Method",
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 14),
                              ),
                              icon: Icon(Icons.keyboard_arrow_down),
                              dropdownColor: Colors.white,
                              isExpanded: true,
                              menuMaxHeight: 250,
                              alignment: Alignment.centerRight,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Divider(
                              color: Colors.white,
                              thickness: 1.5,
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            ListTile(
                              minTileHeight: 0,
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                "Exchange Rate",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              trailing: Text(
                                "1 USD = 86.88 INR",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            ListTile(
                              minTileHeight: 0,
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                "Fee",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              trailing: Text(
                                "Fee-Fee",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Image.asset(
                                    "assets/images/coupon.png",
                                    fit: BoxFit.cover,
                                    height: 40,
                                    width: 40,
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "Apply a Coupon Code",
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              PrimaryButton(
                  text: "Play",
                  onTap: () {
                    Get.toNamed(AppRoutes.zelleTabScreen);
                  }),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text, {double fontSize = 14}) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Text(
        text,
        style: GoogleFonts.openSans(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: fontSize,
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText,
      {IconData? icon,
      void Function()? onTap,
      TextEditingController? controller}) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h, bottom: 10.h),
      child: TextFormField(
        controller: controller,
        readOnly: onTap != null,
        decoration: InputDecoration(
          suffixIcon: icon != null
              ? InkWell(
                  onTap: onTap,
                  child: Icon(icon),
                )
              : null,
          hintText: hintText,
          hintStyle: GoogleFonts.openSans(
            color: Colors.black38,
            fontSize: 12.sp,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          // Slightly increased padding
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
