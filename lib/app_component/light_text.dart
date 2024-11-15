import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/app_const/app_color.dart';

class LightText extends StatefulWidget {
  final String text;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontsize;

  const LightText(
      {super.key,
      required this.text,
      this.textColor=AppColor.greyA8A8A9,
      this.fontWeight=FontWeight.w600,
      this.fontsize=14.0});

  @override
  State<LightText> createState() => _LightTextState();
}

class _LightTextState extends State<LightText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,style: GoogleFonts.montserrat(
      fontSize: widget.fontsize,fontWeight: widget.fontWeight,
      color: widget.textColor
    ),);
  }
}
