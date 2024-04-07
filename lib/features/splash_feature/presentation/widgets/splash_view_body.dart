import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/app_paths.dart';
import 'package:markiz_elamal_team_12/features/onboarding_feature/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideTextAnimate;

  @override
  void initState() {
    super.initState();

    //init Sliding Animation
    initSlidingAnimation();
    //to navigate to home screen after duration with animation
    navigateToOnBoardingView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppPaths.appLogo),
          // AnimatedBuilder to refresh widget
          AnimatedBuilder(
              animation: slideTextAnimate,
              builder: (context, _) {
                return SlideTransition(
                  position: slideTextAnimate,
                  child:  Text(
                    'Markiz ElAmal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0.sp,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }

//Method to navigate to home screen after duration with animation
  void navigateToOnBoardingView() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) {
            return const OnBoardingView();
          }),
        );
      },
    );
  }

//Method to init Sliding Animation
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    slideTextAnimate =
        Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}
