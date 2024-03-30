import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/app_paths.dart';

class MassageDoctorView extends StatelessWidget {
 TextEditingController massageController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios),onPressed: (){},),
        title: Row(
          children: [
            const Spacer(),
            Text("Doctor Name",style: GoogleFonts.poppins(
                fontSize : 22.sp,
                fontWeight : FontWeight.w600
            ),),
            const Spacer(),
            CircleAvatar(
              child: Image.asset(AppPaths.doctorImage,width: 60.w,height: 60.h,) ,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          const Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.h,horizontal: 26.w),
            color: kSecondaryColor,
              height: 95.h,
            child: Row(
              children: [
               Icon(Icons.sentiment_satisfied_alt,size: 36.sp,),
            Expanded(
              child: TextField(
                controller:massageController ,
                // textDirection: massageController.,
                decoration: InputDecoration(
                  hintText: "Type message",
                  hintStyle: GoogleFonts.poppins(
                    color:kLogoutTextColor,
                      fontSize : 16.sp,
                      fontWeight : FontWeight.w400,

                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent)
                  ),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)
                  ),
                  disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)
                  )
                ),
              ),
            ),
                CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  radius: 30.r,
                  child: Icon(Icons.send,color: kWhiteColor,size: 30.sp,),
                )
          ],),
          )
        ],
      ),
    );
  }
}
