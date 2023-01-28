import 'package:flutter/material.dart';
import 'package:new_project/utils/app_colors.dart';
import 'package:sizer/sizer.dart';

import '../utils/validators.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_form_field.dart';
import '../widgets/text_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String username = "", password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: (Container(
          width: 100.w,
          height: 100.h,
          color: AppColors.blackgroundColor,
          padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  fontWeight: FontWeight.bold,
                  text: "PROJECT",
                  color: AppColors.buttonColor,
                  size: 20.sp,
                ),
                SizedBox(height: 4.h),
                MyText(
                  fontWeight: FontWeight.bold,
                  text: "LOGIN",
                  color: AppColors.whiteColor,
                  size: 20.sp,
                ),
                SizedBox(height: 4.h),
                MyTextFormField(
                  inputType: TextInputType.text,
                  validator: Validators().reqValidator,
                  helperText: "Required",
                  label: "Username",
                  onSaved: (String? value) {
                    setState(() {
                      username = value!;
                    });
                  },
                ),
                Divider(
                  height: 0.5.h,
                  color: Colors.transparent,
                ),
                MyTextFormField(
                  inputType: TextInputType.visiblePassword,
                  validator: Validators().reqPasswordValidator,
                  obscure: true,
                  helperText: "Required",
                  label: "Password",
                  onSaved: (String? value) {
                    setState(() {
                      password = value!;
                    });
                  },
                ),
                Divider(
                  height: 0.5.h,
                  color: Colors.transparent,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: MyButton().myButtonStyle(),
                    child: MyText(
                      text: 'Login',
                    )),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          splashColor: AppColors.buttonColor,
                          child: MyText(
                            text: "SIGN UP",
                            size: 11.sp,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: MyText(
                            text: "Forgot Password?",
                            size: 11.sp,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.h)
              ],
            ),
          ),
        )));
  }
}
