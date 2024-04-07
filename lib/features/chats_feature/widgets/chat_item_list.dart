import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/utils/app_paths.dart';

class ChatItemList extends StatelessWidget {
  const ChatItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 14.0.w,vertical: 28.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30.r),
            child: Image.asset(AppPaths.doctorImage,width: 80.w,height: 80.h,),
          ),
          
          SizedBox(
            width: 19.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Doctor Name ",style: GoogleFonts.poppins(
                  fontWeight:FontWeight.w600,
                  fontSize:20.sp
              ),),
              SizedBox(
                height: 11.h,
              ),
              Text("Massage ",style: GoogleFonts.poppins(
                  fontWeight:FontWeight.w500,
                  fontSize:20.sp
              ),),
            ],
          ),
          const Spacer(),
          Text("massage time ",style: GoogleFonts.poppins(
              fontWeight:FontWeight.w500,
              fontSize:13.sp

          ),),
        ],
      ),
    );
  }
}
