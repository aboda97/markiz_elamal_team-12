import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import 'custom_text_form_field_widget.dart';

class EditProfileWidget extends StatelessWidget {
  EditProfileWidget({
    super.key, required this.title, required this.text, required this.prefix,
  });
  final String title;
  final String text;
  final IconData prefix;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(title,style: const TextStyle(
            color: kLogoutTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),),
        ),
        const SizedBox(height: 10,),
        CustomTextFormField(hintText: text, prefixIcon: prefix,),




      ],
    );
  }
}