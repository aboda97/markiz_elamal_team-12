import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_paths.dart';

class PopularDoctorCard extends StatelessWidget {
  const PopularDoctorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
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
              child: Image.asset(AppPaths.popularDoctorImage,height: 113,width: 94,),
            ),
            const Text(
              'Dr. Mohamed saad',
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              '5 Years Experiece',
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: 10.0,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star_rate,
                  color: kRateColor,
                  size: 15.0,
                ),
                Icon(
                  Icons.star_rate,
                  color: kRateColor,
                  size: 15.0,
                ),
                Icon(
                  Icons.star_rate,
                  color: kWhiteColor,
                  size: 15.0,
                ),
                Icon(
                  Icons.star_rate,
                  color: kWhiteColor,
                  size: 15.0,
                ),
                Icon(
                  Icons.star_rate,
                  color: kWhiteColor,
                  size: 15.0,
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}