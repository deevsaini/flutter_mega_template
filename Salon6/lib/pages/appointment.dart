/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart' as style;
import 'package:salon/pages/cancelAppointment.dart';

class appointment extends StatefulWidget {
  appointment({Key? key}) : super(key: key);

  static const String page_id = "Appointment";

  @override
  _appointmentState createState() => _appointmentState();
}

class _appointmentState extends State<appointment> {
  bool _switchValue = true;

  Object get value => true;

  int segmentedControlGroupValue = 0;
  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text("Upcoming"),
    1: Text("Pass"),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              child: Text(
                'Your Appointments',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                    fontFamily: 'bold', fontSize: 20, color: Colors.black),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey.shade300),
                    ),
                    child: SizedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.map_outlined,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey.shade300),
                    ),
                    child: SizedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.segment,
                          color: Colors.black54,
                        ),
                      ),
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

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSegment(),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(children: [
                    if (segmentedControlGroupValue == 0)
                      upcomingContainer()
                    else if (segmentedControlGroupValue == 1)
                      passContainer()
                  ]),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return SizedBox(
      width: double.infinity,
      child: CupertinoSlidingSegmentedControl(
        groupValue: segmentedControlGroupValue,
        children: myTabs,
        onValueChanged: (i) {
          this.setState(() {
            segmentedControlGroupValue = i.hashCode;
          });
        },
      ),
    );
  }

  Widget upcomingContainer() {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '12 September 2021, 08:00',
            style: style.headText(),
          ),
          SizedBox(
            height: 20,
          ),
          appointmentContent(),
          notification('30min before'),
          SizedBox(
            height: 30,
          ),
          Text(
            '24 September 2021, 11:00',
            style: style.headText(),
          ),
          appointmentContent(),
          notification('Remind Me'),
          SizedBox(
            height: 30,
          ),
          Text(
            '28 September 2021, 11:00',
            style: style.headText(),
          ),
          appointmentContent(),
          notification('Remind Me'),
        ],
      ),
    );
  }

  Widget passContainer() {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '12 September 2021, 08:00',
            style: style.headText(),
          ),
          appointmentContent(),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                reviewButton(),
                SizedBox(
                  width: 10,
                ),
                rescheduleButton(),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '24 September 2021, 08:00',
            style: style.headText(),
          ),
          appointmentContent(),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                reviewButton(),
                SizedBox(
                  width: 10,
                ),
                rescheduleButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget appointmentContent() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/salon.webp',
                      height: 100,
                      width: 105,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bella Renova',
                        style: style.headText(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          '6391 Elgin St Celina Deliware 10299',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          style: TextStyle(
                              fontSize: 16, color: style.greyTextColor),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Services: Regular haircut , Classic shaving',
                        style: TextStyle(color: style.appColor, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget notification(time) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Transform.scale(
              scale: 0.8,
              child: CupertinoSwitch(
                activeColor: style.appColor,
                value: _switchValue,
                onChanged: (value) {
                  setState(() {
                    _switchValue = value;
                  });
                },
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(time)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            cancelButton(),
          ],
        ),
      ],
    );
  }

  Widget cancelButton() {
    return OutlinedButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext Context) {
              return cancelAppointment();
            });
      },
      child: Text(
        'Cancel',
        style: TextStyle(color: Colors.black, fontFamily: 'semi-bold'),
      ),
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        side: BorderSide(width: 1.0, color: Colors.grey.shade400),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget reviewButton() {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        'Review',
        style: TextStyle(color: Colors.black, fontFamily: 'semi-bold'),
      ),
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        side: BorderSide(width: 1.0, color: Colors.grey.shade400),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget rescheduleButton() {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        'Reschedule',
        style: TextStyle(color: Colors.white, fontFamily: 'semi-bold'),
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: style.appColor,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        side: BorderSide(width: 1.0, color: style.appColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
