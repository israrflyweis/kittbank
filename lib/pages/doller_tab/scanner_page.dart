import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../app_routes.dart';
import '../../model/share_model.dart';

class QrCodeGenrator extends StatefulWidget {
  const QrCodeGenrator({super.key});

  @override
  State<QrCodeGenrator> createState() => _QrCodeGenratorState();
}

class _QrCodeGenratorState extends State<QrCodeGenrator> {
  List<bool> isSelected = [false, true]; // Start with "MY CODE" selected
  final SocialController bController = Get.put(SocialController());

  void _onButtonPressed(int index) {
    setState(() {
      isSelected = [index == 0, index == 1]; // Update selection
    });

    if (index == 0) {
      Get.back(); // Go to Scan Page
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white70,
        padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
        child: Column(
          children: [
            // Close & Upload Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.offNamed(AppRoutes.tabScreen,);



                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 4,
                    color: Colors.transparent,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _showShareBottomSheet();
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    elevation: 4,
                    color: Colors.transparent,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.file_upload_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // QR Code
            QrImageView(
              backgroundColor: Colors.transparent,
              padding: EdgeInsets.all(20),
              data: 'This QR code has an embedded image as well',
              version: QrVersions.auto,
              size: 280,
              gapless: false,
              embeddedImage: AssetImage('assets/images/doller_img.png'),
              embeddedImageStyle: QrEmbeddedImageStyle(size: Size(80, 80)),
            ),

            Text(
              "Talan Vaccaro",
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Scan to pay \$talanvaccaro",
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 80.h),
            ToggleButtons(
              borderRadius: BorderRadius.circular(30),
              selectedBorderColor: Colors.transparent,
              fillColor: Color(0xffFAD332),
              color: Colors.black,
              selectedColor: Colors.black,
              constraints: BoxConstraints(minWidth: 100, minHeight: 30),
              isSelected: isSelected,
              onPressed: _onButtonPressed,
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("SCAN")),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("MY CODE")),
              ],
            ),
          ],
        ),
      ),
    );
  }
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
                  itemCount: bController.shareOption.length,
                  itemBuilder: (context, index) {
                    final social = bController.shareOption[index];
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
                  itemCount: bController.recentContact.length,
                  itemBuilder: (context, index) {
                    final contact = bController.recentContact[index];
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
