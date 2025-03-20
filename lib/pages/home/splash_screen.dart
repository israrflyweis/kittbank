import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app_routes.dart'; // Ensure correct route definitions

class SplashFirstScreen extends StatefulWidget {
  const SplashFirstScreen({super.key});

  @override
  _SplashFirstScreenState createState() => _SplashFirstScreenState();
}

class _SplashFirstScreenState extends State<SplashFirstScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    double screenHeight = Get.height; // Get screen height

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500), // Smooth drop effect
      vsync: this,
    );

    _animation = Tween<double>(begin: -screenHeight / 2, end: screenHeight / 2.5).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceOut, // Smooth bouncing drop
      ),
    );

    _controller.forward(); // Start the animation

    // Navigate to the next screen after 4 seconds
    Future.delayed(const Duration(seconds: 4), () {
      Get.offNamed(AppRoutes.splashSecondScreen);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Positioned(
                top: _animation.value, // Moves from top to center
                left: MediaQuery.of(context).size.width / 2 - 50, // Centers horizontally
                child: Image.asset(
                  "assets/images/Splash_img.png",
                  width: 100, // Adjust image size as needed
                  height: 100,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
