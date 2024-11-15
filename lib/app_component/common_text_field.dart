import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/app_const/app_color.dart';

class CommonTextField extends StatefulWidget {
  final String prefixIcon;
  final String hintText;
  final bool obscureText;
  final Color? bg_color;
  final TextEditingController controller;

  const CommonTextField({
    super.key,
    required this.controller,
    required this.prefixIcon,
    required this.hintText,
    this.obscureText = false,  this.bg_color= AppColor.whiteF3F3F3,
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  bool _obscureText = false;

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
        color:widget.bg_color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
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
            hintText: widget.hintText,
            hintStyle: GoogleFonts.montserrat(
              color: AppColor.grey676767,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
