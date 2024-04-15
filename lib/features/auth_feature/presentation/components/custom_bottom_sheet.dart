import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  bool passwardvisible = true;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return InkWell(
      child:  Text(
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
            return SizedBox(
              height: 440.h,
              child: Padding(
                padding:  EdgeInsets.only(
                  top: 40.h,
                  left: 30.w,
                ),
                child: Column(
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
                    Padding(
                      padding:  EdgeInsets.only(
                        top: 15.h,
                        right: 30.w,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: kLogoutTextColor),
                          borderRadius: BorderRadius.all(
                            Radius.circular(14.r),
                          ),
                        ),
                        child:  TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Padding(
                              padding: EdgeInsets.only(left: 15.w),
                              child: Icon(
                                Icons.email_outlined,
                                color: kPrimaryColor,
                                size: 35.sp,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 40.h),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                          fixedSize:  Size(335.w, 60.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30.r),
                                ),
                              ),
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 600.h,
                                  width: double.infinity,
                                  child: Padding(
                                    padding:  EdgeInsets.only(
                                      top: 10.h,
                                      left: 30.w,
                                      right: 30.w,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                         Text(
                                          'Reset Password',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25.sp,
                                            fontFamily: 'Poppins',
                                            color: kLogoutTextColor,
                                          ),
                                        ),
                                         Text(
                                          'Enter the code you receive in mail and',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.sp,
                                            fontFamily: 'Poppins',
                                            color: kLogoutTextColor,
                                          ),
                                        ),
                                         Text(
                                          'set the new password for your',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.sp,
                                            fontFamily: 'Poppins',
                                            color: kLogoutTextColor,
                                          ),
                                        ),
                                         Text(
                                          'accountso you can login and access',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.sp,
                                            fontFamily: 'Poppins',
                                            color: kLogoutTextColor,
                                          ),
                                        ),
                                         Text(
                                          'all the features',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13.sp,
                                            fontFamily: 'Poppins',
                                            color: kLogoutTextColor,
                                          ),
                                        ),
                                        SizedBox(height: 10.h),
                                         Text(
                                          'Enter the 5 digits code',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.sp,
                                            fontFamily: 'Poppins',
                                            color: kLogoutTextColor,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: kLogoutTextColor),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(14.r),
                                            ),
                                          ),
                                          height: 45.h,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                height: 30.h,
                                                width: 30.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(8.r),
                                                  ),
                                                  color: kLogoutTextColor,
                                                ),
                                                child: TextField(
                                                  decoration:
                                                      const InputDecoration(
                                                          border:
                                                              InputBorder.none),
                                                  onChanged: (value) {
                                                    if (value.length == 1) {
                                                      FocusScope.of(context)
                                                          .nextFocus();
                                                    }
                                                  },
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  textAlign: TextAlign.center,
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
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(8.r),
                                                  ),
                                                  color: kLogoutTextColor,
                                                ),
                                                child: TextField(
                                                  decoration:
                                                      const InputDecoration(
                                                          border:
                                                              InputBorder.none),
                                                  onChanged: (value) {
                                                    if (value.length == 1) {
                                                      FocusScope.of(context)
                                                          .nextFocus();
                                                    }
                                                  },
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  textAlign: TextAlign.center,
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
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(8.r),
                                                  ),
                                                  color: kLogoutTextColor,
                                                ),
                                                child: TextField(
                                                  decoration:
                                                      const InputDecoration(
                                                          border:
                                                              InputBorder.none),
                                                  onChanged: (value) {
                                                    if (value.length == 1) {
                                                      FocusScope.of(context)
                                                          .nextFocus();
                                                    }
                                                  },
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  textAlign: TextAlign.center,
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
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(8.r),
                                                  ),
                                                  color: kLogoutTextColor,
                                                ),
                                                child: TextField(
                                                  decoration:
                                                      const InputDecoration(
                                                          border:
                                                              InputBorder.none),
                                                  onChanged: (value) {
                                                    if (value.length == 1) {
                                                      FocusScope.of(context)
                                                          .nextFocus();
                                                    }
                                                  },
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  textAlign: TextAlign.center,
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
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(8.r),
                                                  ),
                                                  color: kLogoutTextColor,
                                                ),
                                                child: TextField(
                                                  decoration:
                                                      const InputDecoration(
                                                          border:
                                                              InputBorder.none),
                                                  onChanged: (value) {
                                                    if (value.length == 1) {
                                                      FocusScope.of(context)
                                                          .nextFocus();
                                                    }
                                                  },
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  textAlign: TextAlign.center,
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
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.sp,
                                            fontFamily: 'Poppins',
                                            color: kLogoutTextColor,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: kLogoutTextColor),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(14.r),
                                            ),
                                          ),
                                          height: 45.h,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              suffixIcon: IconButton(
                                                color: kWhiteColor,
                                                icon: Icon(
                                                  color: kLogoutTextColor,
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
                                                TextInputType.visiblePassword,
                                          ),
                                        ),
                                         Text(
                                          'Confirm Password',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.sp,
                                            fontFamily: 'Poppins',
                                            color: kLogoutTextColor,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: kLogoutTextColor),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(14.r),
                                            ),
                                          ),
                                          height: 45.h,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              suffixIcon: IconButton(
                                                color: kWhiteColor,
                                                icon: Icon(
                                                  color: kLogoutTextColor,
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
                                                TextInputType.visiblePassword,
                                          ),
                                        ),
                                        SizedBox(height: 15.h),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: kPrimaryColor,
                                            fixedSize:  Size(335.w, 60.h),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.r),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child:  Text(
                                            'Reset Password',
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
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
