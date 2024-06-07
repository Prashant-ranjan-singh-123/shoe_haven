import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/empty_favourite.png').animate()
                  .fadeIn(duration: 2000.ms)
                  .slideY(duration: 1000.ms, curve: Curves.decelerate),
              const SizedBox(
                height: 40,
              ),
              const AutoSizeText(
                maxLines: 1,
                '"Your favourite list is empty."',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2B2F33),
                  fontSize: 20.50,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  height: 0.13,
                ),
              ).animate().fadeIn(duration: 1000.ms, delay: 500.ms),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Let\'s explore the world of footwear together and find a shoe that perfectly suits your needs!',
                style: TextStyle(
                  color: Color(0x7F2B2F33),
                  fontSize: 12.50,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                ),
              ).animate()
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
