


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../app_routes.dart';

class SplashSecondScreen extends StatefulWidget {
  const SplashSecondScreen({super.key});

  @override
  State<SplashSecondScreen> createState() => _SplashSecondScreenState();
}

class _SplashSecondScreenState extends State<SplashSecondScreen> {
  @override
  void initState() {
    // Navigate to the next screen after 4 seconds
    Future.delayed(const Duration(seconds: 1), () {
      Get.offNamed(AppRoutes.splashThirdScreen);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/splash_img1.png"),
      ),
    );
  }
}
