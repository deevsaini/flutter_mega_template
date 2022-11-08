/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:travelo/pages/hotelBookingPage.dart';
import 'package:travelo/utilities/constantPage.dart' as style;

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  static const String pageId = 'homePage';

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF0F2F6),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildProfile(),
          _buildSearchbar('Search your destination..'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          hotelBookingPage()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFFE9C5E).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 30),
                                child: Center(
                                  child: Icon(
                                    Icons.location_city,
                                    color: Color(0xFFFE9C5E),
                                    size: 35,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Hotels',
                            style: TextStyle(fontFamily: 'bold', fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             hotelBookingPage()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFF77777).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 30),
                                child: Center(
                                  child: Icon(
                                    Icons.flight,
                                    color: Color(0xFFF77777),
                                    size: 35,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Flight',
                            style: TextStyle(fontFamily: 'bold', fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             hotelBookingPage()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF5DCFC6).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 30),
                                child: Center(
                                  child: Icon(
                                    Icons.all_inclusive,
                                    color: Color(0xFF5DCFC6),
                                    size: 35,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'All',
                            style: TextStyle(fontFamily: 'bold', fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Destinations',
                        style: TextStyle(fontFamily: 'bold', fontSize: 18),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontFamily: 'bold', color: style.appColor),
                      ),
                    ],
                  ),
                ),
                GridView.count(
                  primary: false,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1.0 / 1.5,
                  children: [
                    _buildItemContent('assets/images/c1.jpg', 'India', '5.0'),
                    _buildItemContent('assets/images/c2.jpg', 'Russia', '4.8'),
                    _buildItemContent('assets/images/c3.jpg', 'Korea', '4.3'),
                    _buildItemContent('assets/images/c4.jpg', 'Us', '3.5'),
                    _buildItemContent(
                        'assets/images/c5.jpg', 'New York', '4.5'),
                    _buildItemContent('assets/images/c6.jpg', 'Japan', '4.4'),
                    _buildItemContent('assets/images/c7.jpg', 'Turkey', '4.1'),
                    _buildItemContent('assets/images/c8.jpg', 'Tokyo', '3.5'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
        image: DecorationImage(
            image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hi, james!',
                  style: TextStyle(
                      fontFamily: 'bold', color: Colors.white, fontSize: 30),
                ),
                SizedBox(height: 15),
                Text(
                  'Where are you going next?',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Positioned(
                      right: 4,
                      child: Container(
                        height: 10,
                        width: 10,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(30),
                    child: FittedBox(
                      child: Image(image: AssetImage('assets/images/f1.jpg')),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemContent(img, txt1, txt2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
          ),
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        '$txt1',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'bold'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '$txt2',
                              style:
                                  TextStyle(fontSize: 10, fontFamily: 'bold'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -10,
                top: -10,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSearchbar(hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20.0,
                    ),
                  ]),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: hintText,
                  prefixIcon: Icon(Icons.search),
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade100,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade100,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
