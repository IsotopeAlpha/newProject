import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../utils/app_colors.dart';

// ignore: must_be_immutable
class MyText extends StatelessWidget {
  String text;
  Color? color;
  double? size;
  FontWeight? fontWeight;

  MyText(
      {super.key, required this.text, this.size, this.color, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: fontWeight,
          fontSize: size ?? 11.sp,
          color: color ?? AppColors.blackColor),
    );
  }
}
