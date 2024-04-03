import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_paths.dart';

class BookDoctorCard extends StatelessWidget {
  const BookDoctorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.0,
        ),
        color: kPrimaryColor,
      ),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: kWhiteColor,
                ),
              ),
              child: Image.asset(AppPaths.availableDoctorImage),
            ),
            const Text(
              'Dr. Osama Ali',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Speech',
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: 18.0,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: kWhiteColor)),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '4.9',
                    style: TextStyle(
                      color: kWhiteColor,
                    ),
                  ),
                  Icon(
                    Icons.star_rate,
                    color: kRateColor,
                    size: 18.0,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
