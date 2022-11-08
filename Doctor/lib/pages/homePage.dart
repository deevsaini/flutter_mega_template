/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor_marketplace_app/pages/messagePage.dart';
import 'package:doctor_marketplace_app/pages/searchPage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_marketplace_app/utilities/constance.dart' as style;

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  static const String pageId = 'homePage';

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE7EFFA),
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xFFE7EFFA), Colors.white]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Find Your',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      'Specialist',
                      style: TextStyle(fontSize: 20, fontFamily: 'bold'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => messagePage()));
                      },
                      child: Icon(Icons.message),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildCarouselSliders(),
          _buildTitle('Categories', 'View All'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  _buildCategories('Pediatrician', 'assets/images/d1.png'),
                  _buildCategories('Neurosurgeon', 'assets/images/d2.png'),
                  _buildCategories('Cardiologist', 'assets/images/d3.png'),
                  _buildCategories('Psychiatron', 'assets/images/d4.png'),
                  _buildCategories('Pediatrician', 'assets/images/d5.png'),
                  _buildCategories('Neurosurgeon', 'assets/images/d6.png'),
                  _buildCategories('Cardiologist', 'assets/images/d7.png'),
                  _buildCategories('Psychiatron', 'assets/images/d8.png'),
                  _buildCategories('Pediatrician', 'assets/images/d9.png'),
                ],
              ),
            ),
          ),
          _buildTitle('Available Doctor', 'View All'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  _buildSpecialist('Dr.Serena Gome', 'Medicine Specialit',
                      '8 Year', '2.7K', AssetImage('assets/images/4.png')),
                  _buildSpecialist('Dr.Rahul Jograna', 'Medicine Specialit',
                      '10 Year', '5.7K', AssetImage('assets/images/9.png')),
                  _buildSpecialist('Dr.Hardik Rajput', 'Heart Specialit',
                      '8 Year', '3.7K', AssetImage('assets/images/4.png')),
                  _buildSpecialist('Dr.Rose Milone', 'Medicine Specialit',
                      '5 Year', '1.0K', AssetImage('assets/images/5.png')),
                  _buildSpecialist('Dr.Mausam Chavda', 'Medicine Specialit',
                      '7 Year', '2.7K', AssetImage('assets/images/6.png')),
                  _buildSpecialist('Dr.Serena Gome', 'Medicine Specialit',
                      '8 Year', '2.7K', AssetImage('assets/images/7.png')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(txt1, txt2) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$txt1',
            style: TextStyle(fontFamily: 'bold', fontSize: 20),
          ),
          Text(
            '$txt2',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }

  Widget _buildCategories(txt, img) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => searchPage()));
      },
      child: Container(
        width: 100,
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.all(5),
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: SizedBox(
                  width: 100,
                  child: Text(
                    '$txt',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    softWrap: false,
                    style: TextStyle(fontFamily: 'bold'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSpecialist(txt1, txt2, txt3, txt4, img) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => searchPage()));
      },
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$txt1',
                            style: TextStyle(fontFamily: 'bold', fontSize: 17),
                          ),
                          Text(
                            '$txt2',
                            style: TextStyle(fontSize: 10),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                Icon(Icons.star,
                                    color: Colors.orange, size: 10),
                                Icon(Icons.star,
                                    color: Colors.orange, size: 10),
                                Icon(Icons.star,
                                    color: Colors.orange, size: 10),
                                Icon(Icons.star,
                                    color: Colors.orange, size: 10),
                                Icon(Icons.star,
                                    color: Colors.orange, size: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Experience',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            '$txt3',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'bold'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Petients',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            '$txt4',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'bold'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            width: 120,
            height: 130,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: img, fit: BoxFit.contain),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCarouselSliders() {
    return Container(
      height: 200,
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: CarouselSlider(
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
              print(index);
            });
          },
          height: double.infinity,
          viewportFraction: 0.80,
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
              return Container(
                width: double.infinity,
                height: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    i == 1
                        ? _buildSlide1(context)
                        : (i == 2
                            ? _buildSlide2(context)
                            : (i == 3 ? _buildSlide3(context) : Container())),
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Widget _buildSlide1(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg1.jpg',
                ),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Looking for your desire \nspecialist doctor ?',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'bold', fontSize: 17),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border:
                          Border(left: BorderSide(color: Colors.greenAccent))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr.Rahul Jograna',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'bold',
                              fontSize: 15),
                        ),
                        Text(
                          'Medicine & Helth Specialist',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        Text(
                          'initappz clinic',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          width: 120,
          height: 130,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/4.png',
                  ),
                  fit: BoxFit.contain),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSlide2(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg1.jpg',
                ),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Looking for your desire \nspecialist doctor ?',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'bold', fontSize: 17),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border:
                          Border(left: BorderSide(color: Colors.greenAccent))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr.Hardik Rajput',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'bold',
                              fontSize: 15),
                        ),
                        Text(
                          'Medicine & Helth Specialist',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        Text(
                          'initappz clinic',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          width: 120,
          height: 130,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/9.png',
                  ),
                  fit: BoxFit.contain),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSlide3(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg1.jpg',
                ),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Looking for your desire \nspecialist doctor ?',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'bold', fontSize: 17),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border:
                          Border(left: BorderSide(color: Colors.greenAccent))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr.Mausam Chavda',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'bold',
                              fontSize: 15),
                        ),
                        Text(
                          'Medicine & Helth Specialist',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        Text(
                          'initappz clinic',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          width: 120,
          height: 130,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/8.png',
                  ),
                  fit: BoxFit.contain),
            ),
          ),
        ),
      ],
    );
  }
}
