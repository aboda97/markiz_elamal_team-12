import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markiz_elamal_team_12/core/utils/global_variables.dart';
import 'package:markiz_elamal_team_12/features/onboarding_feature/presentation/widgets/on_boarding_items.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return PageView.builder(
      controller: onBoardingController,
      itemBuilder: (context, index) => OnBoardingItems(
        onBoardingModel: items[index],
      ),
      onPageChanged: (int index) {
        if (index == items.length - 1) {
          setState(() {
            onBoardingIsLast = true;
          });
        } else {
          setState(() {
            onBoardingIsLast = false;
          });
        }
      },
      itemCount: items.length,
    );
  }
}
