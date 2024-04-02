import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/app_paths.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool passwardvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 30, bottom: 200),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Let\'s Start with',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'sign up',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 514,
                    decoration: const BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70),
                        topLeft: Radius.circular(70),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 15,
                        left: 70,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Have alreadyan account?',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 8),
                          InkWell(
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                color: kLogoutTextColor,
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 65,
              left: 35,
              child: Container(
                width: 325,
                height: 585,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 8,
                    color: kWhiteColor,
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        AppPaths.appLogo,
                        height: 85,
                        width: 65,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Markaz ElAma',
                        style: TextStyle(
                          color: kWhiteColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          fontFamily: 'Peralta',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          right: 15,
                          left: 15,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(
                                  CupertinoIcons.person_crop_circle,
                                  color: kWhiteColor,
                                  size: 35,
                                ),
                              ),
                              hintText: 'Name',
                              hintStyle: TextStyle(
                                color: kWhiteColor,
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          right: 15,
                          left: 15,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(
                                  CupertinoIcons.phone,
                                  color: kWhiteColor,
                                  size: 35,
                                ),
                              ),
                              hintText: 'Phone number',
                              hintStyle: TextStyle(
                                color: kWhiteColor,
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          right: 15,
                          left: 15,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.email_outlined,
                                  color: kWhiteColor,
                                  size: 35,
                                ),
                              ),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                color: kWhiteColor,
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          right: 15,
                          left: 15,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.lock_outline_rounded,
                                  color: kWhiteColor,
                                  size: 35,
                                ),
                              ),
                              hintText: '   Passward',
                              hintStyle: const TextStyle(
                                color: kWhiteColor,
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                              suffixIcon: IconButton(
                                color: kWhiteColor,
                                icon: Icon(passwardvisible
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined),
                                onPressed: () {
                                  setState(
                                    () {
                                      passwardvisible = !passwardvisible;
                                    },
                                  );
                                },
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          right: 15,
                          left: 15,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kWhiteColor),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.lock_outline_rounded,
                                  color: kWhiteColor,
                                  size: 35,
                                ),
                              ),
                              hintText: 'Confirm passward',
                              hintStyle: const TextStyle(
                                color: kWhiteColor,
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                              suffixIcon: IconButton(
                                color: kWhiteColor,
                                icon: Icon(passwardvisible
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined),
                                onPressed: () {
                                  setState(
                                    () {
                                      passwardvisible = !passwardvisible;
                                    },
                                  );
                                },
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(255, 45),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor,
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                ),
                                actions: [
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: SizedBox(
                                        width: 700,
                                        height: 288,
                                        child: Column(
                                          children: [
                                            const Text(
                                              'The code has been send',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                color: kLogoutTextColor,
                                              ),
                                            ),
                                            const Text(
                                              'to your mail',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                                color: kLogoutTextColor,
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                top: 25,
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Enter Code',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: kLogoutTextColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: kLogoutTextColor),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(14),
                                                ),
                                              ),
                                              height: 65,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(8),
                                                      ),
                                                      color: kSecondaryColor,
                                                    ),
                                                    child: TextField(
                                                      decoration:
                                                          const InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                      onChanged: (value) {
                                                        if (value.length == 1) {
                                                          FocusScope.of(context)
                                                              .nextFocus();
                                                        }
                                                      },
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headlineMedium,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      textAlign:
                                                          TextAlign.center,
                                                      inputFormatters: [
                                                        LengthLimitingTextInputFormatter(
                                                            1),
                                                        FilteringTextInputFormatter
                                                            .digitsOnly,
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(8),
                                                      ),
                                                      color: kSecondaryColor,
                                                    ),
                                                    child: TextField(
                                                      decoration:
                                                          const InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                      onChanged: (value) {
                                                        if (value.length == 1) {
                                                          FocusScope.of(context)
                                                              .nextFocus();
                                                        }
                                                      },
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headlineMedium,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      textAlign:
                                                          TextAlign.center,
                                                      inputFormatters: [
                                                        LengthLimitingTextInputFormatter(
                                                            1),
                                                        FilteringTextInputFormatter
                                                            .digitsOnly,
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(8),
                                                      ),
                                                      color: kSecondaryColor,
                                                    ),
                                                    child: TextField(
                                                      decoration:
                                                          const InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                      onChanged: (value) {
                                                        if (value.length == 1) {
                                                          FocusScope.of(context)
                                                              .nextFocus();
                                                        }
                                                      },
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headlineMedium,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      textAlign:
                                                          TextAlign.center,
                                                      inputFormatters: [
                                                        LengthLimitingTextInputFormatter(
                                                            1),
                                                        FilteringTextInputFormatter
                                                            .digitsOnly,
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(8),
                                                      ),
                                                      color: kSecondaryColor,
                                                    ),
                                                    child: TextField(
                                                      decoration:
                                                          const InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                      onChanged: (value) {
                                                        if (value.length == 1) {
                                                          FocusScope.of(context)
                                                              .nextFocus();
                                                        }
                                                      },
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headlineMedium,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      textAlign:
                                                          TextAlign.center,
                                                      inputFormatters: [
                                                        LengthLimitingTextInputFormatter(
                                                            1),
                                                        FilteringTextInputFormatter
                                                            .digitsOnly,
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(8),
                                                      ),
                                                      color: kSecondaryColor,
                                                    ),
                                                    child: TextField(
                                                      decoration:
                                                          const InputDecoration(
                                                              border:
                                                                  InputBorder
                                                                      .none),
                                                      onChanged: (value) {
                                                        if (value.length == 1) {
                                                          FocusScope.of(context)
                                                              .nextFocus();
                                                        }
                                                      },
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headlineMedium,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      textAlign:
                                                          TextAlign.center,
                                                      inputFormatters: [
                                                        LengthLimitingTextInputFormatter(
                                                            1),
                                                        FilteringTextInputFormatter
                                                            .digitsOnly,
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Row(
                                              children: [
                                                Text(
                                                  'Time Reminig 0:00',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Poppins',
                                                    color: kSecondaryColor,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                SizedBox(width: 40),
                                                Text(
                                                  'Resend Code',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Poppins',
                                                    color: kPrimaryColor,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 50),
                                            InkWell(
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    'Done',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: 'Poppins',
                                                      color: kLogoutTextColor,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_outlined,
                                                    color: kLogoutTextColor,
                                                    size: 35,
                                                  )
                                                ],
                                              ),
                                              onTap: () {},
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// const AlertDialog(
// shape:
// RoundedRectangleBorder(
// borderRadius:
// BorderRadius.all(
// Radius.circular(16),
// ),
// ),
// content:
// Text(
// 'AppText.passwordreset',
// textAlign:
// TextAlign.center,
// style:
// TextStyle(fontSize: 13),
// ),
// );
