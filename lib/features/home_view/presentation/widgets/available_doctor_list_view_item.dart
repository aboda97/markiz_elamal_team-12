import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/app_paths.dart';

class AvailableDoctorListViewItem extends StatelessWidget {
  const AvailableDoctorListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return Container(
      margin:  EdgeInsets.only(bottom: 20.0.h),
      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.0.r,
        ),
        color: kPrimaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
          Image.asset(
            AppPaths.availableDoctorImage,
          ),
        ],
      ),
    );
  }
}
