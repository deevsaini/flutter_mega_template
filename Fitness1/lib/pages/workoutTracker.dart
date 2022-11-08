/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness/pages/description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart' as style;
import 'package:syncfusion_flutter_charts/charts.dart';

class workoutTracker extends StatefulWidget {
  workoutTracker({Key? key}) : super(key: key);

  static const String page_id = "Workout Tracker";

  @override
  _workoutTrackerState createState() => _workoutTrackerState();
}

class _workoutTrackerState extends State<workoutTracker> {
  bool _switchValue = true;
  bool _switchfalse = false;

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
      backgroundColor: style.appColor,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Text(
            'Workout Tracker',
            style: TextStyle(
                fontSize: 18, fontFamily: 'semi-bold', color: Colors.white),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: style.appColor),
            height: 180,
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
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: style.appColor.withOpacity(0.4),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Daily Sleep Schedule',
                          style: style.mediumText(),
                        ),
                        style.elevatedButton('Check')
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Workout',
                      style: style.headText(),
                    ),
                    Text('See more')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset(
                          'assets/images/drink.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Foolbody Workout',
                                style: style.mediumText(),
                              ),
                              Text(
                                'Today, 03:00pm',
                                style: style.simpleText(),
                              )
                            ],
                          ),
                        ),
                      ),
                      Transform.scale(
                        scale: 0.8,
                        child: CupertinoSwitch(
                          value: _switchValue,
                          activeColor: style.secondaryColor,
                          onChanged: (bool value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset(
                          'assets/images/drink.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Upperbody Workout',
                                style: style.mediumText(),
                              ),
                              Text(
                                'June 05, 02:00pm',
                                style: style.simpleText(),
                              )
                            ],
                          ),
                        ),
                      ),
                      Transform.scale(
                        scale: 0.8,
                        child: CupertinoSwitch(
                          value: _switchfalse,
                          activeColor: style.secondaryColor,
                          onChanged: (bool value) {
                            setState(() {
                              _switchfalse = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                train(),
                train(),
                train(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget train() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: style.appColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fullbody Workout',
                style: style.mediumText(),
              ),
              Text('11 Exercise | 32 mins'),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Text(
                    'View more',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'medium',
                        color: style.appColor),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => description()));
                },
              ),
            ],
          ),
          ClipRRect(
            child: CircleAvatar(
              radius: 50,
              child: Image.asset(
                'assets/images/e1.png',
                fit: BoxFit.cover,
              ),
            ),
          )
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
