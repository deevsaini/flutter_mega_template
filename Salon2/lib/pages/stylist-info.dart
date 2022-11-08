/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salon2/pages/booking.dart';
import '../components/styles.dart' as style;

class StylistInfo extends StatefulWidget {
  const StylistInfo({Key? key}) : super(key: key);
  static const String id = 'StylistInfo';

  @override
  _StylistInfoState createState() => _StylistInfoState();
}

class _StylistInfoState extends State<StylistInfo> {
  int selectedValue = 0;
  @override
  void initState() {
    super.initState();
  }

  List<String> photoList = [
    'assets/images/profile.jpg',
    'assets/images/barber.jpg',
    'assets/images/beard.jpg',
    'assets/images/beard2.jpg',
    'assets/images/profile2.jpg',
    'assets/images/profile.jpg',
    'assets/images/beard.jpg',
    'assets/images/beard.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black87),
        centerTitle: true,
        title: const Text(
          'Stylist Info',
          style: TextStyle(color: style.appColor, fontFamily: "semi-bold"),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                _buildStylist(),
                stylistDisc(),
                segmentedControl(),
                Container(
                  child: Column(children: [
                    if (selectedValue == 0)
                      _buildGrid()
                    else if (selectedValue == 1)
                      _buildGrid1()
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildFooter(),
    );
  }

  Widget _buildStylist() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/barber.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }

  Widget stylistDisc() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'John Doe ',
                      style: TextStyle(fontSize: 22, fontFamily: "bold"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('12 review',
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 16),
          const Text(
              'Hello everyone, this is john and this is dails for testing. this is  dummy details. Vivera  vivamu mi in turple. Sit Bandiya dofa the horiiszon. this is dummy text.',
              style: TextStyle(
                  fontSize: 14, color: Colors.grey, fontFamily: "medium")),
        ],
      ),
    );
  }

  Widget _buildGrid() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 100 / 100,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          children: List.generate(photoList.length, (index) {
            return InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(photoList[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            );
          })),
    );
  }

  Widget _buildGrid1() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }

  Widget segmentedControl() {
    return Container(
      height: 50,
      child: CupertinoSlidingSegmentedControl(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        groupValue: selectedValue,
        backgroundColor: Colors.black12,
        children: {
          0: buildSegment('Photos'),
          1: buildSegment('Review'),
        },
        onValueChanged: (i) {
          selectedValue = i.hashCode;
          setState(() {});
        },
      ),
    );
  }

  Widget buildSegment(String text) => Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Text(text, style: TextStyle(fontSize: 16)),
      );

  Widget _buildFooter() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: ElevatedButton(
        child: const Text("Continue to Checklist",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "medium",
            )),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Booking()));
        },
        style: ElevatedButton.styleFrom(
          primary: style.appColor,
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}

class Item {
  const Item(this.img, this.text);
  final String img;
  final String text;
}
