import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/global_variables.dart';
import 'package:markiz_elamal_team_12/features/onboarding_feature/data/models/on_boarding_model.dart';
import 'package:markiz_elamal_team_12/features/reservation_feature/presentation/reservation_view.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../home_view/presentation/views/homescreen.dart';

class OnBoardingItems extends StatelessWidget {
  const OnBoardingItems({super.key, required this.onBoardingModel});
  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          // flex: 5,
          child: Image.asset(
            onBoardingModel.onBoardingImg,
          ),
        ),
        Expanded(
          // flex: 4,
          child: Container(
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.0.r),
                topRight: Radius.circular(35.0.r),
              ),
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: 20.0.w,
                vertical: 40.0.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    onBoardingModel.onBoardingTitle,
                    style:  TextStyle(
                        fontSize: 24.0.sp,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor),
                  ),
                   SizedBox(
                    height: 30.0.h,
                  ),
                  // const Spacer(),
                  Text(
                    onBoardingModel.onBoardingSubTitle,
                    style:  TextStyle(
                        fontSize: 18.0.sp,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor),
                  ),
                  //  SizedBox(
                  //   height: 40.0.h,
                  // ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmoothPageIndicator(
                          controller: onBoardingController,
                          effect:  ExpandingDotsEffect(
                            dotColor: kSecondaryColor,
                            activeDotColor: kPrimaryColor,
                            dotHeight: 12.0.h,
                            dotWidth: 10.0.w,
                            spacing: 5.0.w,
                            expansionFactor: 4.0,
                          ),
                          count: items.length),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextButton.icon(
                          onPressed: () {
                            if (onBoardingIsLast) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return const HomeScreen();
                                }),
                              );
                            }
                            onBoardingController.nextPage(
                                duration: const Duration(milliseconds: 350),
                                curve: Curves.easeIn);
                          },
                          icon:  Icon(
                            Icons.arrow_back,
                            size: 32.sp,
                          ),
                          label:  Text(
                            'Next',
                            style: TextStyle(fontSize: 20.0.sp),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
