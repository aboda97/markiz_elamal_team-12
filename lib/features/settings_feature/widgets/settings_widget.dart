import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class settings_widget extends StatelessWidget {
  const settings_widget({
    super.key, required this.icon, required this.title, required this.subTitle, required this.iconColor, required this.onTap,
  });
  final IconData icon;
  final String title;
  final String subTitle;
  final Color iconColor;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: kLogoutTextColor,
          ),
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 22,
            backgroundColor: iconColor,
            child: Icon(icon,color: kWhiteColor,),
          ),

          title: Text(title,style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: kLogoutTextColor,
          ),),
          subtitle: Text(subTitle,style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: kLogoutTextColor,
          ),),
          trailing: const Icon(Icons.arrow_forward_ios,color: kLogoutTextColor,),
        ),
      ),
    );
  }
}