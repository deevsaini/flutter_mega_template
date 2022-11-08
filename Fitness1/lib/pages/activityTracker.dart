/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart' as style;
import 'package:syncfusion_flutter_charts/charts.dart';

class activityTracker extends StatefulWidget {
  activityTracker({Key? key}) : super(key: key);

  static const String page_id = "Activity Tracker";

  @override
  _activityTrackerState createState() => _activityTrackerState();
}

class _activityTrackerState extends State<activityTracker> {
  List<String>? _axis;
  String? _selectedAxisType;
  String? _selectedAxis;
  double? _crossAt;
  TooltipBehavior? _tooltipBehavior;

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
        'Activity Tracker',
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: style.appColor.withOpacity(0.3),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Today Target',
                          style: style.headText(),
                        ),
                        Container(
                            height: 25,
                            width: 25,
                            decoration: ShapeDecoration(
                              shape: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: style.appColor)),
                              color: style.appColor,
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset(
                                    'assets/images/water.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '8L',
                                        style: TextStyle(
                                            color: style.appColor,
                                            fontFamily: 'medium',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        'Water Intack',
                                        style: style.simpleText(),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset(
                                    'assets/images/foot.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '2400',
                                        style: TextStyle(
                                            color: style.appColor,
                                            fontFamily: 'medium',
                                            fontSize: 16),
                                      ),
                                      Text(
                                        'Foot Steps',
                                        style: style.simpleText(),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
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
                  'Activity Progress',
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
              child: _buildBarChart(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Latest Activity',
                  style: style.headText(),
                ),
                Text(
                  'See more',
                  style: style.simpleText(),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
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
                            'Drinking 300ml Water',
                            style: style.mediumText(),
                          ),
                          Text(
                            'About 3 minutes Ago',
                            style: style.simpleText(),
                          )
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 20,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
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
                            'Eat Snack (Fitbar)',
                            style: style.mediumText(),
                          ),
                          Text(
                            'About 10 minutes Ago',
                            style: style.simpleText(),
                          )
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SfCartesianChart _buildBarChart() {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
          majorGridLines: const MajorGridLines(width: 0),
          axisLine: AxisLine(width: 0),
          labelIntersectAction: AxisLabelIntersectAction.wrap,
          crossesAt: _crossAt,
          placeLabelsNearAxisLine: false),
      primaryYAxis: NumericAxis(
        axisLine: const AxisLine(width: 0),
        isVisible: false,
        minimum: 0,
        maximum: 20,
        majorTickLines: const MajorTickLines(size: 0),
      ),
      series: _getSeries(),
      tooltipBehavior: _tooltipBehavior,
    );
  }

  List<ChartSeries<ChartSampleData, String>> _getSeries() {
    return <ChartSeries<ChartSampleData, String>>[
      ColumnSeries<ChartSampleData, String>(
        dataSource: <ChartSampleData>[
          ChartSampleData(
            x: 'Sun',
            y: 7,
            pointColor: style.appColor,
          ),
          ChartSampleData(
            x: 'Mon',
            y: 14,
            pointColor: style.secondaryColor,
          ),
          ChartSampleData(
            x: 'Tue',
            y: 10,
            pointColor: style.appColor,
          ),
          ChartSampleData(
            x: 'Wed',
            y: 17,
            pointColor: style.secondaryColor,
          ),
          ChartSampleData(
            x: 'Thu',
            y: 15,
            pointColor: style.appColor,
          ),
          ChartSampleData(
            x: 'Fri',
            y: 7,
            pointColor: style.secondaryColor,
          ),
          ChartSampleData(
            x: 'Sat',
            y: 11,
            pointColor: style.appColor,
          )
        ],
        xValueMapper: (ChartSampleData sales, _) => sales.x as String,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
        pointColorMapper: (ChartSampleData sales, _) => sales.pointColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    ];
  }

  @override
  void dispose() {
    _axis!.clear();
    super.dispose();
  }
}

class ChartSampleData {
  ChartSampleData(
      {this.x,
      this.y,
      this.xValue,
      this.yValue,
      this.secondSeriesYValue,
      this.thirdSeriesYValue,
      this.pointColor,
      this.size,
      this.text,
      this.open,
      this.close,
      this.low,
      this.high,
      this.volume});

  final dynamic x;

  final num? y;

  final dynamic xValue;

  final num? yValue;

  final num? secondSeriesYValue;

  final num? thirdSeriesYValue;

  final Color? pointColor;

  final num? size;

  final String? text;

  final num? open;

  final num? close;

  final num? low;

  final num? high;

  final num? volume;
}
