/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:zomato/helper/style.dart';

class rejectedOrders extends StatefulWidget {
  rejectedOrders({Key? key}) : super(key: key);

  static const String page_id = "Rejected Orders";

  @override
  _rejectedOrdersState createState() => _rejectedOrdersState();
}

enum select { daily, weekly, monthly }

class _rejectedOrdersState extends State<rejectedOrders> {
  select _site = select.daily;

  int tabID = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Rejected Orders',
        style: headText(),
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
            Text(
              'Rejected Order Trends',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            _buildSegment(),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return aleartdialog();
                    });
              },
              child: Row(
                children: [
                  Text('Daily'),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade300, blurRadius: 20),
                ],
              ),
              height: 200,
              child: Center(
                child: Text(
                  'No rejected orders in this time period',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Distribution of rejection reasons',
              style: headText(),
            ),
            Row(
              children: [
                Text('Details from'),
                SizedBox(
                  width: 5,
                ),
                Row(
                  children: [
                    Text(
                      '24 Feb to 3 Mar 2022',
                      style: TextStyle(color: appColor),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: appColor,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade300, blurRadius: 20),
                ],
              ),
              height: 200,
              child: Center(
                child: Text(
                  'No rejected orders in this time period',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: segmentDecoration(1),
                  child: Text('Rejected Orders', style: segmentText(1)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: segmentDecoration(2),
                    child: Text('Potential Sales Lost', style: segmentText(2)),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontSize: 16,
        fontFamily: tabID == val ? 'semi-bold' : 'regular',
        color: tabID == val ? appColor : Colors.grey);
  }

  segmentDecoration(val) {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 2,
                color: tabID == val ? appColor : Colors.transparent)));
  }

  Widget aleartdialog() {
    return AlertDialog(
      contentPadding: EdgeInsets.only(top: 40),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(color: Colors.grey),
                bottom: BorderSide(color: Colors.grey),
              )),
              child: Column(
                children: [
                  ListTile(
                    title: const Text('Daily'),
                    leading: Radio(
                      activeColor: appColor,
                      value: select.daily,
                      groupValue: _site,
                      onChanged: (select? value) {
                        setState(() {
                          _site = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Weekly'),
                    leading: Radio(
                      activeColor: appColor,
                      value: select.weekly,
                      groupValue: _site,
                      onChanged: (select? value) {
                        setState(() {
                          _site = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Monthly'),
                    leading: Radio(
                      activeColor: appColor,
                      value: select.monthly,
                      groupValue: _site,
                      onChanged: (select? value) {
                        setState(() {
                          _site = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'CANCEL',
                    style: TextStyle(color: appColor, fontFamily: 'medium'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'OK',
                    style: TextStyle(color: appColor, fontFamily: 'medium'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
