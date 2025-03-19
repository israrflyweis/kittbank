import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNumberPad extends StatelessWidget {
  final ValueChanged<String> onValueChanged;
  final String currentValue;

  const CustomNumberPad({super.key, required this.onValueChanged, required this.currentValue});

  void _onKeyTap(String value) {
    String newValue = currentValue;

    if (value == "." && currentValue.contains(".")) return;

    if (currentValue == "0" && value != ".") {
      newValue = value;
    } else {
      newValue += value;
    }

    if (newValue.contains(".")) {
      List<String> parts = newValue.split(".");
      if (parts.length > 1 && parts[1].length > 2) {
        newValue = "${parts[0]}.${parts[1].substring(0, 2)}";
      }
    }

    onValueChanged(newValue);
  }

  void _onBackspace() {
    String newValue = currentValue.length > 1
        ? currentValue.substring(0, currentValue.length - 1)
        : "0";

    onValueChanged(newValue);
  }

  Widget _buildKey(String label) {
    return GestureDetector(
      onTap: () => _onKeyTap(label),
      child: Container(
        width: 80.w,  // Ensures all keys have the same width
        height: 60.w, // Keeps height consistent
        alignment: Alignment.center,
        child: Text(
          label,
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 40.sp,
          ),
        ),
      ),
    );
  }

  Widget _buildBackspaceKey() {
    return GestureDetector(
      onTap: _onBackspace,
      child: Container(
        width: 80.w,  // Same width as number keys
        height: 80.w, // Keeps it square like numbers
        alignment: Alignment.center,
        child: Icon(
          Icons.backspace_outlined,
          color: Colors.white,
          size: 40.sp, // Match other keys
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 30.h),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_buildKey("1"), _buildKey("2"), _buildKey("3")],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_buildKey("4"), _buildKey("5"), _buildKey("6")],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_buildKey("7"), _buildKey("8"), _buildKey("9")],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Matches all rows
              children: [
                _buildKey("."),
                _buildKey("0"),
                _buildBackspaceKey(),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
