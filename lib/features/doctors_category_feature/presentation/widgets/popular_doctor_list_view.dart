import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_paths.dart';
import 'popular_doctor_card.dart';

class PopularDoctorListView extends StatelessWidget {
  const PopularDoctorListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 190,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context,index){
            return const PopularDoctorCard();
          }),
    );
  }
}


