import 'package:flutter/material.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/app_paths.dart';

class LogoutViewBody extends StatefulWidget {
  const LogoutViewBody({super.key});

  @override
  State<LogoutViewBody> createState() => _LogoutViewBodyState();
}

class _LogoutViewBodyState extends State<LogoutViewBody> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 60, bottom: 15),
              child: Text(
                "Profile",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: kLogoutTextColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CircleAvatar(
                radius: 66,
                backgroundColor: kPrimaryColor,
                child: Image.asset(
                  AppPaths.logoutImage,
                  height: 99,
                  width: 106,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Text(
                "Ammar Ahmed",
                style: TextStyle(
                  color: kLogoutTextColor,
                  fontFamily: 'Poppins',
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: 370,
              width: 360,

              decoration: const BoxDecoration(
                color: kLogoutConColor,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 45),
                  const Text(
                    'See You Soon',
                    style: TextStyle(
                      fontFamily: 'OleoScriptSwashCaps',
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'You are about to logout.',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    ),
                  ),
                  const Text(
                    'Are you sure this is what',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    ),
                  ),
                  const Text(
                    'you want ?',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 28),
                      const Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          color: kWhiteColor,
                        ),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(213, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Confirm logout',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: kLogoutTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: [
                      const SizedBox(width: 16),
                      Checkbox(
                        activeColor: kWhiteColor,
                        checkColor: kBlackColor,
                        value: true,
                        onChanged: (value) {},
                      ),
                      const Text(
                        'Logout from all devices',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: kWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
