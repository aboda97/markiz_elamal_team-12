import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markiz_elamal_team_12/features/chats_feature/widgets/chat_item_list.dart';

import '../../core/utils/app_colors.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: Text(
          "Chats",
          style:
              GoogleFonts.poppins(fontSize: 32.sp, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: kSecondaryColor,
          height: 3.h,
          thickness: 3.h,
        ),
        itemBuilder: (context, index) => const ChatItemList(),
        itemCount: 10,
      ),
    );
  }
}
