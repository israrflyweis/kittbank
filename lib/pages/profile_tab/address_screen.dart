import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/components/primary_button.dart';

import '../../utils/utils.dart';

class AddressScreen extends StatefulWidget {
  AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final TextEditingController countryController = TextEditingController();

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
                          "Address",
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
                            _buildLabel("Mobile Number"),
                            _buildTextField("Enter Lorem Ipsum"),

                            _buildLabel("Country of Birth"),
                            _buildTextField("Choose your Country",
                                controller: countryController,
                                icon: Icons.keyboard_arrow_down, onTap: () {
                              showCountryPicker(
                                context: context,
                                showPhoneCode:
                                    true, // optional. Shows phone code before the country name.
                                onSelect: (Country country) {
                                  setState(() {
                                    countryController.text = country.name;
                                  });
                                  print(
                                      'Select country: ${country.displayName}');
                                },
                              );
                            }),

                            SizedBox(height: 20.h),
                            _buildLabel("Address", fontSize: 16.sp),

                            _buildLabel("Flat / Unit Number", fontSize: 12.sp),
                            _buildTextField("Enter Lorem Ipsum"),

                            _buildLabel("Building No. / Name", fontSize: 12.sp),
                            _buildTextField("Enter Lorem Ipsum"),

                            _buildLabel("City / Town", fontSize: 12.sp),
                            _buildTextField("Enter Lorem Ipsum"),

                            _buildLabel("Postcode", fontSize: 12.sp),
                            _buildTextField("Enter Lorem Ipsum"),

                            _buildLabel("Country", fontSize: 12.sp),
                            _buildTextField("Select Country",
                                icon: Icons.keyboard_arrow_down,
                              controller: countryController,
                                onTap: () {
                                  showCountryPicker(
                                    context: context,
                                    showPhoneCode:
                                    true, // optional. Shows phone code before the country name.
                                    onSelect: (Country country) {
                                      setState(() {
                                        countryController.text = country.name;
                                      });
                                      print(
                                          'Select country: ${country.displayName}');
                                    },
                                  );
                                }

                            ),

                            SizedBox(height: 20.h), // Padding at bottom
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
