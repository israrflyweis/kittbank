import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTile extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Widget? leading;

  const CustomTile({
    super.key, this.title,  this.subtitle,  this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
       title!,
        style: GoogleFonts.openSans(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 13.sp,
        ),
      ),
      subtitle: Text(
        subtitle!,
        style: GoogleFonts.openSans(
          color: Colors.white54,
          fontWeight: FontWeight.w600,
          fontSize: 12.sp,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
        size: 14,
      ),
      leading: leading,
      // leading: Container(
      //   height: 20,
      //   width: 20,
      //   decoration: BoxDecoration(
      //     shape: BoxShape.circle,
      //     color: Colors.white,
      //     border: Border.all(
      //       color: Colors.white,
      //       width: 3
      //     ),
      //     image: DecorationImage(image: AssetImage("assets/images/down.png"))
      //   ),
      // ),
    );
  }
}