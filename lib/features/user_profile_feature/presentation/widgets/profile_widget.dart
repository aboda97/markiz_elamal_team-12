import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({
    super.key, required this.icon, required this.title, required this.onTap,
  });
  final IconData icon;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: const Color(0xff8FAFCE),
              child: Icon(
                icon,
                color: kWhiteColor,
                size: 20,
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Text(title,style: const TextStyle(
              color: kBlackColor,
              fontSize: 20,
              fontWeight: FontWeight.w500
          ),),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios,size: 16,color: kLogoutTextColor,)
        ],
      ),
    );
  }
}