/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness/helper/style.dart' as style;
import 'package:fitness/pages/fullbodyWorkout.dart';
import 'package:fitness/pages/notification.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';

class homeScreen extends StatefulWidget {
  homeScreen({Key? key}) : super(key: key);

  static const String page_id = "Home";

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int height = 48;
  List<int> work = [1, 2, 3, 4, 5];

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
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back,',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                Text(
                  'Stefani Wong',
                  style: style.headText(),
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => notification()));
                },
                icon: Icon(
                  Icons.notification_add_outlined,
                  color: Colors.black,
                ))
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: style.appColor.withOpacity(0.6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'BMI (Body Mass Index)',
                        style: style.mediumText(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Easy | 30mins | 180kCal'),
                      SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(style.secondaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          child: Text(
                            'View More',
                            style:
                                TextStyle(fontSize: 14, fontFamily: 'medium'),
                          ),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 120,
                    child: SfCircularChart(palette: [
                      style.secondaryColor,
                      Colors.white
                    ], series: <CircularSeries>[
                      PieSeries<ChartData, String>(
                          dataSource: [
                            ChartData('Jan', 20),
                            ChartData('Feb', 80),
                          ],
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y)
                    ]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: style.appColor.withOpacity(0.3),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today Target',
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
              'Activity Status',
              style: style.headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: style.appColor.withOpacity(0.4)),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Heart Rate',
                    style: style.mediumText(),
                  ),
                  Text(
                    '78 BPM',
                    style: TextStyle(
                        color: style.appColor,
                        fontFamily: 'medium',
                        fontSize: 16),
                  ),
                  Container(
                    height: 120,
                    child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(
                        axisLine: AxisLine(width: 0),
                        majorGridLines: MajorGridLines(width: 0),
                        isVisible: false,
                      ),
                      primaryYAxis: CategoryAxis(
                        axisLine: AxisLine(width: 0),
                        isVisible: false,
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
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 120,
                  child: Column(
                    children: [
                      Container(
                        width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Water Intake',
                              style: style.headText(),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '4 Liters',
                              style: TextStyle(
                                  color: style.appColor,
                                  fontFamily: 'medium',
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Real time Update',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            timeLine('6am - 8am', '600ml'),
                            timeLine('9am - 11am', '500ml'),
                            timeLine('11am- 2pm', '1000ml'),
                            timeLine('2pm- 4pm', '700ml'),
                            timeLine('4pm -now', '900ml'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sleep',
                              style: style.headText(),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '8h 20m',
                              style: TextStyle(
                                  color: style.appColor,
                                  fontFamily: 'medium',
                                  fontSize: 16),
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
                                      xValueMapper: (SalesData sales, _) =>
                                          sales.year,
                                      yValueMapper: (SalesData sales, _) =>
                                          sales.sales)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Calories',
                              style: style.headText(),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '760 kCal',
                              style: TextStyle(
                                  color: style.appColor,
                                  fontFamily: 'medium',
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            new CircularPercentIndicator(
                              radius: 50.0,
                              animation: true,
                              animationDuration: 1200,
                              lineWidth: 10.0,
                              percent: 0.4,
                              center: new Text(
                                "230kCal \n left",
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                    fontFamily: 'medium', fontSize: 16.0),
                              ),
                              circularStrokeCap: CircularStrokeCap.butt,
                              backgroundColor: style.appColor,
                              progressColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Workout Progress',
                  style: style.headText(),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: style.appColor),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Row(
                      children: [
                        Text(
                          'Weekly',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Latest Workout',
                  style: style.headText(),
                ),
                Text('See more')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            for (var i in work) workout(),
          ],
        ),
      ),
    );
  }

  Widget timeLine(text, total) {
    return Container(
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        indicatorStyle: IndicatorStyle(color: style.secondaryColor),
        beforeLineStyle: LineStyle(
          color: style.secondaryColor,
        ),
        lineXY: 0.1,
        endChild: Container(
          constraints: const BoxConstraints(
            minHeight: 50,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                ),
                Text(
                  total,
                  style: TextStyle(color: style.secondaryColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget workout() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
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
                    '180 Calories Burn | 20minutes',
                    style: style.simpleText(),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Colors.white,
                        activeTrackColor: style.appColor,
                        thumbColor: Colors.transparent,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 0.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 0.0),
                        trackHeight: 10),
                    child: Slider(
                      value: height.toDouble(),
                      min: 0,
                      max: 100.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Icon(
            Icons.chevron_right_rounded,
            color: style.secondaryColor,
          )
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
