import 'package:flutter/material.dart';
import 'package:markiz_elamal/core/utils/app_colors.dart';
import 'package:markiz_elamal/core/utils/app_paths.dart';

import '../../profile_details_feature/profile_details_view.dart';
import '../../settings_feature/setting_view.dart';
import 'widgets/profile_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(

              children: [
                //////////// profile ,picture & name /////////////////////////////
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     // SizedBox(height: 30,),
                      const Text('Profile',style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: kLogoutTextColor,
                      ),),
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: kPrimaryColor,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(AppPaths.profileImage),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Ammar Ahmed',style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: kLogoutTextColor,
                      ),),
                      const SizedBox(
                        height: 20,
                      ),

                    ],
                  ),
                ),
                Column(
                  children: [
                    ProfileWidget(icon: Icons.restore_rounded, title: 'History', onTap: () {  },),
                    const SizedBox(height: 20,),
                    ProfileWidget(icon: Icons.person_outline, title: 'Profile Detailes', onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const ProfileDetailsView();
                      }));
                    },),
                    const SizedBox(height: 20,),
                    ProfileWidget(icon: Icons.chat_bubble_outline, title: 'Chats', onTap: () {  },),
                    const SizedBox(height: 20,),
                    ProfileWidget(icon: Icons.settings_suggest_outlined, title: 'Settings', onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const SettingView();
                      }));
                    },),
                    const SizedBox(height: 20,),
                    ProfileWidget(icon: Icons.help_outline, title: 'Help', onTap: () {  },),
                    const SizedBox(height: 20,),
                    ProfileWidget(icon: Icons.logout_outlined, title: 'Logout', onTap: () {  },),
                  ],
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}


