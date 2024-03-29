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
              padding: EdgeInsets.only(top: 30, bottom: 15),
              child: Text(
                "Profile",
                style: TextStyle(
                  color: kLogoutTextColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CircleAvatar(
                radius: 66,
                backgroundColor: kPrimaryColor,
                child: Image.asset(AppPaths.logoutImage),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Text(
                "Ammar Ahmed",
                style: TextStyle(
                  color: kLogoutTextColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: 300,
              width: 388,
              decoration: const BoxDecoration(
                color: kLogoutConColor,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  const Text(
                    'See You Soon',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'You are about to logout.',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    ),
                  ),
                  const Text(
                    'Are you sure this is what',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    ),
                  ),
                  const Text(
                    'you want ?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 42),
                      const Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: kWhiteColor,
                        ),
                      ),
                      const SizedBox(width: 42),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Confirm logout',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: kLogoutTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 38),
                      Checkbox(
                        activeColor: kWhiteColor,
                        checkColor: kBlackColor,
                        value: true,
                        onChanged: (value) {},
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Logout from all devices',
                        style: TextStyle(
                          fontSize: 20,
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
