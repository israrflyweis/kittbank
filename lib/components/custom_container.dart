import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double? height;
  const CustomContainer({super.key, required this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 4,
      shadowColor: Colors.black,
      child: Container(
        height: height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            //tileMode: TileMode.clamp,
            stops: [00.00, 0.00, 18.10],
            colors: [
              Color(0xff24190E),
              Color(0xff815B00),
              Color(0xff56441E),
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
