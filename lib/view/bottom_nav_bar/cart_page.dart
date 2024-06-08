import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/image/empty_cart.png').animate()
                .fadeIn(duration: 2000.ms)
                .slideY(duration: 1000.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 40,
                ),
                const AutoSizeText(
                  maxLines: 1,
                  '"Your shopping cart is empty."',
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
                  'Let\'s  Start shopping now and add items you love.',
                  style: TextStyle(
                    color: Color(0x7F2B2F33),
                    fontSize: 12.50,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400,
                    height: 0.13,
                  ),
                ).animate()
                    .fadeIn(duration: 1500.ms, delay: 500.ms).scaleY(
                    duration: 1000.ms, curve: Curves.decelerate
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
