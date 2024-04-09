import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/app_paths.dart';
import 'package:markiz_elamal_team_12/features/chats_feature/chats_view.dart';
import 'package:markiz_elamal_team_12/features/home_view/presentation/tabs/book_tab_view.dart';
import 'package:markiz_elamal_team_12/features/home_view/presentation/tabs/category_tab_view.dart';
import 'package:markiz_elamal_team_12/features/home_view/presentation/tabs/home_tab_view.dart';
import 'package:markiz_elamal_team_12/features/home_view/presentation/tabs/profile_tab_view.dart';
import 'package:markiz_elamal_team_12/features/notification_feature/notification_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;


  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    List<Widget> tabs =[HomeTabView(),CategoryTabView(),BookTabView(),ProfileTabView()];
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) => setState(() {
            index = value;
          }),
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AppPaths.homeIcon),
                  color: kWhiteColor,
                  size: 30.sp,
                ),
                label: "Home",
                activeIcon: CircleAvatar(
                  backgroundColor: kWhiteColor,
                  child: ImageIcon(
                    AssetImage(AppPaths.homeIcon),
                    color: kBlackColor,
                    size: 30.sp,
                  ),
                )),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AppPaths.categoryIcon),
                  color: kWhiteColor,
                  size: 30.sp,
                ),
                label: "Category",
                activeIcon: CircleAvatar(
                  backgroundColor: kWhiteColor,
                  child: ImageIcon(
                    AssetImage(AppPaths.categoryIcon),
                    color: kBlackColor,
                    size: 30.sp,
                  ),
                )),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AppPaths.watchIcon),
                  color: kWhiteColor,
                  size: 30.sp,
                ),
                label: "Book",
                activeIcon: CircleAvatar(
                  backgroundColor: kWhiteColor,
                  child: ImageIcon(
                    AssetImage(AppPaths.watchIcon),
                    color: kBlackColor,
                    size: 30.sp,
                  ),
                )),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(AppPaths.profileIcon),
                  color: kWhiteColor,
                  size: 30.sp,
                ),
                label: "Profile",
                activeIcon: CircleAvatar(
                  backgroundColor: kWhiteColor,
                  child: ImageIcon(
                    AssetImage(AppPaths.profileIcon),
                    color: kBlackColor,
                    size: 30.sp,
                  ),
                )),
          ],
          backgroundColor: kPrimaryColor,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: kWhiteColor,
          showUnselectedLabels: true,
          unselectedLabelStyle: GoogleFonts.poppins(
              fontSize: 16.sp, fontWeight: FontWeight.w400, color: kWhiteColor),
        ),
        body:tabs[index]);
  }
}
