import 'package:carousel_slider/carousel_slider.dart';


import 'package:flutter/material.dart';

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
        body: ListView(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(16, 16, 16, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Image.asset("asstes/images/Group 13994.png"),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset("asstes/images/Markaz ElAmal.png")
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color(0xFF336EA6),
                      ),
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.notifications_none_sharp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Color(0xFF336EA6),
                      ),
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.mark_chat_unread_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(5, 16, 16, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width * 0.7,
                height: 60,
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: Color(0xFF233B55),
                    ),
                    hintText: "Search",
                    hintStyle:
                        TextStyle(fontSize: 20, color: Color(0xFF233B55)),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color(0xFF336EA6),
                  ),
                  height: 60,
                  width: 60,
                  child: Image.asset("asstes/images/Frame 1963.png"))
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(16, 16, 16, 1),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Image.asset("asstes/images/Mask group.png"),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 16, 16, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "category",
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF233B55),
                    fontWeight: FontWeight.w600),
              ),
              Text("See All->",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF233B55),
                      fontWeight: FontWeight.w400))
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 85,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: names.length,
            itemBuilder: (BuildContext context, int itemIndex) {
              return InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.fromLTRB(16, 16, 16, 1),
                  width: 145,
                  height: 78,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Color(0xFF336EA6)),
                  child: SizedBox(
                    width: 130,
                    child: Center(
                      child: Text(
                        names[itemIndex],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        maxLines: 2,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 16, 16, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Doctors",
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF233B55),
                    fontWeight: FontWeight.w600),
              ),
              Text("See All->",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF233B55),
                      fontWeight: FontWeight.w400))
            ],
          ),
        ),
        Container(
            child: CarouselSlider.builder(
          options: CarouselOptions(
              height: 300,
              enableInfiniteScroll: true,
              autoPlay: true,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
              autoPlayCurve: Curves.ease),
          itemCount: 6,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
            return Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 16, 1),
                height: 290,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFF233B55),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Container(
                  margin: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          height: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: Colors.white,
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                "asstes/images/sara 1.png",
                                width: MediaQuery.of(context).size.width,
                              ),
                              Positioned(
                                top: 10,
                                left: 215,
                                child: Icon(
                                  Icons.favorite,
                                  color: Color(0xFF336EA6),
                                ),
                              ),
                              Positioned(
                                top: 90,
                                left: 19,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(16)),
                                    color: Color(0xFF336EA6)
                                  ),
                                  height: 30,
                                  width: 70,
                                  child:
                                  Row(
                                    children: [
                                      Image.asset("asstes/images/Frame.png"),
                                      Text("4.8",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                )
                              ),
                            ],
                          )),
                      Text(
                        "Dr: Sara Selem",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "12 experience",
                        style: TextStyle(
                            color: Color(0xFF9ECAE3),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "20.99",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "see more ...",
                        style: TextStyle(
                            color: Color(0xFF9ECAE3),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ));
          },
        )),
      ],
    ));
  }
}
