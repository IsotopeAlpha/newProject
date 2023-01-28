import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../utils/app_colors.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// ignore: must_be_immutable
class MyButton {
  Color? buttonColor;

  MyButton({Key? key, this.buttonColor});

  ButtonStyle myButtonStyle() {
    return ElevatedButton.styleFrom(
        minimumSize: Size(100.w, 30.sp),
        textStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: AppColors.blackColor),
        backgroundColor: buttonColor ?? AppColors.buttonColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.sp))));
  }
}
