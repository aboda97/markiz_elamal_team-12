import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../edit_profile_feature/edit_profile_view.dart';
import 'widgets/settings_widget.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return Scaffold(
      appBar: AppBar(
        title:  Text('Profile Details',style: TextStyle(
            color: kWhiteColor,
            fontSize: 24.sp,
            fontWeight: FontWeight.w600
        ),),
        leading: Padding(
          padding:  EdgeInsets.only(left: 20.0.w),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:  Icon( Icons.arrow_back_ios,
              color: kWhiteColor,
              size: 30.sp,),
          ),
        ),
        actions: [
          TextButton(onPressed: (){
          },
              child:  Icon(Icons.settings_suggest_outlined,color: kWhiteColor,size: 35.sp,))
        ],
      ),
      body:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
        child: ListView(
          children:  [
             SizedBox(height: 35.h,),
             Align(
              alignment: Alignment.centerLeft,
              child: Text('Account settings',style: TextStyle(
                color: kLogoutTextColor,
                fontWeight: FontWeight.w700,
                fontSize: 20.sp,
              ),),
            ),
             SizedBox(height: 25.h,),
            Column(
              children: [
                settings_widget(
                  icon: Icons.person_outline,
                  title: 'Profile Information',
                  subTitle: 'Name, Email, Privacy',
                  iconColor: kProfileInfoIconColor, onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return EditProfileView();
                  }));
                },
                ),
                 SizedBox(height: 10.h,),
                settings_widget(
                  icon: Icons.privacy_tip_outlined,
                  title: 'Privacy',
                  subTitle: 'Control your privacy',
                  iconColor: kPrivacyIconColor, onTap: () {  },
                ),
                 SizedBox(height: 10.h,),
                settings_widget(
                  icon: Icons.lock_outline_rounded,
                  title: 'Change Password',
                  subTitle: 'Change your current password',
                  iconColor: kProfileInfoIconColor, onTap: () {  },
                ),
                 SizedBox(height: 10.h,),
              ],
            ),
             SizedBox(height: 30.h,),
            const Divider(color: kSecondaryColor,),
             SizedBox(height: 25.h,),
             Align(
              alignment: Alignment.centerLeft,
              child: Text('General',style: TextStyle(
                color: kLogoutTextColor,
                fontWeight: FontWeight.w700,
                fontSize: 20.sp,
              ),),
            ),
            SizedBox(height: 25.h,),
            Column(
              children: [
                settings_widget(
                  icon: Icons.favorite_border_outlined,
                  title: 'Rate our App',
                  subTitle: 'Rate & Review us',
                  iconColor: kRateIconColor, onTap: () {  },
                ),
                 SizedBox(height: 10.h,),
                settings_widget(
                  icon: Icons.mail_outline_rounded,
                  title: 'Send Feedback',
                  subTitle: 'Share your thought',
                  iconColor: kRateColor, onTap: () {  },
                ),

              ],
            ),
          ],
        ),
      ),

    );
  }
}


