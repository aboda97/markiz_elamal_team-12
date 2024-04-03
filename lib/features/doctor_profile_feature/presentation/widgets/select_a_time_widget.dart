import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class SelectATime extends StatelessWidget {
   SelectATime({Key? key}) : super(key: key);
  List<String> times=['8:00','11:00','13:00','18:00','20:00'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: times.length,
          itemBuilder: (context,index){
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

                      Text(times[index],
                        style: TextStyle(
                          color: kLogoutTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),),
                    ],
                  ),
                ),
              );
            }

          ),
    );
  }
}
