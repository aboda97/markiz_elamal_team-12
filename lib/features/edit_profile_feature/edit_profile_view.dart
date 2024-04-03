import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import 'widgets/edit_profile_widget.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile',style: TextStyle(
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
        
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 30,),
              const Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  radius: 60,
                  child: Icon(Icons.person_outline_outlined,color: kWhiteColor,size: 70,),
                ),
              ),
              const SizedBox(height: 40,),
              EditProfileWidget(title: 'Full Name', text: 'Ammar Ahmed', prefix: Icons.person_outline_outlined,),
              const SizedBox(height: 15,),
              EditProfileWidget(title: 'Phone number', text: '01078654434', prefix: Icons.person_outline_outlined,),
              const SizedBox(height: 15,),
              EditProfileWidget(title: 'Email', text: 'ammar21@gmail.com', prefix: Icons.email_outlined,),
            ],
          ),
        ),
      ),
    );
  }
}


