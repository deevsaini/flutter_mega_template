/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TestPage extends StatefulWidget {
    TestPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Files';

    @override
    State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text("Flutter Linear Progress Bar"),
            ),
            body: Center(
                child: Container(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: new LinearPercentIndicator(
                              width: 140.0,
                              lineHeight: 14.0,
                              percent: 0.5,
                              center: Text(
                                "50.0%",
                                style: new TextStyle(fontSize: 12.0),
                              ),
                              trailing: Icon(Icons.mood),
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              backgroundColor: Colors.grey,
                              progressColor: Colors.blue,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: new LinearPercentIndicator(
                              width: 170.0,
                              animation: true,
                              animationDuration: 1000,
                              lineHeight: 20.0,
                              leading: new Text("left content"),
                              trailing: new Text("right content"),
                              percent: 0.2,
                              center: Text("20.0%"),
                              linearStrokeCap: LinearStrokeCap.butt,
                              progressColor: Colors.red,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: new LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width - 50,
                              animation: true,
                              lineHeight: 20.0,
                              animationDuration: 2000,
                              percent: 0.9,
                              center: Text("90.0%"),
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.greenAccent,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: new LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width - 50,
                              animation: true,
                              lineHeight: 20.0,
                              animationDuration: 2500,
                              percent: 0.8,
                              center: Text("80.0%"),
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.green,
                            ),
                          ),
                        ],
                    )
                ),
            ),
        );
    }
}