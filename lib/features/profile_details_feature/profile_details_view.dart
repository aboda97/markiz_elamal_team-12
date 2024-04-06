import 'package:flutter/material.dart';
import 'package:markiz_elamal/core/utils/app_colors.dart';

import '../edit_profile_feature/edit_profile_view.dart';
import 'widgets/profile_details_widget.dart';

class ProfileDetailsView extends StatelessWidget {
  const ProfileDetailsView({Key? key}) : super(key: key);

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
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return EditProfileView();
            }));
          },
              child: const Text('Edit',style: TextStyle(
            color: kWhiteColor,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),))
        ],
      ),
      body: Padding(
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
            Column(
              children: [
                ProfileDetailsWidget(title: 'Full Name', content: 'Ammar Ahmed'),
                const SizedBox(height: 25,),
                ProfileDetailsWidget(title: 'Phone number', content: '01078654434'),
                const SizedBox(height: 25,),
                ProfileDetailsWidget(title: 'Email', content: 'ammar21@gmail.com'),

              ],
            ),

          ],
        ),
      ),


    );
  }
}
