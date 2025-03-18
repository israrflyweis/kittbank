import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/components/primary_button.dart';

import '../../utils/utils.dart';

class TexReturnsScreen extends StatelessWidget {
  const TexReturnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: gradient),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 10),
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
              SizedBox(
                height: 30.h,
              ),
              Card(
                elevation: 3,
                color: Colors.transparent,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Your Tex Returns",
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s",
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      PrimaryButton(text: "Log In", onTap: () {},),

                      SizedBox(
                        height: 15.h,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
