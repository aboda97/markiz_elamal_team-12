import 'package:flutter/material.dart';
import 'package:markiz_elamal_team_12/features/onboarding_feature/data/models/on_boarding_model.dart';

////----> GLOBAL VARIABLES ABOUT ONBOARDING
var onBoardingController = PageController();
List<OnBoardingModel> items = [
  OnBoardingModel(
    onBoardingImg: 'assets/images/doctor logo.png',
    onBoardingTitle: 'Choose your doctor',
    onBoardingSubTitle:
        'Application provide you with alot of experienced doctors you can see these profile and choose one you want to appointment with him.',
  ),
  OnBoardingModel(
    onBoardingImg: 'assets/images/date logo.png',
    onBoardingTitle: 'Choose date and time',
    onBoardingSubTitle:
        'The application can help you choose the appropriate date and time for you and the selected doctor.',
  ),
  OnBoardingModel(
    onBoardingImg: 'assets/images/doctor logo.png',
    onBoardingTitle: 'Communicate with your doctor',
    onBoardingSubTitle:
        'Once you access the profile of doctor you selected you can communicate with him and send any message ',
  ),
];
bool onBoardingIsLast = false;
////----> FINISH THOSE VARIABLES
