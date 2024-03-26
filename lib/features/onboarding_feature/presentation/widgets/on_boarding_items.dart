import 'package:flutter/material.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/global_variables.dart';
import 'package:markiz_elamal_team_12/features/auth_feature/presentation/login_view.dart';
import 'package:markiz_elamal_team_12/features/onboarding_feature/data/models/on_boarding_model.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingItems extends StatelessWidget {
  const OnBoardingItems({super.key, required this.onBoardingModel});
  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Image.asset(
            onBoardingModel.onBoardingImg,
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.0),
                topRight: Radius.circular(35.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 40.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    onBoardingModel.onBoardingTitle,
                    style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    onBoardingModel.onBoardingSubTitle,
                    style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: kPrimaryColor),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmoothPageIndicator(
                          controller: onBoardingController,
                          effect: const ExpandingDotsEffect(
                            dotColor: kSecondaryColor,
                            activeDotColor: kPrimaryColor,
                            dotHeight: 12.0,
                            dotWidth: 10.0,
                            spacing: 5.0,
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
                                  return const LoginView();
                                }),
                              );
                            }
                            onBoardingController.nextPage(
                                duration: const Duration(milliseconds: 350),
                                curve: Curves.easeIn);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 32,
                          ),
                          label: const Text(
                            'Next',
                            style: TextStyle(fontSize: 20.0),
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
