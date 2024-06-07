import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../bottom_nav_bar.dart';

class AddedToCartPage extends StatelessWidget {
  const AddedToCartPage({super.key});

  void main_screen(){
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
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.scale(scale:1,child: Lottie.asset('assets/lottie/tick_animation.json', reverse: true)),
              const Text('Added to Cart', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, fontFamily: 'Poppins', color: Colors.white),),
              const Text('Item is added to cart Enjoy further', style: TextStyle(fontFamily: 'OpenSans', color: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
