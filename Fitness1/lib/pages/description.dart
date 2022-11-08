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
import 'package:numberpicker/numberpicker.dart';
import 'package:timeline_tile/timeline_tile.dart';

class description extends StatefulWidget {
  description({Key? key}) : super(key: key);

  static const String page_id = "Description";

  @override
  _descriptionState createState() => _descriptionState();
}

class _descriptionState extends State<description> {
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
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.close,
          color: Colors.black,
        ),
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
                borderRadius: BorderRadius.circular(20),
                color: style.appColor,
              ),
              width: double.infinity,
              child: Image.asset(
                'assets/images/e3.png',
                height: 150,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Jumping Jack',
              style: style.headText(),
            ),
            Text(
              'Easy | 390 Calories Burn',
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Description',
              style: style.headText(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                'A jumping jack, also known as star jump and called as side-straddel hope in Us militry,is a physical jumping exercise performed by jumping to a position with the legs spread...Read More'),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'How To Do It',
                  style: style.headText(),
                ),
                Text(
                  '4 Steps',
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            timeLine('01'),
            timeLine('02'),
            timeLine('03'),
            timeLine('04'),
            SizedBox(
              height: 20,
            ),
            Text(
              'Custom Repetitions',
              style: style.headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        'assets/images/cal.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '450 Calories Burn',
                    ),
                  ],
                ),
                _IntegerExample(),
                Text('times'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text(
                "Save",
                style: TextStyle(fontFamily: 'semi-bold'),
              ),
              onPressed: () {},
              style: style.simpleButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget timeLine(step) {
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
            minHeight: 100,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Spread Your Arms',
                  style: style.headText(),
                ),
                Text(
                    'To make the guestures feel more relaxed, stretch your arms as you start this movement.No bending of hands.'),
              ],
            ),
          ),
        ),
        startChild: Container(
          child: Text(step),
        ),
      ),
    );
  }
}

class _IntegerExample extends StatefulWidget {
  @override
  __IntegerExampleState createState() => __IntegerExampleState();
}

class __IntegerExampleState extends State<_IntegerExample> {
  int _currentIntValue = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 16),
        NumberPicker(
          value: _currentIntValue,
          minValue: 0,
          maxValue: 100,
          step: 10,
          haptics: true,
          onChanged: (value) => setState(() => _currentIntValue = value),
        ),
      ],
    );
  }
}
