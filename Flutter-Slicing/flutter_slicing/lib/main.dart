import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slicing/halaman/page_01.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: AnimatedSplashScreen(
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🔹 Animasi Lottie
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/style2.png'),
            ),
            const SizedBox(height: 5),
          ],
        ),

        // Halaman tujuan
        nextScreen: Page01(),

        splashIconSize: 250,

        backgroundColor: Colors.white,

        splashTransition: SplashTransition.slideTransition,

        pageTransitionType: PageTransitionType.bottomToTop,

        duration: 2000,
      ),
    );
  }
}
