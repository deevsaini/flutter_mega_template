/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:travelo/pages/addPassengerPage.dart';
import 'package:travelo/utilities/constantPage.dart' as style;

class bookFlightPage extends StatefulWidget {
  bookFlightPage({Key? key}) : super(key: key);

  static const String pageId = 'bookFlightPage';

  @override
  State<bookFlightPage> createState() => _bookFlightPageState();
}

class _bookFlightPageState extends State<bookFlightPage> {
  int tabID = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF0F2F6),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              _buildProfile(),
            ],
          ),
          _buildSegment(),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.flight,
                      color: style.appColor,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: style.appColor,
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Jkarta',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'bold',
                          fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.more_vert,
                      color: style.appColor,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.orange,
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'To',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Surbhaya',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'bold',
                          fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
          _buildContent(Colors.orange.withOpacity(0.3), Icons.calendar_month,
              Colors.orange, 'Departure', 'Select Date'),
          _buildContent(Colors.lightBlue.withOpacity(0.3), Icons.calendar_month,
              Colors.lightBlue, 'Return', 'Select Date'),
          _buildContent(Colors.red.withOpacity(0.3), Icons.person, Colors.red,
              'Passenger', '1 Passenger'),
          _buildContent(Colors.green.withOpacity(0.3), Icons.room, Colors.green,
              'Class', 'Economy'),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
        image: DecorationImage(
            image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    'Book Your \nFlight',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'bold', color: Colors.white, fontSize: 30),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(bgclr, icn, icnclr, txt1, txt2) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: bgclr,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(
                icn,
                color: icnclr,
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$txt1',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '$txt2',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'bold', fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => addPassengerPage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Search',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                tabID = 1;
              });
            },
            child: Container(
              height: 40,
              decoration: segmentDecoration(1),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('On Way', style: segmentText(1)),
              )),
            ),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  tabID = 2;
                });
              },
              child: Container(
                height: 40,
                decoration: segmentDecoration(2),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Round Trip', style: segmentText(2)),
                )),
              )),
          InkWell(
              onTap: () {
                setState(() {
                  tabID = 3;
                });
              },
              child: Container(
                height: 40,
                decoration: segmentDecoration(3),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Multi City', style: segmentText(3)),
                )),
              )),
        ],
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
      color: tabID == val ? Colors.orange : style.appColor.withOpacity(0.3),
      borderRadius: BorderRadius.circular(50),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: tabID == val ? 'bold' : 'semibold',
        color: tabID == val ? Colors.white : style.appColor);
  }
}
