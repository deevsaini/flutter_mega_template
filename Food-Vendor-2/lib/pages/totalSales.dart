/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:zomato/helper/style.dart';

class totalSales extends StatefulWidget {
  totalSales({Key? key}) : super(key: key);

  static const String page_id = "Total Sales";

  @override
  _totalSalesState createState() => _totalSalesState();
}

class _totalSalesState extends State<totalSales> {
  List<String>? _axis;
  String? _selectedAxisType;
  String? _selectedAxis;
  double? _crossAt;
  TooltipBehavior? _tooltipBehavior;

  final List<ChartData> chartData = [
    ChartData('Breakfast', 43, Colors.pink),
    ChartData('Lunch', 39, Colors.blue),
    ChartData('Snacks', 6, Colors.yellow),
    ChartData('Dinner', 6, Colors.grey),
    ChartData('Late night', 6, Colors.greenAccent),
  ];
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
        'Total Sales',
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
              'Delivered order trends',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            _buildSegment(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('Daily'),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              child: _buildBarChart(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF394a84),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Increase your average order value',
                    style: TextStyle(
                      fontFamily: 'medium',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Add combos to your menu for higher revenue. For eg: Dal Makhni + Tandoori Roti Combo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Mark best-selling and higher priced items with images as recommended for your customers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 140,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Go to Menu'),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.arrow_right)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Mealtime distribution of your orders',
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
            RichText(
              text: TextSpan(
                text: '42 ',
                style: TextStyle(
                    fontFamily: 'semi-bold', fontSize: 20, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: ' total number of delivered orders',
                      style: TextStyle(fontFamily: 'regular', fontSize: 14))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_right_alt,
                              color: appColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '43 % Breakfast',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_right_alt,
                              color: appColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '39% Lunch',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_right_alt,
                              color: appColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '6% Snacks',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_right_alt,
                              color: appColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '6% Dinner',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_right_alt,
                              color: appColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '6% Late night',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      child: SfCircularChart(series: <CircularSeries>[
                        DoughnutSeries<ChartData, String>(
                            dataSource: chartData,
                            pointColorMapper: (ChartData data, _) => data.color,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y)
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: '₹7000 ',
                style: TextStyle(
                    fontFamily: 'semi-bold', fontSize: 20, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: ' total sales from delivered orders',
                      style: TextStyle(fontFamily: 'regular', fontSize: 14))
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_right_alt,
                            color: appColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '43 % Breakfast',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_right_alt,
                            color: appColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '39% Lunch',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_right_alt,
                            color: appColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '6% Snacks',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_right_alt,
                            color: appColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '6% Dinner',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_right_alt,
                            color: appColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '6% Late night',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    child: SfCircularChart(series: <CircularSeries>[
                      DoughnutSeries<ChartData, String>(
                          dataSource: chartData,
                          pointColorMapper: (ChartData data, _) => data.color,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y)
                    ]),
                  ),
                ),
              ],
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
                  child: Text('Delivered Order', style: segmentText(1)),
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
                    child: Text('Total Sales', style: segmentText(2)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 3;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: segmentDecoration(3),
                    child: Text('Average', style: segmentText(3)),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontSize: 18,
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

  SfCartesianChart _buildBarChart() {
    return SfCartesianChart(
      title: ChartTitle(
        text: 'Total numeber of delivered order',
        alignment: ChartAlignment.near,
        textStyle: TextStyle(fontSize: 14, color: Colors.grey),
      ),
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
          majorGridLines: const MajorGridLines(width: 1),
          axisLine: AxisLine(width: 1),
          labelIntersectAction: AxisLabelIntersectAction.wrap,
          crossesAt: _crossAt,
          placeLabelsNearAxisLine: false),
      primaryYAxis: NumericAxis(
        axisLine: const AxisLine(width: 1),
        isVisible: true,
        minimum: 0,
        maximum: 100,
        majorTickLines: const MajorTickLines(size: 1),
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
            x: '2006',
            y: 65,
            pointColor: appColor,
          ),
          ChartSampleData(
            x: '2007',
            y: 59,
            pointColor: appColor,
          ),
          ChartSampleData(
            x: '2008',
            y: 80,
            pointColor: appColor,
          ),
          ChartSampleData(
            x: '2009',
            y: 81,
            pointColor: appColor,
          ),
          ChartSampleData(
            x: '2010',
            y: 56,
            pointColor: appColor,
          ),
          ChartSampleData(
            x: '2011',
            y: 55,
            pointColor: appColor,
          ),
          ChartSampleData(
            x: '2012',
            y: 40,
            pointColor: appColor,
          )
        ],
        xValueMapper: (ChartSampleData sales, _) => sales.x as String,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
        pointColorMapper: (ChartSampleData sales, _) => sales.pointColor,
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

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
