import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/app_component/common_button.dart';
import 'package:stylish/app_const/app_assets.dart';
import 'package:stylish/app_const/app_color.dart';

import '../home_screen/home_Screen.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("${AppAssets.clothes}"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
                child: Column(
              children: [
                SizedBox(
                  height: 500,
                ),
                Text(
                  "You want \nAuthentic, here \nyou go!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: AppColor
                          .whiteFFFFFF), // Adjust text size based on screen width
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Find it here, buy it now!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor
                          .whiteF3F3F3), // Adjust text size based on screen width
                ),
                SizedBox(
                  height: 10.0,
                ),
                CommonButton(
                  ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  text: "Get Started",
                  width: 279,
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
