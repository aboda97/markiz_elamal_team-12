import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:markiz_elamal_team_12/core/utils/global_variables.dart';
import 'package:markiz_elamal_team_12/features/edit_profile_feature/cubit/edit_profile_cubit.dart';
import 'package:markiz_elamal_team_12/features/edit_profile_feature/models/UpdateProfileRequest.dart';

import '../../../../core/utils/app_colors.dart';
import 'widgets/edit_profile_widget.dart';

class EditProfileView extends StatefulWidget {
  EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  late TextEditingController nameController;

  late TextEditingController phoneController ;

  late TextEditingController emailController ;
@override
  void initState() {
  nameController=TextEditingController();
  phoneController=TextEditingController();
  emailController= TextEditingController();
  super.initState();
  }
  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return BlocProvider(
      create: (context) =>
          EditProfileCubit()..getProfileData(JwtDecoder.decode(token)["id"]),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Edit Profile',
            style: TextStyle(
                color: kWhiteColor,
                fontSize: 24.sp,
                fontWeight: FontWeight.w600),
          ),
          leading: Padding(
            padding: EdgeInsets.only(left: 20.0.w),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: kWhiteColor,
                size: 30.sp,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: BlocConsumer<EditProfileCubit, EditProfileState>(
            listener: (BuildContext context, EditProfileState state) {
              if (state is UpDateProfileDataSuccessState) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    state.updateProfileResponse.message ?? "",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: "Poppins",
                    ),
                  ),
                  backgroundColor: Colors.green,
                ));
                EditProfileCubit.get(context).getProfileData(
                    state.updateProfileResponse.updatedUser?.id ?? "");
              } else if (state is UpDateProfileDataErrorState) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    state.failures.massage,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: "Poppins",
                    ),
                  ),
                  backgroundColor: Colors.red,
                ));
              }
            },
            builder: (context, state) {
              print(state);
              if (state is GetProfileDataLoadingState||state is UpDateProfileDataLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: kPrimaryColor,
                  ),
                );
              } else if (state is GetProfileDataSuccessState) {
                if (nameController.text.isEmpty) {
                  nameController.value = TextEditingValue(
                      text: state.patientProfileResponse.users?.name ?? "");
                }
                if (phoneController.text.isEmpty) {
                  phoneController.value = TextEditingValue(
                      text: state.patientProfileResponse.users?.phone ?? "");
                }
                if (emailController.text.isEmpty) {
                  emailController.value = TextEditingValue(
                      text: state.patientProfileResponse.users?.email ?? "");
                }
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          backgroundColor: kPrimaryColor,
                          radius: 60.r,
                          child: Icon(
                            Icons.person_outline_outlined,
                            color: kWhiteColor,
                            size: 70.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      EditProfileWidget(
                        keyboardType: TextInputType.name,
                        title: 'Full Name',
                        // currentValue: state.patientProfileResponse.users?.name??"",
                        controller: nameController,
                        prefix: Icons.person_outline_outlined,
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      EditProfileWidget(
                        keyboardType: TextInputType.number,
                        title: 'Phone number',
                        // currentValue: state.patientProfileResponse.users?.phone??"",
                        controller: phoneController,
                        prefix: Icons.person_outline_outlined,
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      EditProfileWidget(
                        keyboardType: TextInputType.emailAddress,
                        title: 'Email',
                        // currentValue: state.patientProfileResponse.users?.email??"",
                        controller: emailController,
                        prefix: Icons.email_outlined,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            UpDateProfileRequest upDateProfileRequest =
                                UpDateProfileRequest(
                                    name: nameController.text,
                                    phone: phoneController.text);
                            print('''
                            ${nameController.text},
                            ${phoneController.text},
                            ${emailController.text},
                            ''');
                            EditProfileCubit.get(context).upDateProfile(
                                id: JwtDecoder.decode(token)["id"],
                                data: upDateProfileRequest.toJson());
                            nameController.clear();
                            phoneController.clear();
                            emailController.clear();

                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.r)),
                              backgroundColor: kPrimaryColor,
                              padding: EdgeInsets.symmetric(vertical: 15.h)),
                          child: Text(
                            "Save",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 22.sp,
                                color: kWhiteColor),
                          ))
                    ],
                  ),
                );
              } else {
                return const Text("data");
              }
            },
          ),
        ),
      ),
    );
  }
}
