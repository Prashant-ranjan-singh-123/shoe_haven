import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:projects/view/bottom_nav_bar/shared_page/expand_page.dart';
import 'package:projects/view/splash_screen/splash_screen.dart';

void main(){
  runApp(const ShoesApp());
}

class ShoesApp extends StatelessWidget {
  const ShoesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: ExpandItemPage(),
    );
  }
}
