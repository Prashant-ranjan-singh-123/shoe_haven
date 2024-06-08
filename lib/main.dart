import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:projects/view/bottom_nav_bar/shared_page/expand_page.dart';
import 'package:projects/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const ShoesApp());
}

class ShoesApp extends StatelessWidget {
  const ShoesApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black, // Status bar color
    ));
    return GetMaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            onPrimary: Colors.white,
            brightness: Brightness.light,
          ),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.white,
              shadowColor: Colors.white,
              surfaceTintColor: Colors.white,
              elevation: 12,
              //other options
              )),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: ExpandItemPage(),
    );
  }
}
