import 'package:flutter/material.dart';
import 'package:markiz_elamal/core/utils/app_paths.dart';

import '../../../core/utils/app_colors.dart';
import 'widgets/book_a_date_widget.dart';
import 'widgets/select_a_time_widget.dart';

class DoctorProfileView extends StatefulWidget {
   DoctorProfileView({Key? key}) : super(key: key);

  @override
  State<DoctorProfileView> createState() => _DoctorProfileViewState();
}

class _DoctorProfileViewState extends State<DoctorProfileView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading:  Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon( Icons.arrow_back_ios,
            color: kWhiteColor,
            size: 30,),


          ),
        ),
      ),

      body: ListView(
        children: [
          Center(child: Image.asset(AppPaths.availableDoctorImage,)),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height *.73,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kPrimaryColor,

                ),
                child: const Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text('12 years of experience',style: TextStyle(
                      fontSize: 18,
                      color: kWhiteColor,
                    ),),
                  ),
                ),
              ),

              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 60),
                height: MediaQuery.of(context).size.height *.662,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kWhiteColor,

                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView(
                   // physics: NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: 20,),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text('Dr: Osama ali',style: TextStyle(
                          fontSize: 24,
                          color: kLogoutTextColor,
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                      const SizedBox(height: 10,),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text('Speech',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColor,
                          fontSize: 20
                        ),),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(color: kLogoutTextColor)),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '4.9',
                                style: TextStyle(
                                  color: kWhiteColor,
                                ),
                              ),
                              SizedBox(width: 7,),
                              Icon(
                                Icons.star_rate,
                                color: kRateColor,
                                size: 18.0,
                              ),

                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text('''Figma ipsum component variant main layer. Library figma reesizing invite mask arrow ipsum community. Prototype main ellipse opacity community auto flatten link. List device rectangle figjam subtract. Font pixel selection image rotate. Outline asset arrow library flatten blur. Style plugin union edit align ''',
                      style: TextStyle(
                        color: kLogoutTextColor,
                        fontSize: 15
                      ),
                      ),
                      const SizedBox(height: 20,),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text('Book a Date',style: TextStyle(
                          color: kLogoutTextColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                        ),),
                      ),


                      const SizedBox(height: 10,),
                      BookADate(),

                      const SizedBox(height: 20,),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text('Select a Time',style: TextStyle(
                            color:kLogoutTextColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                        ),),
                      ),
                      const SizedBox(height: 10,),

                      SelectATime(),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kPrimaryColor
                              ),
                              onPressed: (){},
                              child: const Text('Send Message',style: TextStyle(
                            color: kWhiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                          ),)),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: kSecondaryColor
                              ),
                              onPressed: (){},
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text('Book Now',style: TextStyle(
                                    color: kLogoutTextColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),),
                              )),
                        ],
                      )

                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
