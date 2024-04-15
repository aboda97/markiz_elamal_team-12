import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/app_paths.dart';
import 'package:markiz_elamal_team_12/features/home_view/presentation/views/homescreen.dart';
import '../sign_up_view.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  bool passwardvisible = true;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 30.h, left: 30.w, bottom: 200.h),
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
                          'sign in',
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
                    height: 514,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70.r),
                        topLeft: Radius.circular(70.r),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: 15.h,
                        left: 70.w,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Don’t have an account?',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontFamily: 'Poppins',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          InkWell(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: kLogoutTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) => const SignUpView(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 44.w),
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                // width: 325.w,
                // height: 415.h,
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
                        padding: EdgeInsets.only(
                          top: 20.h,
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
                              icon: Padding(
                                padding: EdgeInsets.only(left: 15.w),
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
                        padding: EdgeInsets.only(
                          top: 20.h,
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
                              icon: Padding(
                                padding: EdgeInsets.only(left: 15.w),
                                child: Icon(
                                  Icons.lock_outline_rounded,
                                  color: kWhiteColor,
                                  size: 35.sp,
                                ),
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: kWhiteColor,
                                fontFamily: 'Poppins',
                                fontSize: 14.sp,
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                      ),
                      SizedBox(height: 25.h),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(255.w, 45.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                              (route) => false);
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h),
                      InkWell(
                        child: Text(
                          'Forgot password ?',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: kWhiteColor,
                          ),
                        ),
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30.r),
                              ),
                            ),
                            builder: (BuildContext context) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 40.h,
                                  horizontal: 30.w,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 15.h),
                                      child: Text(
                                        'Forget Password',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.sp,
                                          fontFamily: 'Poppins',
                                          color: kLogoutTextColor,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Enter your email for verification process we',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: kLogoutTextColor,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      'will send 5 digits code to your email',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: kLogoutTextColor,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Email',
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              color: kLogoutTextColor,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border:
                                            Border.all(color: kLogoutTextColor),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(14.r),
                                        ),
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          icon: Padding(
                                            padding:
                                                EdgeInsets.only(left: 15.w),
                                            child: Icon(
                                              Icons.email_outlined,
                                              color: kPrimaryColor,
                                              size: 35.sp,
                                            ),
                                          ),
                                        ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: kPrimaryColor,
                                        fixedSize: Size(335.w, 60.h),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.r),
                                        ),
                                      ),
                                      onPressed: () {
                                        showModalBottomSheet(
                                            context: context,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                top: Radius.circular(30.r),
                                              ),
                                            ),
                                            builder: (BuildContext context) {
                                              return Container(
                                                decoration:
                                                    const BoxDecoration(),
                                                height: 600.h,
                                                width: double.infinity,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 10.h,
                                                    left: 30.w,
                                                    right: 30.w,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Reset Password',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 25.sp,
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              kLogoutTextColor,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Enter the code you receive in mail and',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 13.sp,
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              kLogoutTextColor,
                                                        ),
                                                      ),
                                                      Text(
                                                        'set the new password for your',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 13.sp,
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              kLogoutTextColor,
                                                        ),
                                                      ),
                                                      Text(
                                                        'accountso you can login and access',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 13.sp,
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              kLogoutTextColor,
                                                        ),
                                                      ),
                                                      Text(
                                                        'all the features',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 13.sp,
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              kLogoutTextColor,
                                                        ),
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      Text(
                                                        'Enter the 5 digits code',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 18.sp,
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              kLogoutTextColor,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color:
                                                                  kLogoutTextColor),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(
                                                                14.r),
                                                          ),
                                                        ),
                                                        height: 45.h,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              height: 30.h,
                                                              width: 30.w,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .all(
                                                                  Radius
                                                                      .circular(
                                                                          8.r),
                                                                ),
                                                                color:
                                                                    kLogoutTextColor,
                                                              ),
                                                              child: TextField(
                                                                decoration:
                                                                    const InputDecoration(
                                                                        border:
                                                                            InputBorder.none),
                                                                onChanged:
                                                                    (value) {
                                                                  if (value
                                                                          .length ==
                                                                      1) {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .nextFocus();
                                                                  }
                                                                },
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .headlineMedium,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                inputFormatters: [
                                                                  LengthLimitingTextInputFormatter(
                                                                      1),
                                                                  FilteringTextInputFormatter
                                                                      .digitsOnly,
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 30.h,
                                                              width: 30.w,
                                                              decoration:
                                                                   BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .all(
                                                                  Radius
                                                                      .circular(
                                                                          8.r),
                                                                ),
                                                                color:
                                                                    kLogoutTextColor,
                                                              ),
                                                              child: TextField(
                                                                decoration:
                                                                    const InputDecoration(
                                                                        border:
                                                                            InputBorder.none),
                                                                onChanged:
                                                                    (value) {
                                                                  if (value
                                                                          .length ==
                                                                      1) {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .nextFocus();
                                                                  }
                                                                },
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .headlineMedium,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                inputFormatters: [
                                                                  LengthLimitingTextInputFormatter(
                                                                      1),
                                                                  FilteringTextInputFormatter
                                                                      .digitsOnly,
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 30.h,
                                                              width: 30.w,
                                                              decoration:
                                                                   BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .all(
                                                                  Radius
                                                                      .circular(
                                                                          8.r),
                                                                ),
                                                                color:
                                                                    kLogoutTextColor,
                                                              ),
                                                              child: TextField(
                                                                decoration:
                                                                    const InputDecoration(
                                                                        border:
                                                                            InputBorder.none),
                                                                onChanged:
                                                                    (value) {
                                                                  if (value
                                                                          .length ==
                                                                      1) {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .nextFocus();
                                                                  }
                                                                },
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .headlineMedium,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                inputFormatters: [
                                                                  LengthLimitingTextInputFormatter(
                                                                      1),
                                                                  FilteringTextInputFormatter
                                                                      .digitsOnly,
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 30.h,
                                                              width: 30.w,
                                                              decoration:
                                                                   BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .all(
                                                                  Radius
                                                                      .circular(
                                                                          8.r),
                                                                ),
                                                                color:
                                                                    kLogoutTextColor,
                                                              ),
                                                              child: TextField(
                                                                decoration:
                                                                    const InputDecoration(
                                                                        border:
                                                                            InputBorder.none),
                                                                onChanged:
                                                                    (value) {
                                                                  if (value
                                                                          .length ==
                                                                      1) {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .nextFocus();
                                                                  }
                                                                },
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .headlineMedium,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                inputFormatters: [
                                                                  LengthLimitingTextInputFormatter(
                                                                      1),
                                                                  FilteringTextInputFormatter
                                                                      .digitsOnly,
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 30.h,
                                                              width: 30.w,
                                                              decoration:
                                                                   BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .all(
                                                                  Radius
                                                                      .circular(
                                                                          8.r),
                                                                ),
                                                                color:
                                                                    kLogoutTextColor,
                                                              ),
                                                              child: TextField(
                                                                decoration:
                                                                    const InputDecoration(
                                                                        border:
                                                                            InputBorder.none),
                                                                onChanged:
                                                                    (value) {
                                                                  if (value
                                                                          .length ==
                                                                      1) {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .nextFocus();
                                                                  }
                                                                },
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .headlineMedium,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                inputFormatters: [
                                                                  LengthLimitingTextInputFormatter(
                                                                      1),
                                                                  FilteringTextInputFormatter
                                                                      .digitsOnly,
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                       Text(
                                                        'Password',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 18.sp,
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              kLogoutTextColor,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color:
                                                                  kLogoutTextColor),
                                                          borderRadius:
                                                               BorderRadius
                                                                  .all(
                                                            Radius.circular(14.r),
                                                          ),
                                                        ),
                                                        height: 45.h,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            suffixIcon:
                                                                IconButton(
                                                              color:
                                                                  kWhiteColor,
                                                              icon: Icon(
                                                                color:
                                                                    kLogoutTextColor,
                                                                passwardvisible
                                                                    ? Icons
                                                                        .visibility_outlined
                                                                    : Icons
                                                                        .visibility_off_outlined,
                                                              ),
                                                              onPressed: () {
                                                                setState(
                                                                  () {
                                                                    passwardvisible =
                                                                        !passwardvisible;
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                          keyboardType:
                                                              TextInputType
                                                                  .visiblePassword,
                                                        ),
                                                      ),
                                                       Text(
                                                        'Confirm Password',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 18.sp,
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              kLogoutTextColor,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color:
                                                                  kLogoutTextColor),
                                                          borderRadius:
                                                               BorderRadius
                                                                  .all(
                                                            Radius.circular(14.r),
                                                          ),
                                                        ),
                                                        height: 45.h,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                            suffixIcon:
                                                                IconButton(
                                                              color:
                                                                  kWhiteColor,
                                                              icon: Icon(
                                                                color:
                                                                    kLogoutTextColor,
                                                                passwardvisible
                                                                    ? Icons
                                                                        .visibility_outlined
                                                                    : Icons
                                                                        .visibility_off_outlined,
                                                              ),
                                                              onPressed: () {
                                                                setState(
                                                                  () {
                                                                    passwardvisible =
                                                                        !passwardvisible;
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                          keyboardType:
                                                              TextInputType
                                                                  .visiblePassword,
                                                        ),
                                                      ),
                                                       SizedBox(
                                                          height: 15.h),
                                                      ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              kPrimaryColor,
                                                          fixedSize:  Size(
                                                              335.w, 60.h),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.r),
                                                          ),
                                                        ),
                                                        onPressed: () {},
                                                        child:  Text(
                                                          'Reset Password',
                                                          style: TextStyle(
                                                            fontSize: 18.sp,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: kWhiteColor,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            });
                                      },
                                      child:  Text(
                                        'Continue',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          color: kWhiteColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 29.h,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
