/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fooddoor/helper/style.dart' as style;
import 'package:fooddoor/pages/signIn.dart';

class slider extends StatefulWidget {
  slider({Key? key}) : super(key: key);

  static const String page_id = "Slider";

  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Stack(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 150),
                            child: Center(
                              child: i == 1
                                  ? _buildSlide1()
                                  : (i == 2
                                      ? _buildSlide2()
                                      : (i == 3
                                          ? _buildSlide3()
                                          : Container())),
                            ),
                          ),

                          //

                          i == 1
                              ? _buildBottomNavigationBar1()
                              : (i == 2
                                  ? _buildBottomNavigationBar2()
                                  : (i == 3
                                      ? _buildBottomNavigationBar3()
                                      : Container()))
                        ],
                      ));
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSlide1() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/p1.png'),
                width: 180,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text('Discover Places Near You',
                    textAlign: TextAlign.center, style: style.mediumText()),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                    'We make it simple to find the \n food you crave. enter your address \n and let us do reset.',
                    textAlign: TextAlign.center,
                    style: style.regularText()),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSlide2() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/p2.png'),
                width: 180,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text('Order your favourite',
                    textAlign: TextAlign.center, style: style.mediumText()),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                    'When you order eat street, we will \n hook you up with exclusive coupens, \n special sand rewards.',
                    textAlign: TextAlign.center,
                    style: style.regularText()),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSlide3() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/p3.png'),
                width: 180,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text('Fastest delivery',
                    textAlign: TextAlign.center, style: style.mediumText()),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                    'We make food ordering fast, simple \n and free -no matter if you order \n online or cash.',
                    textAlign: TextAlign.center,
                    style: style.regularText()),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar1() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            heroTag: 'tab2',
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new signIn()));
            },
            backgroundColor: Colors.white,
            child: Text(
              'SKIP',
              style: TextStyle(color: Colors.black),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _controller.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.linear);
            },
            backgroundColor: Color.fromARGB(255, 190, 211, 214),
            child: Text(
              'NEXT',
              style: TextStyle(
                  fontSize: 12, fontFamily: 'medium', color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar2() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            heroTag: 'tab2',
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new signIn()));
            },
            backgroundColor: Colors.white,
            child: Text(
              'SKIP',
              style: TextStyle(color: Colors.black),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _controller.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.linear);
            },
            backgroundColor: Color.fromARGB(255, 190, 211, 214),
            child: Text(
              'NEXT',
              style: TextStyle(
                  fontSize: 12, fontFamily: 'medium', color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar3() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: ElevatedButton(
            child: const Text(
              "Get Started",
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
            ),
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new signIn()));
            },
            style: style.simpleButton(),
          ),
        ),
      ),
    );
  }
}
