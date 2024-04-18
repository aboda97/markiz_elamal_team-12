import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import 'custom_text_form_field_widget.dart';

class EditProfileWidget extends StatelessWidget {
  EditProfileWidget(
      {super.key,
      required this.title,
      required this.controller,
      required this.prefix,
      required this.keyboardType,
      // required this.currentValue
      });

  TextInputType keyboardType;
  final String title;
  final TextEditingController controller;
  final IconData prefix;
  // String currentValue;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              color: kLogoutTextColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomTextFormField(
          keyboardType: keyboardType,
          controller: controller,
          // hintText: currentValue,
          prefixIcon: prefix,
        ),
      ],
    );
  }
}
