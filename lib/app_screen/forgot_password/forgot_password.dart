import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/app_component/bold_text.dart';
import 'package:stylish/app_component/common_button.dart';
import 'package:stylish/app_component/common_text_field.dart';
import 'package:stylish/app_component/common_text_filed.dart';
import 'package:stylish/app_component/light_text.dart';
import 'package:stylish/app_const/app_assets.dart';
import 'package:stylish/app_const/app_color.dart';

import '../signup_screen/signup_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailcontroller = TextEditingController();

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
                    text: "Forgot \password?",
                    fontsize: 36,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  CommonTextField(
                      controller: emailcontroller,
                      prefixIcon: "${AppAssets.email_logo}",
                      hintText: "Enter your email address"),
                  SizedBox(
                    height: 09.0,
                  ),
                  LightText(
                    text: "We will send you a message to set or reset your new password",
                    textColor: AppColor.grey676767,
                    fontsize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  CommonButton(text: "Submit"),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
