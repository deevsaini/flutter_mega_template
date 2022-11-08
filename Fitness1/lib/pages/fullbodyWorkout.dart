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

class fullbodyWorkout extends StatefulWidget {
  fullbodyWorkout({Key? key}) : super(key: key);

  static const String page_id = "Fullbody Workout";

  @override
  _fullbodyWorkoutState createState() => _fullbodyWorkoutState();
}

class _fullbodyWorkoutState extends State<fullbodyWorkout> {
  List<int> need = [1, 2, 3, 4, 5, 6];
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
                "Start Workout",
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
            image: AssetImage('assets/images/jump.jpg'), fit: BoxFit.cover),
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
                  'Foolbody Workout',
                  style: style.headText(),
                ),
                Text(
                  '11 Exercise | 32mins | 320 Calories Burn',
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: style.appColor.withOpacity(0.3),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Schedule Workout',
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '5/27, 09:00 AM',
                      style: TextStyle(fontSize: 12),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: style.secondaryColor.withOpacity(0.3),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.import_export_outlined,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Difficulty',
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Biginner',
                      style: TextStyle(fontSize: 12),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey,
                    ),
                  ],
                )
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
                'You\'ll Need',
                style: style.headText(),
              ),
              Text(
                '5 Items',
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i in need) itemsNeed(),
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
                'Exercise',
                style: style.headText(),
              ),
              Text(
                '3 Sets',
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Set 1',
          ),
          SizedBox(
            height: 10,
          ),
          for (var i in need) exercise(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Set 2',
          ),
          SizedBox(
            height: 10,
          ),
          for (var i in need) exercise(),
        ],
      ),
    );
  }

  Widget itemsNeed() {
    return Container(
      margin: EdgeInsets.only(right: 30),
      child: Column(
        children: [
          ClipRRect(
            child: SizedBox.fromSize(
              size: Size.fromRadius(30),
              child: FittedBox(
                child: Image.asset('assets/images/dumbell.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Barbell')
        ],
      ),
    );
  }

  Widget exercise() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: SizedBox.fromSize(
              size: Size.fromRadius(30),
              child: FittedBox(
                child: Image.asset('assets/images/man.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Warm Up',
                    style: style.mediumText(),
                  ),
                  Text(
                    '05:00',
                    style: style.simpleText(),
                  )
                ],
              ),
            ),
          ),
          Icon(
            Icons.chevron_right_outlined,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
