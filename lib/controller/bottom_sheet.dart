import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/share_model.dart';

class CustomBottomSheet extends StatelessWidget {
  CustomBottomSheet({super.key});
  final SocialController controller = Get.put(SocialController());

  @override
  Widget build(BuildContext context) {
    return BottomSheet(

      enableDrag: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      onClosing: () {},
      builder: (context) {
        return Container(
          height: 600,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header with Back Button, Title & Upload Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _customIconButton(Icons.arrow_back, () => Get.back()),
                  Text(
                    "January 2024",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  _customIconButton(Icons.file_upload_outlined, _showShareBottomSheet),
                ],
              ),
              const SizedBox(height: 20),

              // Two Column Text Section
              Row(
                children: [
                  Expanded(child: _infoText()),
                  const Spacer(),
                  Expanded(child: _infoText()),
                ],
              ),

              //const Spacer(),
              SizedBox(
                height: 50.h,
              ),

              // Bottom Long Text
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },

    );
  }

  // Custom Icon Button for Back & Upload
  Widget _customIconButton(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shadowColor: Colors.black,
        elevation: 3,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: Icon(icon, color: Colors.black, size: 25),
        ),
      ),
    );
  }

  // Short Info Text
  Widget _infoText() {
    return Text(
      textAlign: TextAlign.justify,
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      style: GoogleFonts.roboto(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 12,
      ),
    );
  }

  // Show Share Bottom Sheet
  void _showShareBottomSheet() {
    Get.bottomSheet(
      enableDrag: false,
      BottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onClosing: () {},
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Share Header
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "SHARE TO",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Icon(Icons.close, color: Colors.black, size: 30),
                    )
                  ],
                ),
                const SizedBox(height: 15),

                // Social Media Share Options
                Obx(() => GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: controller.shareOption.length,
                  itemBuilder: (context, index) {
                    final social = controller.shareOption[index];
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(social.img, height: 50, width: 50),
                        const SizedBox(height: 5),
                        Text(
                          social.name,
                          style: GoogleFonts.roboto(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    );
                  },
                )),
                const SizedBox(height: 20),

                // Recent Contacts
                Text(
                  "RECENT CONTACTS",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),

                Obx(() => GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: controller.recentContact.length,
                  itemBuilder: (context, index) {
                    final contact = controller.recentContact[index];
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipOval(
                          child: Image.asset(contact.img, height: 50, width: 50, fit: BoxFit.cover),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          contact.name,
                          style: GoogleFonts.roboto(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    );
                  },
                )),
                const SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}