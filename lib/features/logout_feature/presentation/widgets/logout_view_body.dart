import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/app_paths.dart';

class LogoutViewBody extends StatefulWidget {
  const LogoutViewBody({super.key});

  @override
  State<LogoutViewBody> createState() => _LogoutViewBodyState();
}

class _LogoutViewBodyState extends State<LogoutViewBody> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return Scaffold(
      body: Center(
        child: Column(
          children: [
             Padding(
              padding: EdgeInsets.only(top: 60.h, bottom: 15.h),
              child: Text(
                "Profile",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: kLogoutTextColor,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 20.h),
              child: CircleAvatar(
                radius: 66.r,
                backgroundColor: kPrimaryColor,
                child: Image.asset(
                  AppPaths.logoutImage,
                  height: 99.h,
                  width: 106.w,
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(bottom: 15.h),
              child: Text(
                "Ammar Ahmed",
                style: TextStyle(
                  color: kLogoutTextColor,
                  fontFamily: 'Poppins',
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
              margin:  EdgeInsets.symmetric(horizontal: 20.w),
              decoration:  BoxDecoration(
                color: kLogoutConColor,
                borderRadius: BorderRadius.all(Radius.circular(30.r)),
              ),
              child: Column(
                children: [
                   SizedBox(height: 45.h),
                   Text(
                    'See You Soon',
                    style: TextStyle(
                      fontFamily: 'OleoScriptSwashCaps',
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    ),
                  ),
                   SizedBox(height: 20.h),
                   Text(
                    'You are about to logout.',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    ),
                  ),
                   Text(
                    'Are you sure this is what',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    ),
                  ),
                   Text(
                    'you want ?',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    ),
                  ),
                   SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       SizedBox(width: 28.w),
                       Expanded(
                         flex: 1,
                         child: Text(
                          'Cancel',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            color: kWhiteColor,
                          ),
                                               ),
                       ),
                       SizedBox(width: 20.w),
                      Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            // fixedSize:  Size(213.w, 45.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          onPressed: () {},
                          child:  Text(
                            'Confirm logout',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: kLogoutTextColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 7.h),
                  Row(
                    children: [
                       SizedBox(width: 16.w),
                      Checkbox(
                        activeColor: kWhiteColor,
                        checkColor: kBlackColor,
                        value: true,
                        onChanged: (value) {},
                      ),
                       Text(
                        'Logout from all devices',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: kWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
