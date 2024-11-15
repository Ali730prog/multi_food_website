import 'package:flutter/material.dart';
import 'package:stylish/app_component/light_text.dart';
import 'package:stylish/app_const/app_color.dart';

class CommonButton extends StatefulWidget {
  final Color? bgcolor;
  final String text;
  final double? width;
  final double? height;  // Fixed typo here from 'hight' to 'height'
  final Color? textcolor;
  final double? fontsize;
  final FontWeight? fontWeight;
  final Function()? ontap;

  const CommonButton(
      {super.key,
        this.bgcolor = AppColor.redF83758,
        required this.text,
        this.textcolor = AppColor.whiteFFFFFF,
        this.ontap,
        this.fontsize = 20,
        this.fontWeight = FontWeight.w700,
        this.width = 317,
        this.height = 55});

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.ontap != null) {
          widget.ontap!(); // This will call the provided onTap function
        }
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.bgcolor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
            child: LightText(
              text: widget.text,
              fontsize: widget.fontsize,
              fontWeight: widget.fontWeight,
              textColor: widget.textcolor,
            )),
      ),
    );
  }
}
