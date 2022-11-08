/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness_app/pages/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_app/utilities/constancePage.dart' as style;

class welcomePage extends StatefulWidget {
  welcomePage({Key? key}) : super(key: key);

  static const String pageId = 'welcomePage';

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFF2D2D39),
          appBar: _buildAppBar(),
          body: _buildBody(),
          bottomNavigationBar: _currentIndex == 0
              ? _buildBottomNavigationBar1()
              : _currentIndex == 1
                  ? _buildBottomNavigationBar2()
                  : _currentIndex == 2
                      ? _buildBottomNavigationBar3()
                      : Container()),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFF2D2D39),
      elevation: 0,
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _currentIndex == 2
                    ? Container()
                    : InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginPage()));
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              fontFamily: 'bold', color: style.appColor),
                        ),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF1D1F2B),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: CarouselSlider(
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
              print(index);
            });
          },
          height: double.infinity,
          viewportFraction: 1.0,
          initialPage: 0,
          enableInfiniteScroll: false,
          reverse: false,
          autoPlay: false,
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
    return Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/i1.png',
                ),
                fit: BoxFit.contain),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Get A Varity Of Choice To Choose !',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'bold', color: Colors.white, fontSize: 17),
              ),
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing \n and typesetting industry.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSlide2(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/i2.png',
                ),
                fit: BoxFit.contain),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Receive High Quality Food Close To You !',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'bold', color: Colors.white, fontSize: 17),
              ),
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing  and typesetting industry.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSlide3(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/i1.png',
                ),
                fit: BoxFit.contain),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Get A Varity Of Choice To Choose !',
                style: TextStyle(
                    fontFamily: 'bold', color: Colors.white, fontSize: 17),
              ),
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing \n and typesetting industry.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar1() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF1D1F2B),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                _controller.nextPage();
              },
              child: Container(
                height: 50,
                width: 100,
                decoration: style.contentButtonStyle2(),
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(fontFamily: 'bold', color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar2() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF1D1F2B),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                _controller.previousPage();
              },
              child: Container(
                height: 50,
                width: 100,
                child: Center(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                _controller.nextPage();
              },
              child: Container(
                height: 50,
                width: 100,
                decoration: style.contentButtonStyle2(),
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(fontFamily: 'bold', color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar3() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF1D1F2B),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                _controller.previousPage();
              },
              child: Container(
                height: 50,
                width: 100,
                child: Center(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginPage()));
              },
              child: Container(
                height: 50,
                width: 100,
                decoration: style.contentButtonStyle2(),
                child: Center(
                  child: Text(
                    'Finish',
                    style: TextStyle(fontFamily: 'bold', color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
