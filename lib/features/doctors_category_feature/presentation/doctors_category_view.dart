import 'package:flutter/material.dart';
import 'package:markiz_elamal/features/doctor_profile_feature/presentation/doctor_profile_view.dart';
import 'package:markiz_elamal/features/doctors_category_feature/presentation/widgets/popular_doctor_card.dart';
import 'package:markiz_elamal/features/doctors_category_feature/presentation/widgets/popular_doctor_list_view.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_paths.dart';
import 'widgets/book_doctor_card.dart';

class DoctorsCatedoryView extends StatelessWidget {
  const DoctorsCatedoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
            Icons.arrow_back_ios,
            color: kWhiteColor,
            size: 30,
          ),

          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.search,
              color: kWhiteColor,
              size: 30,
            ),
          ),
        ],
      ),
      body:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Doctor',style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff233B55)),),
                TextButton(onPressed: (){}, child:  Row(
                  children: [
                    Text('See All',style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff233B55)),),
                    Icon(Icons.arrow_forward_rounded,size: 25,color: Color(0xff233B55),),
                  ],
                )),


              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: PopularDoctorListView(),
          ),
          SizedBox(height: 25,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              color: kSecondaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Book a doctor',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff233B55),
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
                          color: Color(0xff233B55),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.sort,
                          color: kPrivacyIconColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          //SizedBox(height: 10,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: .69,
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 10.0, // Spacing between columns
                  mainAxisSpacing: 11.0, // Spacing between rows
                ),
                itemBuilder: (index, context1) =>
                 GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                         return DoctorProfileView();
                       }));
                     },
                     child: BookDoctorCard()),
                itemCount: 10,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
