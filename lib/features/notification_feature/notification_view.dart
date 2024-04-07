import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markiz_elamal_team_12/features/notification_feature/widgets/notification_item.dart';

import '../../core/utils/app_colors.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios),onPressed: (){Navigator.pop(context);},),
        title: Text(
          "Notifications",
          style:
              GoogleFonts.poppins(fontSize: 32.sp, fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => NotificationItem(),
          separatorBuilder:  (context, index) => Divider(
            color: kSecondaryColor,
            height: 3.h,
            thickness: 3.h,
          ) ,
          itemCount: 15),
    );
  }
}
