import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/app_component/bold_text.dart';
import 'package:stylish/app_component/common_button.dart';
import 'package:stylish/app_component/common_text_field.dart';
import 'package:stylish/app_component/common_text_filed.dart';
import 'package:stylish/app_component/light_text.dart';
import 'package:stylish/app_const/app_assets.dart';
import 'package:stylish/app_const/app_color.dart';
import 'package:stylish/app_screen/get_started/get_started.dart';
import 'package:stylish/app_screen/login_screen/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

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
                    text: "Create an \naccount",
                    fontsize: 36,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  CommonTextField(
                      controller: emailcontroller,
                      prefixIcon: "${AppAssets.user_logo}",
                      hintText: "Username or Email"),
                  SizedBox(
                    height: 25.0,
                  ),
                  CommonPasswordTextField(
                    controller: passwordcontroller,
                    prefixIcon: "${AppAssets.lock_logo}",
                    hintText: "Password",
                    suffixIcon: "${AppAssets.eye}",
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  CommonPasswordTextField(
                    controller: confirmpasswordcontroller,
                    prefixIcon: "${AppAssets.lock_logo}",
                    hintText: "Confirm Password",
                    suffixIcon: "${AppAssets.eye}",
                  ),
                  SizedBox(
                    height: 09.0,
                  ),
                  Row(
                    children: [
                      LightText(
                        text: "By clicking the ",
                        fontsize: 12,
                        textColor: AppColor.grey676767,
                      ),
                      LightText(
                        text: "Register ",
                        fontsize: 12,
                        textColor: AppColor.redF83758,
                      ),
                      LightText(
                        text: "button, you agree",
                        fontsize: 12,
                        textColor: AppColor.grey676767,
                      ),
                    ],
                  ),
                  LightText(
                    text: "to the public offer",
                    fontsize: 12,
                    textColor: AppColor.grey676767,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  CommonButton(
                      ontap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>GetStarted()));
                      },
                      text: "Create Account"),
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
                        text: "I Already Have an Account",
                        fontsize: 14,
                        fontWeight: FontWeight.w500,
                        textColor: AppColor.grey575757,
                      ),
                      SizedBox(width: 10.0,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                        },
                        child: Text("Login",style: GoogleFonts.montserrat(
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
