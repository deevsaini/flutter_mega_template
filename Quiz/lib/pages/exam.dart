/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quize/helper/style.dart';
import 'package:quize/pages/tabs.dart';

class exam extends StatefulWidget {
  exam({Key? key}) : super(key: key);

  static const String page_id = "Exam";

  @override
  _examState createState() => _examState();
}

class _examState extends State<exam> {
  int tabId = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
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
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      if (tabId == 1)
                        _buildtop1()
                      else if (tabId == 2)
                        _buildtop2()
                    ],
                  ),
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: _buildMenu(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenu() {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              if (tabId == 1) _buildSlide1() else if (tabId == 2) _buildSlide2()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildtop1() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Question 1',
              style: TextStyle(fontFamily: 'medium', fontSize: 16),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Icon(
                    Icons.alarm,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('3:26')
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        LinearProgressIndicator(
          value: 0.4,
          minHeight: 10,
        )
      ],
    );
  }

  Widget _buildSlide1() {
    return Container(
      child: Column(
        children: [
          Text(
            'It has survived not only five centuries, but also the leap into electronic typesetting',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),
          fieldContainer('Medium'),
          fieldContainer('Transition'),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Message',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Icon(
                  Icons.check_circle,
                  color: Colors.white,
                )
              ],
            ),
          ),
          fieldContainer('Protocol'),
          simpleButton(() {
            setState(() {
              tabId = 2;
            });
          }, 'Next'),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFE4E5F0)),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => tabs()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Exit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'regular',
                        fontSize: 16,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildtop2() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Question 2',
              style: TextStyle(fontFamily: 'medium', fontSize: 16),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Icon(
                    Icons.alarm,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('3:26')
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        LinearProgressIndicator(
          value: 0.5,
          minHeight: 10,
        )
      ],
    );
  }

  Widget _buildSlide2() {
    return Container(
      child: Column(
        children: [
          Text(
            'It has survived not only five centuries, but also the leap into electronic typesetting',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),
          fieldContainer('Medium'),
          fieldContainer('Transition'),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Message',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
          fieldContainer('Protocol'),
          simpleButton(() {
            // setState(() {
            //   tabId = 2;
            // });
          }, 'Next'),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 110,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFE4E5F0)),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => tabs()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Exit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'regular',
                        fontSize: 16,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget fieldContainer(text) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
