import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kittbank/app_routes.dart';

class CheckYourEmail extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final IconData? icon;
  final String? btnText;
  final VoidCallback onTap;
  const CheckYourEmail({super.key, this.title, this.subtitle,this.icon,this.btnText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      enableDrag: false,
      onClosing: () {},
      builder: (context) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              color: Colors.black.withOpacity(0.8),
              height: 250,
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        title!,
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        subtitle!,
                        textAlign: TextAlign.center,

                        style: GoogleFonts.openSans(
                          color: Colors.white54,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: onTap,
                        style: ElevatedButton.styleFrom(
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 45),
                            backgroundColor: Colors.white38,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: Text(
                          btnText!,
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: -25,
              left: 0,
              right: 0,
              child: CircleAvatar(
                foregroundColor: Colors.brown,
                radius: 30,
                backgroundColor: Color(0xffFAD332),
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
