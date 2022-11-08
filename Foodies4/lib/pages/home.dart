/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fooddoor/helper/style.dart' as style;
import 'package:fooddoor/pages/filter.dart';
import 'package:fooddoor/pages/search.dart';
import 'package:fooddoor/pages/shopYouSelect.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  static const String page_id = "Home";

  @override
  _homeScreenState createState() => _homeScreenState();
}

class CurveImage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 30);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class _homeScreenState extends State<homeScreen> {
  List<int> items = [1, 2, 3, 4, 5];
  int tabID = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: style.appColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            color: Colors.white,
            size: 20,
          ),
          Text(
            'Delivered to',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          SizedBox(
            width: 10,
          ),
          Row(
            children: [
              Text(
                'Home',
                style: TextStyle(color: style.secondaryColor, fontSize: 14),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: style.secondaryColor,
              ),
            ],
          )
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(Icons.notification_add_outlined),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          ClipPath(
            clipper: CurveImage(),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(color: style.appColor),
              child: Column(
                children: [
                  Row(
                    children: [
                      // Flexible(
                      //   child: TextField(
                      //     style: TextStyle(color: Colors.black),
                      //     decoration: InputDecoration(
                      //       hintText: 'Search...',
                      //       prefixIcon:
                      //           Icon(Icons.search, color: Colors.black54),
                      //       hintStyle: TextStyle(color: Colors.grey.shade400),
                      //       border: OutlineInputBorder(
                      //         borderRadius:
                      //             BorderRadius.all(Radius.circular(10)),
                      //         borderSide: BorderSide(
                      //           color: Colors.grey.shade400,
                      //         ),
                      //       ),
                      //       enabledBorder: OutlineInputBorder(
                      //         borderRadius:
                      //             BorderRadius.all(Radius.circular(10)),
                      //         borderSide: BorderSide(
                      //           color: Colors.grey.shade400,
                      //         ),
                      //       ),
                      //       focusedBorder: OutlineInputBorder(
                      //         borderRadius:
                      //             BorderRadius.all(Radius.circular(10)),
                      //         borderSide: BorderSide(
                      //           color: Colors.grey.shade400,
                      //         ),
                      //       ),
                      //       filled: true,
                      //       fillColor: Colors.white,
                      //       contentPadding: EdgeInsets.symmetric(
                      //           horizontal: 10, vertical: 0),
                      //     ),
                      //   ),
                      // ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => search()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          height: 40,
                          width: 250,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Icon(Icons.search_outlined),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Search...',
                                style: TextStyle(color: style.greyColor),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => filter())),
                        },
                        icon: Icon(
                          Icons.format_align_left_rounded,
                          color: style.secondaryColor,
                          size: 36,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var i in items) breakfast(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Favourite',
                      style: style.headText(),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(color: style.secondaryColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (var i in items) favouriteContainer(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                _buildSegment(),
                if (tabID == 1)
                  RecentContainer()
                else if (tabID == 2)
                  RecentContainer()
                else if (tabID == 3)
                  RecentContainer()
                else if (tabID == 4)
                  RecentContainer()
                else if (tabID == 5)
                  RecentContainer()
                else if (tabID == 6)
                  RecentContainer()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget RecentContainer() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => shopYouSelect()));
          },
          child: style.shopContainer(),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => shopYouSelect()));
          },
          child: style.shopContainer(),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => shopYouSelect()));
          },
          child: style.shopContainer(),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => shopYouSelect()));
          },
          child: style.shopContainer(),
        ),
      ],
    );
  }

  Widget breakfast() {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/breakfast.png',
                height: 40,
                width: 40,
                color: Colors.white,
              ),
              Text(
                'Breakfast',
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget favouriteContainer() {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 20.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20)),
            height: 280,
            width: 300,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/images/burger.jpg'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Burger King',
                  style: style.headText(),
                ),
                Text(
                  'Burger American food Deshi food',
                  style: TextStyle(fontSize: 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: style.secondaryColor,
                        ),
                        Text('4.9 (150)')
                      ],
                    ),
                    Row(
                      children: [
                        Chip(
                          backgroundColor:
                              style.secondaryColor.withOpacity(0.2),
                          label: Text(
                            "150m",
                            style: TextStyle(color: style.secondaryColor),
                          ),
                          avatar: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.location_on_outlined,
                              color: style.secondaryColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Chip(
                          backgroundColor:
                              style.secondaryColor.withOpacity(0.2),
                          label: Text(
                            "30",
                            style: TextStyle(color: style.secondaryColor),
                          ),
                          avatar: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.access_time,
                              color: style.secondaryColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: segmentDecoration(1),
                  child: Text('Recent', style: segmentText(1)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: segmentDecoration(2),
                    child: Text('Favorite', style: segmentText(2)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 3;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: segmentDecoration(3),
                    child: Text('Rating', style: segmentText(3)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 4;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: segmentDecoration(4),
                    child: Text('Popular', style: segmentText(4)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 5;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: segmentDecoration(5),
                    child: Text('Trending', style: segmentText(5)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 6;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: segmentDecoration(6),
                    child: Text('other', style: segmentText(6)),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 2,
                color:
                    tabID == val ? style.secondaryColor : Colors.transparent)));
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: tabID == val ? 'bold' : 'semibold',
        color: tabID == val ? Colors.black : Colors.grey);
  }
}
