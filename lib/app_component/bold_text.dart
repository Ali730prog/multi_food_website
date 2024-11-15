import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/app_const/app_color.dart';

class BoldText extends StatefulWidget {
  final String text;
  final Color? textcolor;
  final FontWeight? fontWeight;
  final double? fontsize;

  const BoldText(
      {super.key,
      required this.text,
      this.textcolor = AppColor.balck000000,
      this.fontWeight = FontWeight.bold,
      this.fontsize = 24});

  @override
  State<BoldText> createState() => _BoldTextState();
}

class _BoldTextState extends State<BoldText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: GoogleFonts.montserrat(
          fontWeight: widget.fontWeight,
          fontSize: widget.fontsize,
          color: widget.textcolor),
    );
  }
}
