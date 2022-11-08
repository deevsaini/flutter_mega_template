/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travelo/pages/reviewsPage.dart';
import 'package:travelo/pages/selectRoomPage.dart';
import 'package:travelo/utilities/constantPage.dart' as style;

class infoPage extends StatefulWidget {
  infoPage({Key? key}) : super(key: key);

  static const String pageId = 'infoPage';

  @override
  State<infoPage> createState() => _infoPageState();
}

class _infoPageState extends State<infoPage> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF0F2F6),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Stack(
        children: [
          _buildProfile(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red.withOpacity(0.3),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            margin: EdgeInsets.only(top: 180),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Grand Luxury\'s',
                        style: TextStyle(fontFamily: 'bold', fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            '\$ 120 ',
                            style: TextStyle(fontFamily: 'bold', fontSize: 20),
                          ),
                          Text(
                            '/night',
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      Text('Seoul, South Korea'),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300),
                        top: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Text(
                              '4.2/5',
                            ),
                            Text(
                              '(2456 reviews)',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              color: style.appColor, fontFamily: 'bold'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Text(
                          'Information',
                          style: TextStyle(fontFamily: 'bold', fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
                    style: TextStyle(fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(fontFamily: 'bold', fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      _buildInfoContent(style.appColor.withOpacity(0.3),
                          Icons.restaurant, style.appColor, 'Restaurant'),
                      _buildInfoContent(Colors.orange.withOpacity(0.3),
                          Icons.wifi, Colors.orange, 'wifi'),
                      _buildInfoContent(
                          Colors.red.withOpacity(0.3),
                          Icons.currency_exchange,
                          Colors.red,
                          'Currency \nExchange'),
                      _buildInfoContent(
                          Colors.green.withOpacity(0.3),
                          Icons.front_hand,
                          Colors.green,
                          '24-hour \nFront Desk'),
                      _buildInfoContent(Colors.grey.withOpacity(0.3),
                          Icons.more_horiz, Colors.grey, 'More'),
                    ],
                  ),
                  Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
                    style: TextStyle(fontSize: 15),
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/images/m1.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildInfoContent(bgclr, icn, icnclr, txt) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
      child: Column(
        children: [
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: bgclr,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(
                icn,
                color: icnclr,
              ),
            ),
          ),
          Text(
            '$txt',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      width: double.infinity,
      child: CarouselSlider(
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
              print(index);
            });
          },
          height: 300,
          viewportFraction: 1.0,
          initialPage: 0,
          enableInfiniteScroll: false,
          reverse: false,
          autoPlay: true,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        carouselController: _controller,
        items: [1, 2, 3].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Column(
                children: [
                  if (i == 1)
                    _buildSlide1(context)
                  else if (i == 2)
                    _buildSlide2(context)
                  else if (i == 3)
                    _buildSlide3(context),
                ],
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Widget _buildSlide1(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/h2.jpg',
            ),
            fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildSlide2(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/h3.jpg',
            ),
            fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildSlide3(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/h4.jpg',
            ),
            fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => selectRoomPage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Select Room',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
