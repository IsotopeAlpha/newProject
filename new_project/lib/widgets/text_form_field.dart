import 'package:flutter/material.dart';
import 'package:new_project/utils/app_colors.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class MyTextFormField extends StatelessWidget {
  String? label, helperText, hintText, initialValue;
  Icon? icon;
  String? Function(String?)? validator;
  TextEditingController? controller;
  Function(String?)? onSaved, onChanged;
  bool? obscure;
  Color? fillColor;
  TextInputType? inputType;

  MyTextFormField(
      {super.key,
      this.label,
      this.controller,
      this.validator,
      this.icon,
      this.hintText,
      this.obscure,
      this.onSaved,
      this.onChanged,
      this.inputType,
      this.helperText,
      this.initialValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7.sp),
      child: TextFormField(
        initialValue: initialValue,
        validator: validator,
        controller: controller,
        onSaved: onSaved,
        style: const TextStyle(color: AppColors.whiteColor),
        onChanged: onChanged,
        obscureText: obscure ?? false,
        keyboardType: inputType,
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.whiteColor)),
          labelStyle: const TextStyle(color: AppColors.whiteColor),
          suffixIconColor: AppColors.whiteColor,
          suffixIcon: obscure == true
              ? InkWell(
                  child: const Icon(Icons.visibility),
                  onTap: () {
                    obscure = !obscure!;
                    (context as Element).markNeedsBuild();
                  },
                )
              : obscure == null
                  ? null
                  : InkWell(
                      child: const Icon(Icons.visibility_off),
                      onTap: () {
                        obscure = !obscure!;
                        (context as Element).markNeedsBuild();
                      },
                    ),
          labelText: label,
          hintText: hintText,
          helperText: helperText,
          prefixIcon: icon,
        ),
      ),
    );
  }
}
