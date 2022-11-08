/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Operation extends StatefulWidget {
  static const String id = 'Operation';

  const Operation({Key? key}) : super(key: key);

  @override
  _OperationState createState() => _OperationState();
}

class _OperationState extends State<Operation> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  final List _elements = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];
  int selectedValue = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Operations",
            style: TextStyle(
              fontFamily: 'medium',
              color: Colors.black,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
            ),
          )
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30),
          Center(child: _buildHead()),
          SizedBox(height: 30),
          segmentedControl(),
          SizedBox(height: 30),
          Container(
            child: Column(children: [
              if (selectedValue == 0)
                _buildIncome()
              else if (selectedValue == 1)
                _buildExpence()
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildHead() {
    return Column(
      children: [
        Text("Total Balance:",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
            )),
        SizedBox(height: 8),
        Text("\$4,520.12",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'medium',
              fontSize: 28,
            )),
      ],
    );
  }

  Widget segmentedControl() {
    return Container(
      height: 50,
      child: CupertinoSlidingSegmentedControl(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        groupValue: selectedValue,
        backgroundColor: backgroundColor,
        thumbColor: selectedValue == 0 ? appColor : appColor2,
        children: {
          0: buildSegment1(),
          1: buildSegment2(),
        },
        onValueChanged: (i) {
          selectedValue = i.hashCode;
          setState(() {});
        },
      ),
    );
  }

  Widget buildSegment1() => Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Row(
          children: [
            Icon(
              Icons.arrow_drop_up,
              color: selectedValue == 0 ? Colors.white : appColor,
            ),
            Text('Income',
                style: TextStyle(
                    fontSize: 16,
                    color: selectedValue == 0 ? Colors.white : Colors.black)),
          ],
        ),
      );

  Widget buildSegment2() => Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Row(
          children: [
            Icon(
              Icons.arrow_drop_down,
              color: selectedValue == 1 ? Colors.white : appColor2,
            ),
            Text('Expense',
                style: TextStyle(
                    fontSize: 16,
                    color: selectedValue == 1 ? Colors.white : Colors.black)),
          ],
        ),
      );

  Widget _buildIncome() {
    return Container(
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            _buildChart(),
            boldHeading('Transactions'),
            Column(
              children: _elements.map((e) {
                return _buildTransaction(context, e);
              }).toList(),
            ),
          ],
        ));
  }

  Widget _buildExpence() {
    return Container(
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            _buildChart(),
            boldHeading('Category'),
            Column(
              children: _elements.map((e) {
                return _buildTransaction(context, e);
              }).toList(),
            ),
          ],
        ));
  }

  boldHeading(val) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text(
        val,
        style: TextStyle(fontSize: 20, fontFamily: 'medium'),
      ),
    );
  }

  Widget _buildChart() {
    return Column(children: [
      SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          series: <ChartSeries<_SalesData, String>>[
            LineSeries<_SalesData, String>(
                dataSource: data,
                xValueMapper: (_SalesData sales, _) => sales.year,
                yValueMapper: (_SalesData sales, _) => sales.sales,
                name: 'Income',
                dataLabelSettings: DataLabelSettings(isVisible: true))
          ]),
    ]);
  }

  Widget _buildTransaction(context, e) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: backgroundColor,
            child: Icon(
              Icons.currency_bitcoin,
              size: 20,
              color: appColor2,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("+\$320.31",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "medium",
                        color: Colors.black87)),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_right,
                      color: appColor,
                    ),
                    Text("Income: Pay for project",
                        style: TextStyle(fontSize: 14, color: Colors.black45)),
                  ],
                ),
              ],
            ),
          ),
          Text("24.08.2022",
              style: TextStyle(fontSize: 16, color: Colors.black45)),
        ],
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
