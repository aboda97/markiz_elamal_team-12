import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: kLogoutTextColor,
          ),
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 22.r,
            backgroundColor: iconColor,
            child: Icon(icon,color: kWhiteColor,),
          ),

          title: Text(title,style:  TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w700,
            color: kLogoutTextColor,
          ),),
          subtitle: Text(subTitle,style:  TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.w500,
            color: kLogoutTextColor,
          ),),
          trailing:  Icon(Icons.arrow_forward_ios,color: kLogoutTextColor,size: 25.sp,),
        ),
      ),
    );
  }
}