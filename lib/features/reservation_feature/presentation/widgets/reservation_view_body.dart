import 'package:flutter/material.dart';
import 'package:markiz_elamal_team_12/core/utils/app_colors.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';

class ReservationViewBody extends StatefulWidget {
  const ReservationViewBody({super.key});

  @override
  State<ReservationViewBody> createState() => _ReservationViewBodyState();
}

class _ReservationViewBodyState extends State<ReservationViewBody> {
  final EasyInfiniteDateTimelineController _controller =
      EasyInfiniteDateTimelineController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 35.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //--> Date Choosen
          const Text(
            'October  2,2024',
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w700,
                color: kPrimaryColor),
          ),
          //--> Calender to select Date
          EasyDateTimeLine(
            initialDate: DateTime.now(),
            onDateChange: (selectedDate) {
              //`selectedDate` the new date selected.
            },
            activeColor: kPrimaryColor,
            headerProps: const EasyHeaderProps(
                //  monthPickerType: MonthPickerType.switcher,
                padding: EdgeInsets.only(top: 20.0, bottom: 15.0),
                showMonthPicker: false,
                selectedDateStyle: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600)),
            dayProps: const EasyDayProps(
              todayHighlightStyle: TodayHighlightStyle.withBackground,
              todayHighlightColor: kSecondaryColor,
            ),
          ),
          //--> Divider
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Divider(
              color: kPrimaryColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Available Doctor',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: kPrimaryColor,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: kSecondaryColor.withOpacity(.5),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.grid_view_outlined,
                        color: kPrimaryColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.sort,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
