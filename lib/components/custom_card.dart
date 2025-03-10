import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final String? title;
  final double? height;
  final double? width;
  final String? img;
  final double? fontSize;
  final String? subtitle;
  final String? trailing;

  const CustomCard(
      {super.key,
      this.title,
      this.height,
      this.width,
      this.subtitle,
      this.img,
      this.fontSize,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img!)),
          borderRadius: BorderRadius.circular(16),
          color: Colors.white54.withOpacity(0.2),
          border: Border.all(color: Colors.white12),
        ),
      ),
      title: Text(
        title!,
        style: GoogleFonts.openSans(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: Text(
        subtitle!,
        style: GoogleFonts.openSans(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
        ),
      ),
      trailing: Text(
        trailing!,
        style: GoogleFonts.openSans(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
