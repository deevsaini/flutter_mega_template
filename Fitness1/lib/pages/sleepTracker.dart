/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart' as style;
import 'package:syncfusion_flutter_charts/charts.dart';

class sleepTracker extends StatefulWidget {
  sleepTracker({Key? key}) : super(key: key);

  static const String page_id = "Sleep Tracker";

  @override
  _sleepTrackerState createState() => _sleepTrackerState();
}

class _sleepTrackerState extends State<sleepTracker> {
  bool _switchValue = true;
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
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Sleep Tracker',
        style: style.headText(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
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
            Container(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: style.appColor.withOpacity(0.8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Night Sleep',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'medium',
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '8h 20m',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'medium',
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(
                        isVisible: false,
                      ),
                      primaryYAxis: CategoryAxis(
                        isVisible: false,
                      ),
                      series: <LineSeries<SalesData, String>>[
                        LineSeries<SalesData, String>(
                            dataSource: <SalesData>[
                              SalesData('Sun', 8),
                              SalesData('Mon', 5),
                              SalesData('Tue', 6),
                              SalesData('Wed', 5),
                              SalesData('Thu', 3),
                              SalesData('Fri', 4),
                              SalesData('Sat', 1),
                            ],
                            xValueMapper: (SalesData sales, _) => sales.year,
                            yValueMapper: (SalesData sales, _) => sales.sales)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
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
            Text(
              'Today Schedule',
              style: style.headText(),
            ),
            SizedBox(
              height: 20,
            ),
            schedule(Image.asset('assets/images/bed.png'), 'Bedtime', '09:00pm',
                'in 6hours 22minutes'),
            schedule(Image.asset('assets/images/clock.png'), 'Alarm', '05:10am',
                'in 14hours 30minutes'),
          ],
        ),
      ),
    );
  }

  Widget schedule(image, text, time, left) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(20),
                  child: FittedBox(
                    child: image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            text,
                            style: style.mediumText(),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            time,
                            style: style.simpleText(),
                          )
                        ],
                      ),
                      Text(
                        left,
                        style: style.simpleText(),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Icon(Icons.more_vert),
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
            ],
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
