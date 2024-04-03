import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({this.hintText,this.onChangerd,this.obscureText=false,required this.prefixIcon});
  String? hintText;
  Function(String)? onChangerd;
  bool? obscureText;
  IconData prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (data){
        if(data!.isEmpty){
          return 'field is required';
        }
      },
      onChanged: onChangerd,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon,color: kLogoutTextColor,size: 30,),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kLogoutTextColor,
        ),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
              color: kLogoutTextColor,
            )
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
              color: kLogoutTextColor,
            )
        ),
      ),
    );
  }
}