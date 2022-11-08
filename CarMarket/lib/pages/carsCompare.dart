/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:car/helper/style.dart';
import 'package:car/pages/comparision.dart';
import 'package:flutter/material.dart';

class carsCompare extends StatefulWidget {
  carsCompare({Key? key}) : super(key: key);

  static const String page_id = "Cars Compare";

  @override
  State<carsCompare> createState() => _carsCompareState();
}

class _carsCompareState extends State<carsCompare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Cars Compare',
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/welcome.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    'FERRARI',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '2015 FERRARI SERGIO',
                    style: headText(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: appColor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_circle_outline,
                    color: appColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Add a car',
                    style: TextStyle(color: appColor),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'POPULAR COMPARISONS WITH',
              style: TextStyle(fontSize: 16, fontFamily: 'medium'),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  compare(),
                  compare(),
                  compare(),
                  compare(),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => comparision()));
              },
              child: Text('COMPARE'),
              style: simpleButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget compare() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/welcome.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                'FERRARI',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '2015 FERRARI SERGIO',
                style: headText(),
              )
            ],
          ),
          Icon(
            Icons.add_circle_outline,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
