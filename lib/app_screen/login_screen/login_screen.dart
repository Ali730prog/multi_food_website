import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/app_component/bold_text.dart';
import 'package:stylish/app_component/common_button.dart';
import 'package:stylish/app_component/common_text_field.dart';
import 'package:stylish/app_component/common_text_filed.dart';
import 'package:stylish/app_component/light_text.dart';
import 'package:stylish/app_const/app_assets.dart';
import 'package:stylish/app_const/app_color.dart';
import 'package:stylish/app_screen/forgot_password/forgot_password.dart';
import 'package:stylish/app_screen/get_started/get_started.dart';

import '../signup_screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 26.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  BoldText(
                    text: "Welcome \nBack!",
                    fontsize: 36,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  CommonTextField(
                      controller: emailcontroller,
                      prefixIcon: "${AppAssets.user_logo}",
                      hintText: "User"),
                  SizedBox(
                    height: 15.0,
                  ),
                  CommonPasswordTextField(
                    controller: passwordcontroller,
                    prefixIcon: "${AppAssets.lock_logo}",
                    hintText: "Password",
                    suffixIcon: "${AppAssets.eye}",
                  ),
                  SizedBox(
                    height: 09.0,
                  ),
                  GestureDetector(
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 160),
                      child: LightText(
                        text: "Forgot Password?",
                        textColor: AppColor.redF83758,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  CommonButton(text: "Login",
                  ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GetStarted()));
                  },
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                      child: LightText(
                    text: "- OR Continue with -",
                    fontsize: 12,
                    textColor: AppColor.grey575757,
                  )),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                            color: AppColor.whiteFCF3F6,
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 2, color: AppColor.redF83758)),
                        child: Center(
                            child: Image.asset(
                          "${AppAssets.google_logo}",
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                        )),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                            color: AppColor.whiteFCF3F6,
                            shape: BoxShape.circle,
                            border:
                            Border.all(width: 2, color: AppColor.redF83758)),
                        child: Center(
                            child: Image.asset(
                              "${AppAssets.apple_logo}",
                              width: 24,
                              height: 24,
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                            color: AppColor.whiteFCF3F6,
                            shape: BoxShape.circle,
                            border:
                            Border.all(width: 2, color: AppColor.redF83758)),
                        child: Center(
                            child: Image.asset(
                              "${AppAssets.facebook_logo}",
                              width: 24,
                              height: 24,
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: 35.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LightText(
                      text: "Create An Account",
                      fontsize: 14,
                      fontWeight: FontWeight.w500,
                      textColor: AppColor.grey575757,
                    ),
                    SizedBox(width: 10.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      },
                      child: Text("Sign up",style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,fontSize: 14,color: AppColor.redF83758,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationColor: AppColor.redF83758,
                      decorationThickness: 1,
                      textStyle: TextStyle(
                        color: Colors.red
                      )
                      ),
                      ),
                    
                    )
                  ],
                )
          
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
