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
import 'package:realestate/helper/style.dart';
import 'package:realestate/pages/signin.dart';

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
    return SafeArea(
      child: Scaffold(
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      child: CarouselSlider(
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
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            if (i == 1)
                              Image.asset(
                                'assets/images/s1.png',
                                fit: BoxFit.cover,
                                height: MediaQuery.of(context).size.height / 2,
                              )
                            else if (i == 2)
                              Image.asset(
                                'assets/images/s2.png',
                                fit: BoxFit.cover,
                                height: MediaQuery.of(context).size.height / 2,
                              )
                            else if (i == 3)
                              Image.asset(
                                'assets/images/s3.png',
                                height: MediaQuery.of(context).size.height / 2,
                                fit: BoxFit.cover,
                              )
                          ],
                        ),
                      ),
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
    );
  }

  Widget _buildSlide1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          decoration: BoxDecoration(
            color: appColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Text(
                'Welcome to Relest',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'semi-bold', fontSize: 22, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Welcome to Relestate \n house buy and selling online at lowest check schedule booking',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'regular',
                      fontSize: 14,
                      color: Colors.white70),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signin()));
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
                ),
                style: blueButton(),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: Colors.white,
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSlide2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          decoration: BoxDecoration(
            color: appColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Text(
                'Real Estate Agent',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'semi-bold', fontSize: 22, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Welcome to Relestate \n house buy and selling online at lowest check schedule booking',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'regular',
                      fontSize: 14,
                      color: Colors.white70),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signin()));
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
                ),
                style: blueButton(),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: Colors.white,
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSlide3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          decoration: BoxDecoration(
            color: appColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Text(
                'Buy & Sell House',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'semi-bold', fontSize: 22, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Welcome to Relestate \n house buy and selling online at lowest check schedule booking',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'regular',
                      fontSize: 14,
                      color: Colors.white70),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signin()));
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
                ),
                style: blueButton(),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: Colors.amber,
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
