import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class ProfileDetailsWidget extends StatelessWidget {
   ProfileDetailsWidget({Key? key, required this.title, required this.content}) : super(key: key);
   final String title;
   final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(title,style: const TextStyle(
              color: kSecondaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w500
          ),),
        ),
        const Divider(color: kSecondaryColor,),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(content,style: const TextStyle(
            color: kBlackColor,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),),
        ),

      ],
    );
  }
}
