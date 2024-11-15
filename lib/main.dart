import 'package:flutter/material.dart';
import 'package:stylish/app_screen/home_screen/home_Screen.dart';
import 'package:stylish/app_screen/onboarding_screen/onboarding_screen.dart';
import 'package:stylish/app_screen/splash_screen/splash_screen.dart';

main(){
  runApp(MaterialApp(home: Stylish(),));
}
class Stylish extends StatefulWidget {
  const Stylish({super.key});

  @override
  State<Stylish> createState() => _StylishState();
}

class _StylishState extends State<Stylish> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
