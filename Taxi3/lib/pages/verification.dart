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
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:ride/helper/style.dart';
import 'package:ride/pages/home.dart';
import 'package:ride/pages/signIn.dart';

class verification extends StatefulWidget {
  verification({Key? key}) : super(key: key);

  static const String page_id = "Verification";

  @override
  _verificationState createState() => _verificationState();
}

class _verificationState extends State<verification> {
  final CarouselController _controller = CarouselController();

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return CarouselSlider(
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (i == 1)
                      detailContainer()
                    else if (i == 2)
                      verifyContainer()
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget detailContainer() {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  appColor,
                  styleColor,
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 16),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 1.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Complete Step',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'semi-bold',
                        color: styleColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          decoration: simpleInputText('+91'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 10,
                        child: TextField(
                          decoration: simpleInputText('9898 300 300'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  gradientButton(() {
                    _controller.nextPage();
                  }, 'GET VERIFY CODE')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget verifyContainer() {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  appColor,
                  styleColor,
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 16),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 1.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter Code',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'semi-bold',
                        color: styleColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Enter the 4 digit code we send to \n +91 9898 300 300'),
                  SizedBox(
                    height: 30,
                  ),
                  OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 60,
                    style: TextStyle(fontSize: 15),
                    textFieldAlignment: MainAxisAlignment.spaceEvenly,
                    fieldStyle: FieldStyle.box,
                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  gradientButton(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => home()));
                  }, 'CONTINUE')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
