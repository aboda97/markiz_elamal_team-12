import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/app_paths.dart';

class AvailableDoctorGridViewItem extends StatelessWidget {
  const AvailableDoctorGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.0.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.0.r,
        ),
        color: kPrimaryColor,
      ),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: kWhiteColor,
                ),
              ),
              child: Image.asset(AppPaths.availableDoctorImage),
            ),
             Text(
              'Dr. Osama Ali',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 20.0.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
             Text(
              'Speech',
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: 18.0.sp,
              ),
            ),
            Container(
              margin:  EdgeInsets.only(top: 10.0.h),
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0.r),
                  border: Border.all(color: kWhiteColor)),
              child:  Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    '4.9',
                    style: TextStyle(
                      color: kWhiteColor,
                    ),
                  ),
                  Icon(
                    Icons.star_rate,
                    color: kRateColor,
                    size: 18.0.sp,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
