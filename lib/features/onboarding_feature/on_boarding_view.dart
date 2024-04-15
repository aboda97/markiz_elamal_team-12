import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/features/home_view/presentation/views/homescreen.dart';
import 'package:markiz_elamal_team_12/features/onboarding_feature/presentation/widgets/on_boarding_view_body.dart';
import 'package:markiz_elamal_team_12/features/reservation_feature/presentation/reservation_view.dart';

import '../auth_feature/presentation/sign_in_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
          child:  Text(
            'AR',
            style: TextStyle(
              fontSize: 18.0.sp,
              color: kWhiteColor,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) {
                  return const SignInView();
                }),
              );
            },
            child:  Text(
              'Skip',
              style: TextStyle(
                fontSize: 18.0.sp,
                color: kWhiteColor,
              ),
            ),
          ),
        ],
      ),
      body: const OnBoardingViewBody(),
    );
  }
}
