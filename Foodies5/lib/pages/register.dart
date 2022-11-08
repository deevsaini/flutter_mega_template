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
import 'package:food2/helper/style.dart' as style;
import 'package:food2/pages/login.dart';
import 'package:food2/pages/selectDeliveryLocation.dart';

class register extends StatefulWidget {
  register({Key? key}) : super(key: key);

  static const String page_id = "Register";

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: _currentIndex == 0
          ? bottomNav1()
          : _currentIndex == 1
              ? bottomNav2()
              : _currentIndex == 2
                  ? bottomNav3()
                  : _currentIndex == 3
                      ? bottomNav4()
                      : _currentIndex == 4
                          ? bottomNav5()
                          : Container(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.help_outline_outlined),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Container(
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
            items: [1, 2, 3, 4, 5].map((i) {
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
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              if (i == 1)
                                _buildSlide1()
                              else if (i == 2)
                                _buildSlide2()
                              else if (i == 3)
                                _buildSlide3()
                              else if (i == 4)
                                _buildSlide4()
                              else if (i == 5)
                                _buildSlide5()
                            ],
                          ),
                        ),
                      ],
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What\'s your number?',
            style: style.headText(),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(flex: 3, child: style.onlyTextInput('+91')),
              SizedBox(width: 10),
              Expanded(flex: 9, child: style.onlyTextInput('999-888-7776')),
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What\'s Email Address?',
            style: style.headText(),
          ),
          SizedBox(
            height: 30,
          ),
          style.onlyTextInput('jaydeephirani@gmail.com')
        ],
      ),
    );
  }

  Widget _buildSlide3() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Create your account password',
            style: style.headText(),
          ),
          SizedBox(
            height: 30,
          ),
          style.onlyTextInput('Minimum 8 characters')
        ],
      ),
    );
  }

  Widget _buildSlide4() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What\'s your name?',
            style: style.headText(),
          ),
          SizedBox(
            height: 30,
          ),
          style.onlyTextInput('Jaydeep hirani')
        ],
      ),
    );
  }

  Widget _buildSlide5() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Your personal information \n is all set up',
              textAlign: TextAlign.center,
              style: style.headText(),
            ),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundColor: style.appColor,
              radius: 60,
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 50,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'lorem Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industr',
              textAlign: TextAlign.center,
              style: style.simpleText(),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNav1() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              _controller.nextPage();
            },
            backgroundColor: style.appColor,
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }

  Widget bottomNav2() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              _controller.nextPage();
            },
            backgroundColor: style.appColor,
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }

  Widget bottomNav3() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              _controller.nextPage();
            },
            backgroundColor: style.appColor,
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }

  Widget bottomNav4() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              _controller.nextPage();
            },
            backgroundColor: style.appColor,
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }

  Widget bottomNav5() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => selectDeliveryAddress()));
        },
        child: Text(
          'Next',
          style: TextStyle(fontFamily: 'medium', fontSize: 16),
        ),
        style: style.simpleButton(),
      ),
    );
  }
}
