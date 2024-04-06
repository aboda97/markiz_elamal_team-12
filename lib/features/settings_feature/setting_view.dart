import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import 'widgets/settings_widget.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Details',style: TextStyle(
            color: kWhiteColor,
            fontSize: 24,
            fontWeight: FontWeight.w600
        ),),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon( Icons.arrow_back_ios,
              color: kWhiteColor,
              size: 30,),
          ),
        ),
        actions: [
          TextButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context){
            //   return EditProfileView();
            // }));
          },
              child: const Icon(Icons.settings_suggest_outlined,color: kWhiteColor,size: 35,))
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children:  [
            const SizedBox(height: 35,),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Account settings',style: TextStyle(
                color: kLogoutTextColor,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),),
            ),
            const SizedBox(height: 25,),
            Column(
              children: [
                settings_widget(
                  icon: Icons.person_outline,
                  title: 'Profile Information',
                  subTitle: 'Name, Email, Privacy',
                  iconColor: kProfileInfoIconColor, onTap: () {  },
                ),
                const SizedBox(height: 10,),
                settings_widget(
                  icon: Icons.privacy_tip_outlined,
                  title: 'Privacy',
                  subTitle: 'Control your privacy',
                  iconColor: kPrivacyIconColor, onTap: () {  },
                ),
                const SizedBox(height: 10,),
                settings_widget(
                  icon: Icons.lock_outline_rounded,
                  title: 'Change Password',
                  subTitle: 'Change your current password',
                  iconColor: kProfileInfoIconColor, onTap: () {  },
                ),
                const SizedBox(height: 10,),
              ],
            ),
            const SizedBox(height: 30,),
            const Divider(color: kSecondaryColor,),
            const SizedBox(height: 25,),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('General',style: TextStyle(
                color: kLogoutTextColor,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),),
            ),
            Column(
              children: [
                settings_widget(
                  icon: Icons.favorite_border_outlined,
                  title: 'Rata our App',
                  subTitle: 'Rate & Review us',
                  iconColor: kRateIconColor, onTap: () {  },
                ),
                const SizedBox(height: 10,),
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


