import 'package:flutter/material.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/features/auth_feature/presentation/login_view.dart';
import 'package:markiz_elamal_team_12/features/onboarding_feature/presentation/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
          child: const Text(
            'AR',
            style: TextStyle(
              fontSize: 18.0,
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
                  return const LoginView();
                }),
              );
            },
            child: const Text(
              'Skip',
              style: TextStyle(
                fontSize: 18.0,
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
