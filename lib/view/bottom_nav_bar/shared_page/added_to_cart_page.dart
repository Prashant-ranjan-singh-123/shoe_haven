import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../shared/global.dart';
import '../bottom_nav_bar.dart';

class AddedToCartPage extends StatelessWidget {
  const AddedToCartPage({super.key});

  void main_screen() {
    Future.delayed(4000.ms,(){
      Get.offAll(const BottomNavBar(), transition: Transition.fade, curve: Curves.decelerate, duration: 10.ms);
    });
  }

  @override
  Widget build(BuildContext context) {
    main_screen();
    return Scaffold(
      backgroundColor: Color.fromRGBO(77, 155, 97, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: returnSizeOfScreenWhichIsSmaller(),
                height: returnSizeOfScreenWhichIsSmaller()*0.5,
                child: Lottie.asset('assets/lottie/tick_animation.json',
                    reverse: true)),
            const AutoSizeText(
              'Added to Cart',
              maxLines: 1,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Poppins',
                  color: Colors.white),
            ),
            const AutoSizeText('Item is added to cart Enjoy further',
                maxLines: 1,
                style: TextStyle(fontFamily: 'OpenSans', color: Colors.white, fontSize: 15))
          ],
        ),
      ),
    );
  }
}
