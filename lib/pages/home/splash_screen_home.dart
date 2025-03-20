import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../app_routes.dart';
import '../../utils/utils.dart';
import '../auth/intro_screen.dart'; // Ensure this has your gradient colors

class SplashScreenHome extends StatefulWidget {
  const SplashScreenHome({super.key});

  @override
  State<SplashScreenHome> createState() => _SplashScreenHomeState();
}

class _SplashScreenHomeState extends State<SplashScreenHome> {
  bool _isBright = true; // Toggle between bright and dim gradient

  @override
  void initState() {
    super.initState();

    // Start flash effect
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _isBright = false; // Dim the gradient
      });

      // Restore brightness after a short delay (flash effect)
      Future.delayed(const Duration(milliseconds: 200), () {
        setState(() {
          _isBright = true; // Flash back to bright gradient
        });
      });

      // Navigate to the next screen after flash effect
      Future.delayed(const Duration(milliseconds: 700), () {
        Get.off(
              () => IntroScreen(),
          transition: Transition.fade,
          duration: const Duration(milliseconds: 500),
        );
      });



    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 200), // Flash speed
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: _isBright
                ? gradient.colors // Your original gradient
                : gradient.colors.map((color) => color.withOpacity(0.5)).toList(), // Dimmed gradient
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        child: CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage("assets/images/logo.jpeg"),
        ),
      ),
    );
  }
}
