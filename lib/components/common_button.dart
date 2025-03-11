import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonButton extends StatelessWidget {
  final String? title;

  const CommonButton({
    super.key,  this.title, required Color backgroundColor, required double borderRadius, required int elevation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        //color: Color(0xffFF934F)
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 8,
              offset: Offset(2, 5)),
        ],
        gradient: LinearGradient(
          tileMode: TileMode.clamp,
          stops: [00.00, 0.00, 18.10],
          colors: [
            Color(0xff24190E),
            Color(0xff815B00),
            Color(0xff56441E),
          ],
        ),
      ),
      child: Text(title!,style: GoogleFonts.openSans(
        color: Colors.white,
        fontSize: 14,fontWeight: FontWeight.w700,

      ),),
    );
  }
}
