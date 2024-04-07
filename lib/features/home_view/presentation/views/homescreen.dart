import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/app_paths.dart';
import 'package:markiz_elamal_team_12/features/chats_feature/chats_view.dart';
import 'package:markiz_elamal_team_12/features/notification_feature/notification_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> names = [
    "Speech",
    "Autism",
    "Learing difficulties",
    "Intelligence tast",
    "Behavior modiffication",
    "Skills development",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kWhiteColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AppPaths.appLogo,
                width: 24.w,
                height: 30.h,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "Markaz ElAmal",
                style: GoogleFonts.portLligatSlab(
                    color: kPrimaryColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationView(),
                    )),
                splashColor: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    color: kPrimaryColor,
                  ),
                  height: 40.h,
                  width: 40.w,
                  child: const Icon(
                    Icons.notifications_none_sharp,
                    color: kWhiteColor,
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              InkWell(
                splashColor: Colors.transparent,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatsView(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    color: kPrimaryColor,
                  ),
                  height: 40.h,
                  width: 40.w,
                  child: const Icon(
                    Icons.chat_bubble_outline,
                    color: kWhiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 12.h),
                        prefixIcon: const Icon(
                          Icons.search_rounded,
                          color: kLogoutConColor,
                        ),
                        hintText: "Search",
                        hintStyle:  TextStyle(
                            fontSize: 20.sp, color: kLogoutConColor),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide:
                                const BorderSide(color: kLogoutConColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide:
                                const BorderSide(color: kLogoutConColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide:
                                const BorderSide(color: kLogoutConColor)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 24.w,
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.r)),
                        color: kPrimaryColor,
                      ),
                      height: 50.h,
                      width: 50.w,
                      child: Image.asset(
                        AppPaths.filterIcon,
                        width: 35.w,
                        height: 29.h,
                      ))
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Image.asset(
                AppPaths.childImage,
                width: MediaQuery.of(context).size.width,
                height: 150.h,
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: kLogoutConColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Text("See All->",
                      style: TextStyle(
                          fontSize: 24.sp,
                          color: kLogoutConColor,
                          fontWeight: FontWeight.w400))
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: 85.h,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    width: 18.w,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, int itemIndex) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 16.h, horizontal: 30.w),
                        // margin: const EdgeInsets.fromLTRB(16, 16, 16, 1),
                        // width: 145,
                        // height: 78,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.r)),
                            color: kPrimaryColor),
                        child: Center(
                          child: Text(
                            names[itemIndex],
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            maxLines: 2,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 36.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Doctors",
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: kLogoutConColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Text("See All->",
                      style: TextStyle(
                          fontSize: 24.sp,
                          color: kLogoutConColor,
                          fontWeight: FontWeight.w400))
                ],
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                    height: 300.h,
                    enableInfiniteScroll: true,
                    viewportFraction: .83,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                    autoPlayCurve: Curves.ease),
                itemCount: 6,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Container(
                      decoration: BoxDecoration(
                          color: kLogoutTextColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.r))),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                                // margin: const EdgeInsets.all(10),
                                // width: MediaQuery.of(context).size.width,
                                // height: 125,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.r)),
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      "assets/images/sara 1.png",
                                      width: 300.w,
                                      height: 123.h,
                                    ),
                                    Positioned(
                                      top: 10.h,
                                      right: 15.w,
                                      child: const Icon(
                                        Icons.favorite,
                                        color: Color(0xFF336EA6),
                                      ),
                                    ),
                                    Positioned(
                                        bottom: 1.h,
                                        left: 7.w,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16.r)),
                                              color: kPrimaryColor),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3.h, horizontal: 13.w),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: kRateColor,
                                                size: 24.sp,
                                              ),
                                              SizedBox(
                                                width: 8.w,
                                              ),
                                              Text(
                                                "4.8",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16.sp,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )
                                            ],
                                          ),
                                        )),
                                  ],
                                )),
                          ),
                           Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 12.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dr: Sara Selem",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "12 experience",
                                    style: TextStyle(
                                        color: kDetailsTextColor,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "20.99",
                                    style: TextStyle(
                                        color: kWhiteColor,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "see more ...",
                                    style: TextStyle(
                                        color: kDetailsTextColor,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ));
                },
              ),
            ],
          ),
        ));
  }
}
