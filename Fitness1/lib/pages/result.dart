/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness/pages/tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart' as style;
import 'package:syncfusion_flutter_charts/charts.dart';

class result extends StatefulWidget {
  result({Key? key}) : super(key: key);

  static const String page_id = "Result";

  @override
  _resultState createState() => _resultState();
}

class _resultState extends State<result> {
  int average = 62;
  int height = 88;
  int weight = 33;
  int mass = 57;
  int abs = 89;

  int tabID = 1;
  int segmentedControlGroupValue = 0;
  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text("Photo"),
    1: Text("Static"),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 10.0),
            child: ElevatedButton(
              child: const Text(
                "Back To Home",
                style: TextStyle(fontFamily: 'semi-bold'),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => tabs())));
              },
              style: style.simpleButton(),
            )),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Result',
        style: style.headText(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              Icon(
                Icons.share,
                color: Colors.black,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
            ],
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
          children: [
            _buildSegment(),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(children: [
                if (segmentedControlGroupValue == 0)
                  photoContainer()
                else if (segmentedControlGroupValue == 1)
                  staticContainer()
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return SizedBox(
      width: double.infinity,
      child: CupertinoSlidingSegmentedControl(
        backgroundColor: Colors.white,
        thumbColor: style.appColor,
        groupValue: segmentedControlGroupValue,
        children: myTabs,
        onValueChanged: (i) {
          this.setState(() {
            segmentedControlGroupValue = i.hashCode;
          });
        },
      ),
    );
  }

  Widget photoContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Average Progress',
                style: style.headText(),
              ),
              Text(
                'Good',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Colors.white,
                activeTrackColor: style.appColor,
                thumbColor: Colors.transparent,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                trackHeight: 16),
            child: Slider(
              value: average.toDouble(),
              min: 0,
              max: 100.0,
              onChanged: (double newValue) {
                setState(() {
                  average = newValue.round();
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'May',
                style: style.mediumText(),
              ),
              Text(
                'June',
                style: style.mediumText(),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          photos('Front Facing'),
          photos('Back Facing'),
          photos('Left Facing'),
          photos('Right Facing'),
        ],
      ),
    );
  }

  Widget photos(text) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Text(text),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(70),
                  child: FittedBox(
                    child: Image.asset('assets/images/man.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(70),
                  child: FittedBox(
                    child: Image.asset('assets/images/man.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget staticContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
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
                      SalesData('Jan', 2),
                      SalesData('Feb', 4),
                      SalesData('Mar', 4),
                      SalesData('Apr', 5),
                      SalesData('May', 6),
                      SalesData('Jun', 5),
                      SalesData('Jul', 8),
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
                'May',
                style: style.mediumText(),
              ),
              Text(
                'June',
                style: style.mediumText(),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Loose Weight',
            style: TextStyle(fontSize: 15, fontFamily: 'medium'),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('33%'),
              Container(
                width: 250,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: style.appColor,
                      activeTrackColor: style.secondaryColor,
                      thumbColor: Colors.transparent,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 0.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                      trackHeight: 16),
                  child: Slider(
                    value: weight.toDouble(),
                    min: 0,
                    max: 100.0,
                    onChanged: (double newValue) {
                      setState(() {
                        weight = newValue.round();
                      });
                    },
                  ),
                ),
              ),
              Text('66%'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Height Increse',
            style: TextStyle(fontSize: 15, fontFamily: 'medium'),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('88%'),
              Container(
                width: 250,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: style.appColor,
                      activeTrackColor: style.secondaryColor,
                      thumbColor: Colors.transparent,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 0.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                      trackHeight: 16),
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
                ),
              ),
              Text('12%'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Muscle Mass Increase',
            style: TextStyle(fontSize: 15, fontFamily: 'medium'),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('57%'),
              Container(
                width: 250,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: style.appColor,
                      activeTrackColor: style.secondaryColor,
                      thumbColor: Colors.transparent,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 0.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                      trackHeight: 16),
                  child: Slider(
                    value: mass.toDouble(),
                    min: 0,
                    max: 100.0,
                    onChanged: (double newValue) {
                      setState(() {
                        mass = newValue.round();
                      });
                    },
                  ),
                ),
              ),
              Text('43%'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'ABs',
            style: TextStyle(fontSize: 15, fontFamily: 'medium'),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('89%'),
              Container(
                width: 250,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: style.appColor,
                      activeTrackColor: style.secondaryColor,
                      thumbColor: Colors.transparent,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 0.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                      trackHeight: 16),
                  child: Slider(
                    value: abs.toDouble(),
                    min: 0,
                    max: 100.0,
                    onChanged: (double newValue) {
                      setState(() {
                        abs = newValue.round();
                      });
                    },
                  ),
                ),
              ),
              Text('11%'),
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
