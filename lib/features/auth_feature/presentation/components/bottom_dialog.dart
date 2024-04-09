import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';

class BottomDialog extends StatefulWidget {
  const BottomDialog({super.key});

  @override
  State<BottomDialog> createState() => _BottomDialogState();
}

class _BottomDialogState extends State<BottomDialog> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize:  Size(255.w, 45.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      child:  Text(
        'Sign Up',
        style: TextStyle(
          fontSize: 18.sp,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          color: kPrimaryColor,
        ),
      ),
      onPressed: () {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.r),
                ),
              ),
              actions: [
                Center(
                  child: Padding(
                    padding:  EdgeInsets.only(top: 40.h),
                    child: SizedBox(
                      width: 700.w,
                      height: 310.h,
                      child: Column(
                        children: [
                           Text(
                            'The code has been send',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: kLogoutTextColor,
                            ),
                          ),
                           Text(
                            'to your mail',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: kLogoutTextColor,
                            ),
                          ),
                           Padding(
                            padding: EdgeInsets.only(
                              top: 25.h,
                              bottom: 10.h,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Enter Code',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: kLogoutTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: kLogoutTextColor),
                              borderRadius: BorderRadius.all(
                                Radius.circular(14.r),
                              ),
                            ),
                            height: 65.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 30.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8.r),
                                    ),
                                    color: kSecondaryColor,
                                  ),
                                  child: TextField(
                                    decoration: const InputDecoration(
                                        border: InputBorder.none),
                                    onChanged: (value) {
                                      if (value.length == 1) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                    },
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 30.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8.r),
                                    ),
                                    color: kSecondaryColor,
                                  ),
                                  child: TextField(
                                    decoration: const InputDecoration(
                                        border: InputBorder.none),
                                    onChanged: (value) {
                                      if (value.length == 1) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                    },
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 30.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8.r),
                                    ),
                                    color: kSecondaryColor,
                                  ),
                                  child: TextField(
                                    decoration: const InputDecoration(
                                        border: InputBorder.none),
                                    onChanged: (value) {
                                      if (value.length == 1) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                    },
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 30.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8.r),
                                    ),
                                    color: kSecondaryColor,
                                  ),
                                  child: TextField(
                                    decoration: const InputDecoration(
                                        border: InputBorder.none),
                                    onChanged: (value) {
                                      if (value.length == 1) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                    },
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 30.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8.r),
                                    ),
                                    color: kSecondaryColor,
                                  ),
                                  child: TextField(
                                    decoration: const InputDecoration(
                                        border: InputBorder.none),
                                    onChanged: (value) {
                                      if (value.length == 1) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                    },
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                               Text(
                                'Time Reminig 0:00',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  color: kSecondaryColor,
                                  fontSize: 10.sp,
                                ),
                              ),
                              SizedBox(width: 40.w),
                               Text(
                                'Resend Code',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  color: kPrimaryColor,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 50.h),
                          InkWell(
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Done',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                    color: kLogoutTextColor,
                                    fontSize: 20.sp,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_outlined,
                                  color: kLogoutTextColor,
                                  size: 35.sp,
                                )
                              ],
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
