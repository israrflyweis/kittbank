import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/app_routes.dart';

import '../../components/calculator.dart';
import '../../utils/utils.dart';

class PayRequestScreen extends StatefulWidget {
  const PayRequestScreen({super.key});

  @override
  State<PayRequestScreen> createState() => _PayRequestScreenState();
}

class _PayRequestScreenState extends State<PayRequestScreen> {
  String _enteredValue = "0";

  void updateValue(String value) {
    setState(() {
      _enteredValue = value;
    });
  }

  double getFontSize() {
    int length = _enteredValue.length;
    if (length <= 5) return 80.sp;
    if (length <= 7) return 60.sp;
    if (length <= 9) return 50.sp;
    return 40.sp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: gradient),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.qr_code_2, color: Colors.white, size: 30),
                  Stack(
                    children: [
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
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Enter Amount in \$",
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "\$$_enteredValue",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: getFontSize(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //SizedBox(height: 10.h),
            CustomNumberPad(
              onValueChanged: updateValue,
              currentValue: _enteredValue,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.2),
                    ),
                    onPressed: () {
                      Get.toNamed(AppRoutes.requestPayScreen);
                    },
                    child: Text(
                      "Request",
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.2),
                    ),
                    onPressed: () {
                      Get.toNamed(AppRoutes.zelleScreen);
                    },
                    child: Text(
                      "Zelle",
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
