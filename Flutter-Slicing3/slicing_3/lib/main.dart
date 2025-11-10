import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:slicing_3/halaman/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
              child: Image.asset('assets/logoKAY.png'),
            ),
            const SizedBox(height: 5),
          ],
        ),

        // Halaman tujuan
        nextScreen: Homepage(),

        splashIconSize: 250,

        backgroundColor: Colors.white,

        splashTransition: SplashTransition.slideTransition,

        pageTransitionType: PageTransitionType.bottomToTop,

        duration: 1000,
        animationDuration: const Duration(milliseconds: 1000),
      ),
    );
  }
}
