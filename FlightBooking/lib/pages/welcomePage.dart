/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travelo/pages/loginPage.dart';
import 'package:travelo/utilities/constantPage.dart' as style;

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
          backgroundColor: Color(0xFFF0F2F6),
          appBar: _buildAppBar(),
          body: _buildBody(),
          bottomNavigationBar: Container(
            height: 70,
            child: Column(
              children: [
                if (_currentIndex == 0)
                  _buildBottomNavigationBar1()
                else if (_currentIndex == 1)
                  _buildBottomNavigationBar2()
                else if (_currentIndex == 2)
                  _buildBottomNavigationBar3()
              ],
            ),
          )),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFFF0F2F6),
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
    return CarouselSlider(
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
                  if (i == 1)
                    _buildSlide1(context)
                  else if (i == 2)
                    _buildSlide2(context)
                  else if (i == 3)
                    _buildSlide3(context)
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildSlide1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/f1.jpg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Book A Flight !',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'bold', color: Colors.black, fontSize: 17),
                ),
              ),
              Text(
                'Found a flight that matches your destination and schedule? Book it instantly.',
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSlide2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/f2.jpg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Get A Varity Of Choice To Choose !',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'bold', color: Colors.black, fontSize: 17),
                ),
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the printing \nand typesetting industry.',
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSlide3(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/f4.jpg',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Get A Varity Of Choice To Choose !',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'bold', color: Colors.black, fontSize: 17),
                ),
              ),
              Text(
                'Lorem Ipsum is simply dummy text of the printing \n and typesetting industry.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar1() {
    return Row(
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
              decoration: style.contentButtonStyle(),
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
    );
  }

  Widget _buildBottomNavigationBar2() {
    return Row(
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
              decoration: style.contentButtonStyle(),
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
    );
  }

  Widget _buildBottomNavigationBar3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
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
              decoration: style.contentButtonStyle(),
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
    );
  }
}
