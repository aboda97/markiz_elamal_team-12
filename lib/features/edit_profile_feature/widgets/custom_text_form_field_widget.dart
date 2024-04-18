import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {required this.keyboardType,
      this.hintText,
      required this.controller,
      this.onChanged,
      this.obscureText = false,
        // required this.currentValue,
      required this.prefixIcon});

  String? hintText;
  Function(String)? onChanged;
  TextInputType keyboardType;
  bool? obscureText;
  IconData prefixIcon;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return TextFormField(
      obscureText: obscureText!,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      onChanged: onChanged,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: kLogoutTextColor,
          size: 30.sp,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kLogoutTextColor,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.r)),
            borderSide: const BorderSide(
              color: kLogoutTextColor,
            )),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.r)),
            borderSide: const BorderSide(
              color: kLogoutTextColor,
            )),
      ),
    );
  }
}
