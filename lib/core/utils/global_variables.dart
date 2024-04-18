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
////----> global variables for http
String basUrl = "192.168.1.149:5000";

String token =
    "kokoz eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2MWU0N2U1YmMyMmU4OTMwNGY1YTRiZiIsImVtYWlsIjoiYWhzbjUwMDcxQGdtYWlsLmNvbSIsInJvbGUiOiJQYXRpZW50IiwiaWF0IjoxNzEzMjY2MzE4LCJleHAiOjE3MTg0NTAzMTh9.CTY6GG4oHZIqPibj4bP8G8Ana5mbl9RKonCbsCd_O6o";
