import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart' as intl;

import '../../../core/utils/app_colors.dart';

class MassageItem extends StatelessWidget {
  String massage;
  bool fromMe;

  MassageItem({required this.massage, required this.fromMe});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return Row(
      children: [
        (fromMe) ? const Spacer() : const SizedBox(),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 241.w),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
            decoration: BoxDecoration(
                color: (fromMe) ? kPrimaryColor : kSecondaryColor,
                borderRadius: BorderRadius.circular(12.r)),
            child: Text(
                textDirection:
                    (isRtl(massage)) ? TextDirection.rtl : TextDirection.ltr,
                massage,
                style:  TextStyle(
                        fontFamily: "Poppins",
                        color: (fromMe) ? kWhiteColor : kBlackColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      )),
          ),
        ),
        (!fromMe) ? const Spacer() : const SizedBox()
      ],
    );
  }

  bool isRtl(String text) {
    return intl.Bidi.detectRtlDirectionality(text);
  }
}
