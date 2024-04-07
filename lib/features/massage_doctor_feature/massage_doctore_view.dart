import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/app_paths.dart';
import 'package:intl/intl.dart' as intl;
import 'package:markiz_elamal_team_12/features/massage_doctor_feature/widgets/massage_item.dart';

class MassageDoctorView extends StatefulWidget {
  const MassageDoctorView({super.key});

  @override
  State<MassageDoctorView> createState() => _MassageDoctorViewState();
}

class _MassageDoctorViewState extends State<MassageDoctorView> {
  late TextEditingController massageController;

  late ScrollController scrollController;
  List<String> massages = [
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
  ];

  @override
  void initState() {
    scrollController = ScrollController();
    massageController = TextEditingController();
    // if (massages.isNotEmpty) {
    //   scrollController.jumpTo(scrollController.position.maxScrollExtent);
    // }
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    massageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        title: Row(
          children: [
            const Spacer(),
            Text(
              "Doctor Name",
              style: GoogleFonts.poppins(
                  fontSize: 22.sp, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            CircleAvatar(
              child: Image.asset(
                AppPaths.doctorImage,
                width: 60.w,
                height: 60.h,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h),
              child: ListView.separated(
                reverse: true,
                // cacheExtent: scrollController.position.maxScrollExtent,
                separatorBuilder: (context, index) => SizedBox(
                  height: 14.h,
                ),
                itemCount: massages.length,
                controller: scrollController,
                itemBuilder: (context, index) => MassageItem(
                    massage: massages[(massages.length - 1) - index],
                    fromMe: index % 2 == 0),
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height*.25,
              minHeight: 95.h
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 26.w),
              color: kSecondaryColor,
              // height: ,
              child: Row(
                children: [
                  Icon(
                    Icons.sentiment_satisfied_alt,
                    size: 36.sp,
                  ),
                  Expanded(
                    child: ValueListenableBuilder<TextDirection>(
                      valueListenable: textDir,
                      builder: (context, value, child) => TextField(
                        maxLines: null,
                        controller: massageController,
                        textDirection: value,
                        onChanged: (v) {
                          if (getDirection(v) != value) {
                            textDir.value = getDirection(v);
                          }
                        },
                        decoration: InputDecoration(
                            hintText: "Type message",
                            hintStyle: GoogleFonts.poppins(
                              color: kLogoutTextColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            disabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent))),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      if(massageController.text.isNotEmpty) {
                        setState(() {
                          massages.add(massageController.text.trim());
                          massageController.clear();
                          scrollController.animateTo(
                            scrollController.position.minScrollExtent,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.fastOutSlowIn,
                          );
                        });
                      }

                    },
                    child: CircleAvatar(
                      backgroundColor: kPrimaryColor,
                      radius: 30.r,
                      child: Icon(
                        Icons.send,
                        color: kWhiteColor,
                        size: 30.sp,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  ValueNotifier<TextDirection> textDir = ValueNotifier(TextDirection.ltr);

  TextDirection getDirection(String text) {
    return intl.Bidi.detectRtlDirectionality(text)
        ? TextDirection.rtl
        : TextDirection.ltr;
  }
}
