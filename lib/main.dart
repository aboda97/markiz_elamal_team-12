import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/features/splash_feature/presentation/splash_view.dart';

import 'features/massage_doctor_feature/massage_doctore_view.dart';
import 'features/pyment_methods_feature/pyment_method_view.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Markiz Elamal',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
          useMaterial3: true,
          ////----> AppBar Theme
          appBarTheme: const AppBarTheme(
            backgroundColor: kPrimaryColor,
            centerTitle: true,
            elevation: 0,
            foregroundColor: kWhiteColor,
            iconTheme: IconThemeData(
              color: kWhiteColor,
            ),
          ),
        ),
        home:   MassageDoctorView(),
      ),
    );
  }
}
