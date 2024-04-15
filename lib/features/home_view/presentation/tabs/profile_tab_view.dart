import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markiz_elamal_team_12/features/chats_feature/chats_view.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_paths.dart';
import '../../../logout_feature/presentation/logout_view.dart';
import '../../../profile_details_feature/profile_details_view.dart';
import '../../../settings_feature/setting_view.dart';
import '../widgets/profile_widget.dart';

class ProfileTabView extends StatelessWidget {
  const ProfileTabView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 20.w),
          child: Column(
            children: [
              //////////// profile ,picture & name /////////////////////////////
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // SizedBox(height: 30,),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700,
                        color: kLogoutTextColor,
                      ),
                    ),
                    CircleAvatar(
                      radius: 60.r,
                      backgroundColor: kPrimaryColor,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0.h, horizontal: 10.w),
                        child: Image.asset(AppPaths.profileImage),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Ammar Ahmed',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: kLogoutTextColor,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  ProfileWidget(
                    icon: Icons.restore_rounded,
                    title: 'History',
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ProfileWidget(
                    icon: Icons.person_outline,
                    title: 'Profile Details',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const ProfileDetailsView();
                          }));
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ProfileWidget(
                    icon: Icons.chat_bubble_outline,
                    title: 'Chats',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const ChatsView(),));
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ProfileWidget(
                    icon: Icons.settings_suggest_outlined,
                    title: 'Settings',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return const SettingView();
                          }));
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ProfileWidget(
                    icon: Icons.help_outline,
                    title: 'Help',
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ProfileWidget(
                    icon: Icons.logout_outlined,
                    title: 'Logout',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => LogoutView(),));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
