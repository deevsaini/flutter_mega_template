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
import 'package:medical/helper/style.dart';
import 'package:medical/pages/homeScreen.dart';
import 'package:medical/pages/signIn.dart';

class slider extends StatefulWidget {
  slider({Key? key}) : super(key: key);

  static const String page_id = "Slider";

  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  final CarouselController _controller = CarouselController();

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: _buildBody(),
      bottomNavigationBar: _currentIndex == 0
          ? bottomNavigation0()
          : _currentIndex == 1
              ? bottomNavigation1()
              : _currentIndex == 2
                  ? bottomNavigation2()
                  : Container(),
    );
  }

  Widget _buildBody() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            appColor,
            secondColor,
          ],
        ),
      ),
      child: Stack(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              onPageChanged: ((index, reason) {
                setState(() {
                  _currentIndex = index;
                  print(index);
                });
              }),
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
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Column(
                        children: [
                          if (i == 1)
                            _buildSlide1()
                          else if (i == 2)
                            _buildSlide2()
                          else if (i == 3)
                            _buildSlide3()
                        ],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSlide1() {
    return sliders();
  }

  Widget _buildSlide2() {
    return sliders();
  }

  Widget _buildSlide3() {
    return sliders();
  }

  Widget sliders() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Welcome to Mappledoc',
            style: TextStyle(
                fontFamily: 'semi-bold', color: Colors.white, fontSize: 18),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Container(
          height: 350,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              Image.asset(
                'assets/images/doctor.png',
                height: 110,
                width: 110,
                color: secondColor,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Need a Doctor?',
                style: TextStyle(
                    fontFamily: 'semi-bold', color: secondColor, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Search doctor using the app \n and find the best doctors \n around you',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'regular', color: lightColor, fontSize: 14),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                '1/1',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget bottomNavigation0() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            appColor,
            secondColor,
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'SKIP TOUR',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget bottomNavigation1() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            appColor,
            secondColor,
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'SKIP TOUR',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget bottomNavigation2() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            appColor,
            secondColor,
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => signIn()));
          },
          child: Text(
            'GET START',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
