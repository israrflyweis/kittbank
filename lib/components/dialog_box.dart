import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({
    super.key,
  });

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        Navigator.of(context).pop(); // Closes the dialog
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/succses.png",
          height: 150,
          width: 150,
        ),
        SizedBox(
          height: 15,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "\$10.00. ",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
              TextSpan(
                text: "Successfully ",
                style: GoogleFonts.roboto(
                  color: Color(0xff3BB54A),
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
              TextSpan(
                text: "Added ",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        Text(
          "To Your Wallet",
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        )
      ],
    );
  }
}
