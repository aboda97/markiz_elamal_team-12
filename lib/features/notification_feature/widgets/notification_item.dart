import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/app_paths.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 14.0.w,vertical: 28.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30.r),
            child: Image.asset(AppPaths.doctorImage,width: 60.w,height:60.h,),
          ),
          SizedBox(
            width: 19.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Notification details ",style: GoogleFonts.poppins(
                  fontWeight:FontWeight.w500,
                  fontSize:14.sp
              ),),
              SizedBox(
                height: 11.h,
              ),
              Text("Notification time",style: GoogleFonts.poppins(
                  fontWeight:FontWeight.w500,
                  fontSize:13.sp
              ),),
            ],
          ),
        ],
      ),
    );
  }
}
