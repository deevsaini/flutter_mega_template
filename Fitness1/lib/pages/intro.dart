/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
// ignore_for_file: camel_case_types

import 'dart:math';

import 'package:fitness/helper/style.dart' as style;
import 'package:fitness/pages/login.dart';
import 'package:fitness/pages/slider.dart';
import 'package:fitness/pages/welcome.dart';
import 'package:flutter/material.dart';

class introduction extends StatefulWidget {
  introduction({Key? key}) : super(key: key);

  static const String page_id = "Introduction";

  @override
  _introductionState createState() => _introductionState();
}

class _introductionState extends State<introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
      bottomNavigationBar: __buildbottombar(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: 'Fitnest',
                style: TextStyle(
                    fontFamily: 'bold', color: Colors.black, fontSize: 32),
                children: <TextSpan>[
                  TextSpan(
                    text: 'X',
                    style: TextStyle(
                        fontFamily: 'bold',
                        color: style.appColor,
                        fontSize: 40),
                  ),
                ],
              ),
            ),
            Text(
              'Everybody Can Train',
              style: TextStyle(fontFamily: 'regular', fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget __buildbottombar() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ElevatedButton(
        child: const Text(
          "Get Started",
          style: TextStyle(fontFamily: 'semi-bold'),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => sliderScreen()));
        },
        style: style.simpleButton(),
      ),
    );
  }
}
