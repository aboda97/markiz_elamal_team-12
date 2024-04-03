import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class BookADate extends StatelessWidget {
   BookADate({Key? key}) : super(key: key);
   List<String> months=['JAN','FEB','MAR','APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV','DEC'];
   static int getDaysInMonth(int year, int month) {
     if (month == DateTime.february) {
       final bool isLeapYear = (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0);
       return isLeapYear ? 29 : 28;
     }
     const List<int> daysInMonth = <int>[31, -1, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
     return daysInMonth[month - 1];
   }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: getDaysInMonth(DateTime.now().year,DateTime.now().month),
          itemBuilder: (context,index){
            if(index== DateTime.now().day-1){
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor
                  ),
                  onPressed: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${index+1}'
                        ,style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),),
                      Text(months[DateTime.now().month-1],
                        style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),),
                    ],
                  ),
                ),
              );
            }else{
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kSecondaryColor
                  ),
                  onPressed: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${index+1}'
                        ,style: TextStyle(
                        color: Color(0xff233B55),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),),
                      Text(months[DateTime.now().month-1],
                        style: TextStyle(
                          color: Color(0xff233B55),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),),
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
}
