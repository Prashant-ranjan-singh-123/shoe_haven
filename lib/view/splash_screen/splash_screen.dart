import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../on_boarding/check_first_run.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void showOnboard(){
    Future.delayed(const Duration(seconds: 3, milliseconds: 500),(){
      Get.off(const OnboardingOrMainScreen(), transition: Transition.rightToLeft, duration: 300.ms
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    showOnboard();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/icon_1.jpg')
                .animate()
                .fadeIn(duration: 2000.ms)
                .slideY(duration: 1000.ms, curve: Curves.decelerate),
            const Text(
              'ShoeHaven',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, fontFamily: 'Poppins'),
            ).animate().fadeIn(duration: 1000.ms, delay: 500.ms),
            const Text('Where Every Step Finds Comfort', style: TextStyle(fontFamily: 'OpenSans'),)
                .animate()
                .fadeIn(duration: 1500.ms, delay: 500.ms).scaleY(
              duration: 1000.ms, curve: Curves.decelerate
            )
          ],
        ),
      ),
    );
  }
}
