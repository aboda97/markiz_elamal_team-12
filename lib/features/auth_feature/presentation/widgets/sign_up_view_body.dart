import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/app_paths.dart';

import '../components/bottom_dialog.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool passwardvisible = true;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                    padding: EdgeInsets.only(top: 30.h, left: 30.w, bottom: 245.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Let\'s Start with',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'sign up',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: 'Poppins',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 515.h,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70.r),
                        topLeft: Radius.circular(70.r),
                      ),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(
                        bottom: 15.h,
                        left: 70.w,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                           Text(
                            'Have alreadyan account?',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontFamily: 'Poppins',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          InkWell(
                            child:  Text(
                              'Sign In',
                              style: TextStyle(
                                color: kLogoutTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 65.h,
              left: 49.w,
              child: Container(
                width: 325.w,
                height: 630.h,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(30.r),
                  border: Border.all(
                    width: 8.w,
                    color: kWhiteColor,
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        AppPaths.appLogo,
                        height: 85.h,
                        width: 65.w,
                      ),
                      SizedBox(height: 10.h),
                       Text(
                        'Markaz ElAma',
                        style: TextStyle(
                          color: kWhiteColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          fontFamily: 'Peralta',
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                          top: 15.h,
                          right: 15.w,
                          left: 15.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: BorderRadius.all(
                              Radius.circular(14.r),
                            ),
                          ),
                          child:  TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Icon(
                                  CupertinoIcons.person_crop_circle,
                                  color: kWhiteColor,
                                  size: 35.sp,
                                ),
                              ),
                              hintText: 'Name',
                              hintStyle: TextStyle(
                                color: kWhiteColor,
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                          top: 15.h,
                          right: 15.w,
                          left: 15.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: BorderRadius.all(
                              Radius.circular(14.r),
                            ),
                          ),
                          child:  TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Icon(
                                  CupertinoIcons.phone,
                                  color: kWhiteColor,
                                  size: 35.sp,
                                ),
                              ),
                              hintText: 'Phone number',
                              hintStyle: TextStyle(
                                color: kWhiteColor,
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                          top: 15.h,
                          right: 15.w,
                          left: 15.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: BorderRadius.all(
                              Radius.circular(14.r),
                            ),
                          ),
                          child:  TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Icon(
                                  Icons.email_outlined,
                                  color: kWhiteColor,
                                  size: 35.sp,
                                ),
                              ),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                color: kWhiteColor,
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                          top: 15.h,
                          right: 15.w,
                          left: 15.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: BorderRadius.all(
                              Radius.circular(14.r),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon:  Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Icon(
                                  Icons.lock_outline_rounded,
                                  color: kWhiteColor,
                                  size: 35.sp,
                                ),
                              ),
                              hintText: '   Password',
                              hintStyle:  TextStyle(
                                color: kWhiteColor,
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                              ),
                              suffixIcon: IconButton(
                                color: kWhiteColor,
                                icon: Icon(passwardvisible
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined),
                                onPressed: () {
                                  setState(
                                    () {
                                      passwardvisible = !passwardvisible;
                                    },
                                  );
                                },
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                          top: 15.h,
                          right: 15.w,
                          left: 15.w,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: BorderRadius.all(
                              Radius.circular(14.r),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon:  Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Icon(
                                  Icons.lock_outline_rounded,
                                  color: kWhiteColor,
                                  size: 35.sp,
                                ),
                              ),
                              hintText: 'Confirm password',
                              hintStyle:  TextStyle(
                                color: kWhiteColor,
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                              ),
                              suffixIcon: IconButton(
                                color: kWhiteColor,
                                icon: Icon(passwardvisible
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined),
                                onPressed: () {
                                  setState(
                                    () {
                                      passwardvisible = !passwardvisible;
                                    },
                                  );
                                },
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                      ),
                       SizedBox(height: 18.h),
                      const BottomDialog(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
