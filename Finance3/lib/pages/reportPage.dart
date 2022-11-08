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
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:finance3_fluttermarketplace/utilities/constancePage.dart'
    as style;

class reportPage extends StatefulWidget {
  reportPage({Key? key}) : super(key: key);

  static const String pageId = 'reportPage';

  @override
  State<reportPage> createState() => _reportPageState();
}

class CurveImage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 30);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class _reportPageState extends State<reportPage> {
  int tabID = 1;
  int contentTabID = 1;

  get data => null;

  DateTime date = DateTime(2022, 12, 24);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            if (tabID == 1)
              _buildBody1()
            else if (tabID == 2)
              _buildBody2()
            else if (tabID == 3)
              _buildBody3()
          ]),
        ),
      ),
    );
  }

  Widget _buildBody1() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              _buildProfile(),
              Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.orange.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            'THIS WEEK',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.orange),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '23 June - 29 June 2019',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'All expenses reported',
                                    style: TextStyle(color: Colors.indigo),
                                  ),
                                ],
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(
                                  Icons.chevron_right,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SfCartesianChart(
                          // Initialize category axis
                          primaryXAxis: CategoryAxis(),
                          series: <LineSeries<SalesData, String>>[
                            LineSeries<SalesData, String>(
                                // Bind data source
                                dataSource: <SalesData>[
                                  SalesData('Jan', 35),
                                  SalesData('Feb', 28),
                                  SalesData('Mar', 34),
                                  SalesData('Apr', 32),
                                  SalesData('May', 40)
                                ],
                                xValueMapper: (SalesData sales, _) =>
                                    sales.year,
                                yValueMapper: (SalesData sales, _) =>
                                    sales.sales)
                          ]),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Icon(
                                        Icons.circle,
                                        size: 15,
                                        color: Colors.lightBlue,
                                      ),
                                    ),
                                    Text(
                                      'income',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Text(
                                  '\$2,250.00',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 1,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Icon(
                                        Icons.circle,
                                        size: 15,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    Text(
                                      'expenses',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Text(
                                  '\$2,250.00',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBody2() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              _buildProfile(),
              Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.lightBlue,
                                  ),
                                  Text(
                                    'Create new plan',
                                    style: TextStyle(color: Colors.lightBlue),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.info,
                                color: Colors.lightBlue,
                              ),
                            ],
                          ),
                        ),
                        _buildSegment2(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          _buildContent2(),
          _buildContent2(),
          _buildContent2(),
          _buildContent2Entertainment(),
          _buildContent2Shopping(),
        ],
      ),
    );
  }

  Widget _buildBody3() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              _buildProfile(),
              Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'From Date',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  _buildDateAndTime(),
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 1,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'From Date',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  _buildDateAndTime(),
                                ],
                              ),
                            ],
                          ),
                        ),
                        _buildSegment2(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          _buildContent3(
            Colors.redAccent.withOpacity(0.2),
            Icons.arrow_downward,
            Colors.redAccent,
            'The 1985 Cafe - Tea Cakes',
            '9.30 pm - 28 jun 2019',
            '- \$ 318',
            Colors.redAccent,
          ),
          _buildContent3(
            Colors.blueAccent.withOpacity(0.2),
            Icons.arrow_upward,
            Colors.blueAccent,
            'The 1985 Cafe - Tea Cakes',
            '9.30 pm - 28 jun 2019',
            '- \$ 318',
            Colors.blueAccent,
          ),
          _buildContent3(
            Colors.redAccent.withOpacity(0.2),
            Icons.arrow_downward,
            Colors.redAccent,
            'The 1985 Cafe - Tea Cakes',
            '9.30 pm - 28 jun 2019',
            '- \$ 318',
            Colors.redAccent,
          ),
          _buildContent3(
            Colors.redAccent.withOpacity(0.2),
            Icons.arrow_downward,
            Colors.redAccent,
            'The 1985 Cafe - Tea Cakes',
            '9.30 pm - 28 jun 2019',
            '- \$ 318',
            Colors.redAccent,
          ),
          _buildContent3(
            Colors.blueAccent.withOpacity(0.2),
            Icons.arrow_upward,
            Colors.blueAccent,
            'The 1985 Cafe - Tea Cakes',
            '9.30 pm - 28 jun 2019',
            '- \$ 318',
            Colors.blueAccent,
          ),
          _buildContent3(
            Colors.blueAccent.withOpacity(0.2),
            Icons.arrow_upward,
            Colors.blueAccent,
            'The 1985 Cafe - Tea Cakes',
            '9.30 pm - 28 jun 2019',
            '- \$ 318',
            Colors.blueAccent,
          ),
          _buildContent3(
            Colors.blueAccent.withOpacity(0.2),
            Icons.arrow_upward,
            Colors.blueAccent,
            'The 1985 Cafe - Tea Cakes',
            '9.30 pm - 28 jun 2019',
            '- \$ 318',
            Colors.blueAccent,
          ),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return ClipPath(
      clipper: CurveImage(),
      child: Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          color: style.appColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: _buildSegment(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent2() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Food & Beverage',
                style: TextStyle(fontFamily: 'bold'),
              ),
              Container(
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.lightBlue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'THIS WEEK',
                    style: TextStyle(fontSize: 10, color: Colors.lightBlue),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: 0.9,
              center: Text("90.0%"),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Colors.lightBlueAccent,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ 663 / \$ 1.000',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '63.8 %',
                style: TextStyle(color: Colors.lightBlue),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget _buildContent2Entertainment() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Entertainment',
                style: TextStyle(fontFamily: 'bold'),
              ),
              Container(
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Warning',
                    style: TextStyle(fontSize: 10, color: Colors.orangeAccent),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: 0.9,
              center: Text("90.0%"),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Colors.orangeAccent,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ 663 / \$ 1.000',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '63.8 %',
                style: TextStyle(color: Colors.orangeAccent),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget _buildContent2Shopping() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shopping',
                style: TextStyle(fontFamily: 'bold'),
              ),
              Container(
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.redAccent.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Over Expenses',
                    style: TextStyle(fontSize: 10, color: Colors.redAccent),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: 0.9,
              center: Text("90.0%"),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Colors.redAccent,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ 663 / \$ 1.000',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '63.8 %',
                style: TextStyle(color: Colors.redAccent),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget _buildDateAndTime() {
    return TextButton.icon(
      icon: Icon(Icons.timer),
      onPressed: () async {
        DateTime? newDate = await showDatePicker(
          context: context,
          initialDate: date,
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
          helpText: 'Select Date',
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.light(
                  primary: style.appColor, // header background color
                  onPrimary: Colors.black, // header text color
                  onSurface: Colors.black, // body text color
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    primary: style.appColor, // button text color
                  ),
                ),
              ),
              child: child!,
            );
          },
        );
        if (newDate == null) return;
        setState(() => date = newDate);
      },
      label: Text(
        '${date.day}/${date.month}/${date.year}',
      ),
    );
  }

  Widget _buildContent3(bgclr, icn, icnclr, txt1, txt2, txt3, txtclr) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: bgclr, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Center(
                      child: Icon(
                        icn,
                        color: icnclr,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$txt1',
                        style: TextStyle(fontFamily: 'bold'),
                      ),
                      Text(
                        '$txt2',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              '$txt3',
              style: TextStyle(color: txtclr),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  tabID = 1;
                });
              },
              child: Container(
                decoration: segmentDecoration(1),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Center(child: Text('REPORT', style: segmentText(1))),
                ),
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
                  decoration: segmentDecoration(2),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child:
                        Center(child: Text('PLANNING', style: segmentText(2))),
                  ),
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
                  decoration: segmentDecoration(3),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child:
                        Center(child: Text('HISTORY', style: segmentText(3))),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
      color: tabID == val ? Colors.white : Colors.transparent,
      borderRadius: BorderRadius.circular(5),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: 'bold',
        color: tabID == val ? style.appColor : Colors.white);
  }

  Widget _buildSegment2() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  contentTabID = 1;
                });
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 5),
                decoration: segmentDecoration2(1),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Center(child: Text('WEEKLY', style: segmentText2(1))),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () {
                  setState(() {
                    contentTabID = 2;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: segmentDecoration2(2),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child:
                        Center(child: Text('MONTHLY', style: segmentText2(2))),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () {
                  setState(() {
                    contentTabID = 3;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: segmentDecoration2(3),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child:
                        Center(child: Text('YEARLY', style: segmentText2(3))),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () {
                  setState(() {
                    contentTabID = 4;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: segmentDecoration2(4),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Center(child: Text('OTHER', style: segmentText2(4))),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  segmentDecoration2(val) {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 2,
                color: contentTabID == val
                    ? style.appColor
                    : Colors.transparent)));
  }

  segmentText2(val) {
    return TextStyle(
        fontFamily: contentTabID == val ? 'bold' : 'semibold',
        color: contentTabID == val ? style.appColor : Colors.grey);
  }
}

class SalesData {
  SalesData(String s, int i);

  get year => null;

  get sales => null;
}
