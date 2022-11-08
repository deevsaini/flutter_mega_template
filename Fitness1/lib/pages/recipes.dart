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
import 'package:timeline_tile/timeline_tile.dart';

class recipes extends StatefulWidget {
  recipes({Key? key}) : super(key: key);

  static const String page_id = "Recipes";

  @override
  _recipesState createState() => _recipesState();
}

class _recipesState extends State<recipes> {
  List<int> text = [1, 2, 3, 4, 5, 6];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(child: _buildScaffold()),
      ],
    );
  }

  Widget _buildScaffold() {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBackImage(),
            _buildBottomContainer(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 10.0),
            child: ElevatedButton(
              child: const Text(
                "Confirm",
                style: TextStyle(fontFamily: 'semi-bold'),
              ),
              onPressed: () {},
              style: style.simpleButton(),
            )),
      ),
    );
  }

  Widget _buildBackImage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/cake.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        //
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 300),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Column(
              children: [
                secondNotification(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget secondNotification() {
    return Container(
      height: 100.0,
      // margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Blueberry Pancake',
                  style: style.headText(),
                ),
                Text(
                  'By James Ruth',
                  style: TextStyle(color: style.appColor),
                ),
              ],
            ),
            Container(
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBottomContainer() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nutrition',
            style: style.headText(),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i in text) nutrition(),
              ],
            ),
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
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s...Read more'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ingredients That You \n Will Need',
                style: style.headText(),
              ),
              Text('6 items')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i in text) ingredients(),
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
                'Step by Step',
                style: style.headText(),
              ),
              Text('8 Steps'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          timeLine('01', 'Step 1'),
          timeLine('02', 'Step 2'),
          timeLine('03', 'Step 3'),
          timeLine('04', 'Step 4'),
          timeLine('05', 'Step 5'),
          timeLine('06', 'Step 6'),
          timeLine('07', 'Step 7'),
          timeLine('08', 'Step 8'),
        ],
      ),
    );
  }

  Widget nutrition() {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: style.appColor.withOpacity(0.4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
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
            '180kCal',
            style: TextStyle(fontSize: 13),
          )
        ],
      ),
    );
  }

  Widget ingredients() {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Column(
        children: [
          ClipRRect(
            child: SizedBox.fromSize(
              size: Size.fromRadius(25),
              child: FittedBox(
                child: Image.asset('assets/images/sugar.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wheat Flour',
                style: style.mediumText(),
              ),
              Text('100gr'),
            ],
          ),
        ],
      ),
    );
  }

  Widget timeLine(step, text) {
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
            minHeight: 60,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: style.headText(),
                ),
                Text('Prepare all of the ingredients that needed'),
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
