import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app_routes.dart';

class SplashThirdScreen extends StatefulWidget {
  const SplashThirdScreen({super.key});

  @override
  State<SplashThirdScreen> createState() => _SplashThirdScreenState();
}

class _SplashThirdScreenState extends State<SplashThirdScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _animation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0.5, end: 1.2).chain(CurveTween(curve: Curves.easeOut)), weight: 50),
      TweenSequenceItem(tween: Tween(begin: 1.2, end: 0.9).chain(CurveTween(curve: Curves.easeInOut)), weight: 30),
      TweenSequenceItem(tween: Tween(begin: 0.9, end: 1.0).chain(CurveTween(curve: Curves.elasticOut)), weight: 20),
    ]).animate(_controller);

    _controller.forward(); // Start animation


    Future.delayed(const Duration(milliseconds: 1500), () {
      Get.offNamed(AppRoutes.splashScreenHome);
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
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: Image.asset("assets/images/splash_img2.png"),
            );
          },
        ),
      ),
    );
  }
}
