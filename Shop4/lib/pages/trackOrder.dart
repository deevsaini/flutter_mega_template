/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shopping/helper/style.dart';
import 'package:shopping/pages/homeScreen.dart';
import 'package:timeline_tile/timeline_tile.dart';

class trackOrder extends StatefulWidget {
  trackOrder({Key? key}) : super(key: key);

  static const String page_id = "Track Order";

  @override
  _trackOrderState createState() => _trackOrderState();
}

class _trackOrderState extends State<trackOrder> {
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
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Track Order',
        style: TextStyle(
          fontFamily: 'medium',
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => homeScreen()));
          },
          icon: Icon(Icons.home_outlined),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: '444 555 5656',
                hintStyle: TextStyle(color: Colors.black54),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search_rounded),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 1, color: Colors.grey.shade400))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Number',
                    style: greyText(),
                  ),
                  Text('444 555 5656'),
                  Text(
                    'Details',
                    style: blueText(),
                  )
                ],
              ),
            ),
            orderDetails('Order Date', '21 Mar at 09:00'),
            orderDetails('Status', 'Delivered'),
            orderDetails('Shipped Via', 'FedEx'),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1, color: Colors.grey.shade400),
                  bottom: BorderSide(width: 1, color: Colors.grey.shade400),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Shipped Date',
                        style: greyText(),
                      ),
                      Text(
                        '01 Apr 2022',
                        style: TextStyle(
                            fontFamily: 'semi-bold',
                            fontSize: 22,
                            color: appColor),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Order Amount',
                        style: greyText(),
                      ),
                      Text(
                        '\$104.10',
                        style: TextStyle(
                          fontFamily: 'semi-bold',
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            timeLine(
                '21 Mar at 09:00 AM', 'Documantation Prepared', 'Arrived Hub'),
            timeLine('22 Mar at 09:00 AM', 'Booking Arranged', 'Arrived Hub'),
            timeLine('23 Mar at 09:00 AM', 'Collected', 'Collected'),
            timeLine('23 Mar at 09:00 AM', 'In Transit', 'In Transit'),
            timeLine('23 Mar at 09:00 AM', 'Arrived at Destination',
                'Arrived at Destination'),
            timeLine(
                '24 Mar at 09:00 AM', 'Out for Delivery', 'Out for Delivery'),
            timeLine('26 Mar at 09:00 AM', 'Delivered', 'Delivered'),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Support'),
                    style: blueOutlineButton(),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('FAQ\'s'),
                    style: blueOutlineButton(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget orderDetails(left, right) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          border:
              Border(top: BorderSide(width: 1, color: Colors.grey.shade400))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            left,
            style: greyText(),
          ),
          Text(right),
        ],
      ),
    );
  }

  Widget timeLine(date, upr, lwr) {
    return Container(
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        indicatorStyle: IndicatorStyle(color: appColor),
        beforeLineStyle: LineStyle(
          color: appColor,
        ),
        lineXY: 0.3,
        endChild: Container(
          constraints: const BoxConstraints(
            minHeight: 60,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  upr,
                  style: TextStyle(fontSize: 14, fontFamily: 'medium'),
                ),
                Text(
                  lwr,
                  style: greyText(),
                ),
              ],
            ),
          ),
        ),
        startChild: Container(
          child: Text(date),
        ),
      ),
    );
  }
}
