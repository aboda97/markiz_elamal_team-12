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
    return InkWell(
      child: const Text(
        'Forgot password ?',
        style: TextStyle(
          fontSize: 12,
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
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          color: kLogoutTextColor,
                        ),
                      ),
                    ),
                    const Text(
                      'Enter your email for verification process we',
                      style: TextStyle(
                        fontSize: 12,
                        color: kLogoutTextColor,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      'will send 5 digits code to your email',
                      style: TextStyle(
                        fontSize: 12,
                        color: kLogoutTextColor,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 22,
                              color: kLogoutTextColor,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        right: 30,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: kLogoutTextColor),
                          borderRadius: BorderRadius.all(
                            Radius.circular(14.r),
                          ),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Icon(
                                Icons.email_outlined,
                                color: kPrimaryColor,
                                size: 35,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                          fixedSize: const Size(335, 60),
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
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 30,
                                      right: 30,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Reset Password',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25,
                                            fontFamily: 'Poppins',
                                            color: kLogoutTextColor,
                                          ),
                                        ),
                                        const Text(
                                          'Enter the code you receive in mail and',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                            color: kLogoutTextColor,
                                          ),
                                        ),
                                        const Text(
                                          'set the new password for your',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                            color: kLogoutTextColor,
                                          ),
                                        ),
                                        const Text(
                                          'accountso you can login and access',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                            color: kLogoutTextColor,
                                          ),
                                        ),
                                        const Text(
                                          'all the features',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            fontFamily: 'Poppins',
                                            color: kLogoutTextColor,
                                          ),
                                        ),
                                        SizedBox(height: 10.h),
                                        const Text(
                                          'Enter the 5 digits code',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
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
                                        const Text(
                                          'Password',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
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
                                        const Text(
                                          'Confirm Password',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
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
                                            fixedSize: const Size(335, 60),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.r),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: const Text(
                                            'Reset Password',
                                            style: TextStyle(
                                              fontSize: 18,
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
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 18,
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
