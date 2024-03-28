import 'package:flutter/material.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/app_paths.dart';

class AvailableDoctorListViewItem extends StatelessWidget {
  const AvailableDoctorListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.0,
        ),
        color: kPrimaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
          Image.asset(
            AppPaths.availableDoctorImage,
          ),
        ],
      ),
    );
  }
}
