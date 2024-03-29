import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:markiz_elamal_team_12/core/utils/app_paths.dart';
import 'package:markiz_elamal_team_12/features/pyment_methods_feature/widgets/pyment_method_item.dart';

class PaymentMethodView extends StatefulWidget {
  const PaymentMethodView({super.key});

  @override
  State<PaymentMethodView> createState() => _PaymentMethodViewState();
}

class _PaymentMethodViewState extends State<PaymentMethodView> {
  int i = 0; //to test selection and validation in button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          splashColor: Colors.transparent,
          icon: const Icon(Icons.close),
          onPressed: () {},
        ),
        actions: [
          InkWell(
            splashColor: Colors.transparent,
              onTap: () {},
              child: Text(
                "Add",
                style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              )),
          SizedBox(
            width: 20.w,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 14.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Payment methods",
                style: GoogleFonts.poppins(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w600,
                )),
            SizedBox(
              height: 21.h,
            ),
            Text(
                "Choose desired vehicle type. We offer cars suitable for most every day needs.",
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(
              height: 44.h,
            ),
            InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  if(i!=1) {
                    i = 1;
                  }else {
                    i=0;
                  }
                });
              },
              child: PaymentMethodItem(
                logoLink: AppPaths.masterCardLogo,
                paymentMethodTitle: "Master card payment.",
                isSelected: i == 1,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  if(i!=2) {
                    i = 2;
                  }else {
                    i=0;
                  }
                });
              },
              child: PaymentMethodItem(
                logoLink: AppPaths.visaLogo,
                paymentMethodTitle: "Visa payment.",
                isSelected: i == 2,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  if(i!=3) {
                    i = 3;
                  }else {
                    i=0;
                  }
                });
              },
              child: PaymentMethodItem(
                  logoLink: AppPaths.cashLogo,
                  paymentMethodTitle: "Cash payment.",
                  isSelected: i == 3),
            ),
            SizedBox(
              height: 90.h,
            ),
            Center(
              child: ElevatedButton(
                onPressed: (i!=0)?() {}:null,
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 50.w, vertical: 7.h),
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r))),
                child: Text("Done",
                    style: GoogleFonts.poppins(
                      color: kWhiteColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
