import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';

class WelcomeViewBody extends StatefulWidget {
  const WelcomeViewBody({super.key});

  @override
  State<WelcomeViewBody> createState() => _WelcomeViewBodyState();
}

class _WelcomeViewBodyState extends State<WelcomeViewBody> {
  @override
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));

    return  Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100.r,
              backgroundColor: kPrimaryColor,
              child: Icon(
                Icons.check,
                color: kWhiteColor,
                size: 125.sp,
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              'Congratulations',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 30.sp,
                fontFamily: 'Poppins',
                color: kLogoutTextColor,
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              'Your Registration Is Success',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: kLogoutTextColor,
              ),
            ),
            SizedBox(height: 3.h),
            Text(
              'Welcome to our app',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: kLogoutTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
