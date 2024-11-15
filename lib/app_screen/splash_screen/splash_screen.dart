import 'dart:async'; // Import the Timer class from 'dart:async'

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:stylish/app_const/app_assets.dart';
import 'package:stylish/app_const/app_color.dart';
import 'package:stylish/app_screen/onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnboardingScreen()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 125,
              height: 100,
              child: Image.asset("${AppAssets.logo}",fit: BoxFit.cover,),
            ),
            SizedBox(width: 20),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Stylish',
                  textStyle: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,color: AppColor.redF83758),
                  speed: Duration(milliseconds: 150),
                ),
              ],
              stopPauseOnTap: true,
            ),
          ],
        ),
      ),
    );
  }
}
