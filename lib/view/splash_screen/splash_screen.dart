import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../shared/global.dart';
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
        child: SizedBox(
          width: returnSizeOfScreenWhichIsSmaller()*0.8,
          height: returnSizeOfScreenWhichIsSmaller()*0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: returnSizeOfScreenWhichIsSmaller()*0.5,
                height: returnSizeOfScreenWhichIsSmaller()*0.5,
                child: Image.asset('assets/image/app_icon.png')
                    .animate()
                    .fadeIn(duration: 2000.ms)
                    .slideY(duration: 1000.ms, curve: Curves.decelerate),
              ),
              const AutoSizeText(
                maxLines: 1,
                'ShoeHaven',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, fontFamily: 'Poppins'),
              ).animate().fadeIn(duration: 1000.ms, delay: 500.ms),
              const AutoSizeText(maxLines: 1, 'Where Every Step Finds Comfort', style: TextStyle(fontFamily: 'OpenSans'),)
                  .animate()
                  .fadeIn(duration: 1500.ms, delay: 500.ms).scaleY(
                duration: 1000.ms, curve: Curves.decelerate
              )
            ],
          ),
        ),
      ),
    );
  }
}
