import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/primary_button.dart';
import '../utils/utils.dart';

class LanguageSelectionScreen extends StatefulWidget {
  @override
  _LanguageSelectionScreenState createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String selectedLanguage = "English"; // Default selected language

  final List<Map<String, String>> languages = [
    {"name": "English", "native": "Default"},
    {"name": "हिंदी", "native": "Hindi"},
    {"name": "বাংলা", "native": "Bengali"},
    {"name": "ગુજરાતી", "native": "Gujarati"},
    {"name": "ಕನ್ನಡ", "native": "Kannada"},
    {"name": "മലയാളം", "native": "Malayalam"},
    {"name": "मराठी", "native": "Marathi"},
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
              /// **Header with Back Button**
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
                          "Language",
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
                height: 20.h,
              ),
              Text(
                "Preferred Language",
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(
                height: 20.h,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ListView.separated(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              itemCount: languages.length,
                              separatorBuilder: (context, index) =>
                                  Divider(color: Colors.white, thickness: 0.5),
                              itemBuilder: (context, index) {
                                final language = languages[index];
                                return ListTile(
                                  title: Text(
                                    language["name"]!,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  subtitle: Text(
                                    language["native"]!,
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 14),
                                  ),
                                  trailing:
                                      selectedLanguage == language["name"]!
                                          ? Icon(Icons.check_circle,
                                              color: Colors.white)
                                          : Icon(
                                              Icons.circle_outlined,
                                              color: Colors.white,
                                            ), // Hides the icon if not selected
                                  onTap: () {
                                    setState(() {
                                      selectedLanguage = language["name"]!;
                                    });
                                  },
                                );
                              },
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              PrimaryButton(
                  text: "Save",
                  onTap: () {
                    Get.back();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
