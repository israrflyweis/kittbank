import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/app_routes.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../components/calculator.dart';
import '../../model/share_model.dart';
import '../../utils/utils.dart';

class PayRequestScreen extends StatefulWidget {
  const PayRequestScreen({super.key});

  @override
  State<PayRequestScreen> createState() => _PayRequestScreenState();
}

class _PayRequestScreenState extends State<PayRequestScreen> {
  final SocialController bController = Get.put(SocialController());
  List<bool> isSelected = [true, false];
  String _enteredValue = "0";
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String qrText = "Scan a QR code";

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

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
  void _onButtonPressed(int index) {
    setState(() {
      isSelected = [index == 0, index == 1]; // Update selection
    });

    Get.toNamed(
      index == 0 ? AppRoutes.qrCodeGenrator : AppRoutes.qrCodeGenrator,
      arguments: index, // Pass current selection
    )?.then((result) {
      // Restore correct selection after back
      int selectedIndex = result ?? index;
      setState(() {
        isSelected = [selectedIndex == 0, selectedIndex == 1];
      });
    });
  }

  @override
  void initState() {
    super.initState();
    int selectedIndex = Get.arguments ?? 0; // Default: SCAN
    isSelected = [selectedIndex == 0, selectedIndex == 1];
  }


  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        qrText = scanData.code!;
      });

      // Close scanner after successful scan
      controller.pauseCamera();

      // Navigate back or handle scanned data
      Navigator.pop(context, qrText);
    });
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
                  InkWell(
                    onTap: () {
                      Get.bottomSheet(
                        isScrollControlled: true,
                        // enableDrag: true,
                        //enableDrag: false,
                        BottomSheet(
                            enableDrag: false,
                            showDragHandle: false,
                            backgroundColor: Colors.white70,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero),
                            onClosing: () {},
                            builder: (context) {
                              return Container(
                                color: Colors.white70,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 50, left: 15, right: 15),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Get.back();
                                            },
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30),),
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
                                            onTap: (){
                                             _showShareBottomSheet();
                                            },
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
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

                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 70),
                                          child: QRView(
                                            key: qrKey,
                                            onQRViewCreated: _onQRViewCreated,
                                          ),
                                        ),
                                      ),
                                      // Expanded(
                                      //   flex: 1,
                                      //   child: Center(
                                      //     child: Text(
                                      //       "Result: $qrText",
                                      //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      //     ),
                                      //   ),
                                      // ),
                                      // QrImageView(
                                      //   backgroundColor: Colors.transparent,
                                      //   padding: EdgeInsets.all(20),
                                      //   data:
                                      //       'This QR code has an embedded image as well',
                                      //   version: QrVersions.auto,
                                      //   size: 280,
                                      //   gapless: false,
                                      //   embeddedImage: AssetImage(
                                      //       'assets/images/doller_img.png'),
                                      //   embeddedImageStyle:
                                      //       QrEmbeddedImageStyle(
                                      //     size: Size(80, 80),
                                      //   ),
                                      // ),

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
                                            child: Text("SCAN"),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 16),
                                            child: Text("MY CODE"),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              );

                            }),
                      );
                    },
                    child: Icon(Icons.qr_code_2, color: Colors.white, size: 30),
                  ),
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
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
  // Widget _customIconButton(IconData icon, VoidCallback onTap) {
  //   return InkWell(
  //     onTap: onTap,
  //     child: Card(
  //       shadowColor: Colors.black,
  //       elevation: 3,
  //       color: Colors.white,
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  //       child: CircleAvatar(
  //         backgroundColor: Colors.white,
  //         radius: 25,
  //         child: Icon(icon, color: Colors.black, size: 25),
  //       ),
  //     ),
  //   );
  // }

// Short Info Text
//   Widget _infoText() {
//     return Text(
//       textAlign: TextAlign.justify,
//       "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
//       style: GoogleFonts.roboto(
//         color: Colors.black,
//         fontWeight: FontWeight.w600,
//         fontSize: 12,
//       ),
//     );
//   }

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

