import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/app_const/app_color.dart';

class CommonPasswordTextField extends StatefulWidget {
  final String prefixIcon;
  final String? suffixIcon;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const CommonPasswordTextField({
    super.key,
    required this.controller,
    required this.prefixIcon,
    required this.hintText,
    this.suffixIcon,
    this.obscureText = true,
  });

  @override
  State<CommonPasswordTextField> createState() => _CommonPasswordTextFieldState();
}

class _CommonPasswordTextFieldState extends State<CommonPasswordTextField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 317,
      height: 55,
      decoration: BoxDecoration(
        color: AppColor.whiteF3F3F3,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextFormField(
        controller: widget.controller,
        obscureText: _obscureText,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,

          prefixIcon: Container(
            width: 24,
            height: 24,
            child: Center(
              child: Image.asset(
                widget.prefixIcon,
                width: 24,
                height: 24,
              ),
            ),
          ),

          suffixIcon: IconButton(
            icon: _obscureText
                ? Icon(Icons.visibility_off, color: AppColor.grey676767)
                : Icon(Icons.visibility, color: AppColor.grey676767),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
          hintText: widget.hintText,
          hintStyle: GoogleFonts.montserrat(
            color: AppColor.grey676767,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
