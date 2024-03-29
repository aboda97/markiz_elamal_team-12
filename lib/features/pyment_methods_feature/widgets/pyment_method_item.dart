import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_paths.dart';

class PaymentMethodItem extends StatelessWidget {
  String logoLink;
  String paymentMethodTitle;
  bool isSelected;

  PaymentMethodItem(
      {required this.logoLink,
      required this.isSelected,
      required this.paymentMethodTitle,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        (isSelected)
            ? TweenAnimationBuilder(
                duration: const Duration(milliseconds: 250),
                tween: Tween<double>(begin: 0, end: 20.h),
                builder: (context, value, child) => SizedBox(
                  height: value * 2,
                  child: Text("Current Method",
                      style: GoogleFonts.poppins(
                        color: kSecondaryColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              )
            : TweenAnimationBuilder(
                tween: Tween<double>(begin: 20.h, end: 0),
                duration: const Duration(milliseconds: 250),
                builder: (BuildContext context, double value, Widget? child) =>
                    SizedBox(
                  height: value * 2,
                ),
              ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 13.w),
          decoration: BoxDecoration(
              border: Border.all(color: kPrimaryColor, width: 2),
              borderRadius: BorderRadius.circular(16.r)),
          child: Row(
            children: [
              Image.asset(
                logoLink,
                width: 70.w,
                height: 42.h,
              ),
              SizedBox(
                width: 18.w,
              ),
              Text(paymentMethodTitle,
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  )),
              const Spacer(),
              (isSelected)
                  ? Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(12.r)),
                      child: const Icon(
                        Icons.done,
                        color: kWhiteColor,
                      ),
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ],
    );
  }
}
