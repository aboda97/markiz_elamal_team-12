import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../widgets/available_doctor_grid_view_item.dart';
import '../widgets/available_doctor_list_view_item.dart';

class BookTabView extends StatefulWidget {
  const BookTabView({super.key});

  @override
  State<BookTabView> createState() => _BookTabViewState();
}

class _BookTabViewState extends State<BookTabView> {
  bool filterCategory = true;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBar(
            title: const Text(
              'Select Date and Time',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
            ),
          ),
          SafeArea(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
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
                  //--> Available Doctor Filter
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
                              onPressed: () {
                                setState(() {
                                  filterCategory = false;
                                });
                              },
                              icon: Icon(
                                Icons.grid_view_outlined,
                                color:
                                    !filterCategory ? kPrimaryColor : kSecondaryColor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  filterCategory = true;
                                });
                              },
                              icon: Icon(
                                Icons.sort,
                                color:
                                    filterCategory ? kPrimaryColor : kSecondaryColor,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  //--> Available Doctor ListView
                  const SizedBox(
                    height: 30.0,
                  ),
                  filterCategory
                      ? ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (index, context) =>
                              const AvailableDoctorListViewItem(),
                          itemCount: 10,
                        )
                      : GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: .6,
                            crossAxisCount: 2, // Number of columns
                            crossAxisSpacing: 8.0, // Spacing between columns
                            mainAxisSpacing: 8.0, // Spacing between rows
                          ),
                          itemBuilder: (index, context) =>
                              const AvailableDoctorGridViewItem(),
                          itemCount: 10,
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}