/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/friends.dart';
import 'package:elearn/pages/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class profile extends StatefulWidget {
  profile({Key? key}) : super(key: key);

  static const String page_id = "Profile";

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  int _value = 70;
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(210.0),
      child: SafeArea(
        child: AppBar(
          backgroundColor: appColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: appColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
              ),
            ),
            margin: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jaydeep',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'medium',
                              fontSize: 20),
                        ),
                        Text(
                          'JAY12121212',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        // Row(
                        //   children: [
                        //     Expanded(
                        //       flex: 5,
                        //       child: SliderTheme(
                        //         child: Slider(
                        //           value: _value.toDouble(),
                        //           min: 0.0,
                        //           max: 100.0,
                        //           activeColor: Colors.orange,
                        //           inactiveColor: Colors.grey,
                        //           onChanged: (double newValue) {
                        //             setState(() {
                        //               _value = newValue.round();
                        //             });
                        //           },
                        //         ),
                        //         data: SliderTheme.of(context).copyWith(
                        //           trackHeight: 20,
                        //           thumbShape: SliderComponentShape.noThumb,
                        //           thumbColor: Colors.transparent,
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage('assets/images/profile.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '54',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'medium',
                              fontSize: 18),
                        ),
                        Text(
                          'Complete the exam',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '200',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'medium',
                              fontSize: 18),
                        ),
                        Text(
                          'Favourite',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(width: 1, color: Colors.white)),
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_outlined),
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
          children: [
            Container(
              height: 250,
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(
                  axisLine: AxisLine(width: 0),
                  majorGridLines: MajorGridLines(width: 0),
                ),
                primaryYAxis: CategoryAxis(
                  axisLine: AxisLine(width: 0),
                ),
                series: <LineSeries<SalesData, String>>[
                  LineSeries<SalesData, String>(
                      dataSource: <SalesData>[
                        SalesData('Sun', 2),
                        SalesData('Mon', 4),
                        SalesData('Tue', 4),
                        SalesData('Wed', 5),
                        SalesData('Thu', 6),
                        SalesData('Fri', 5),
                        SalesData('Sat', 8),
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            rowContainer(Icons.credit_card, 'Payment', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => transaction()));
            }),
            rowContainer(Icons.person, 'Your Friend', () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => friends()));
            }),
            rowContainer(Icons.settings, 'Settings', () {}),
            switchContainer(Icons.lightbulb, 'Dark light mode'),
            switchContainer(Icons.notifications, 'Study reminder'),
            switchContainer(Icons.chat_bubble, 'New exam'),
            rowContainer(Icons.help_center, 'Help Center', () {}),
            rowContainer(Icons.shield_outlined, 'Privacy & Trems', () {}),
            rowContainer(Icons.chat, 'Contact us', () {}),
          ],
        ),
      ),
    );
  }

  Widget rowContainer(icon, text, route) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
      child: InkWell(
        onTap: route,
        child: Row(
          children: [
            Icon(
              icon,
              color: appColor,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(text),
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }

  Widget switchContainer(icon, text) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
      child: Row(
        children: [
          Icon(
            icon,
            color: appColor,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(text),
            ),
          ),
          Transform.scale(
            scale: 0.8,
            child: CupertinoSwitch(
              activeColor: appColor,
              value: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
