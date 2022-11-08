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
import 'package:date_picker_timeline/date_picker_timeline.dart';

class mealSchedule extends StatefulWidget {
  mealSchedule({Key? key}) : super(key: key);

  static const String page_id = "Meal Schedule";

  @override
  _mealScheduleState createState() => _mealScheduleState();
}

class _mealScheduleState extends State<mealSchedule> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  int distance = 46;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: style.secondaryColor,
        child: Icon(Icons.add),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Meal Schedule',
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
              height: 100,
              child: DatePicker(
                DateTime.now(),
                width: 60,
                height: 80,
                controller: _controller,
                initialSelectedDate: DateTime.now(),
                selectionColor: style.appColor,
                selectedTextColor: Colors.white,
                inactiveDates: [
                  DateTime.now().add(Duration(days: 3)),
                  DateTime.now().add(Duration(days: 4)),
                  DateTime.now().add(Duration(days: 7))
                ],
                onDateChange: (date) {
                  setState(() {
                    _selectedValue = date;
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
                  'Breakfast',
                  style: style.headText(),
                ),
                Text(
                  '2 meals | 230 calories',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            eatSchedule(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lunch',
                  style: style.headText(),
                ),
                Text(
                  '2 meals | 500 calories',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            eatSchedule(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Snacks',
                  style: style.headText(),
                ),
                Text(
                  '2 meals | 500 calories',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            eatSchedule(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dinner',
                  style: style.headText(),
                ),
                Text(
                  '2 meals | 500 calories',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            eatSchedule(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Today Meal Nutritions',
              style: style.headText(),
            ),
            SizedBox(
              height: 20,
            ),
            nutritions('Calories', '320 kCal'),
            nutritions('Proteins', '300g'),
            nutritions('Fats', '320 kCal'),
            nutritions('Carbo', '300g'),
          ],
        ),
      ),
    );
  }

  Widget eatSchedule() {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: style.appColor.withOpacity(0.4)),
              child: ClipRRect(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(40),
                  child: FittedBox(
                    child: Image.asset('assets/images/pancake.png'),
                    fit: BoxFit.cover,
                  ),
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
                      'Honey Pancake',
                      style: style.mediumText(),
                    ),
                    Text(
                      '07:00am',
                      style: style.simpleText(),
                    )
                  ],
                ),
              ),
            ),
            Icon(Icons.arrow_forward_rounded)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: style.secondaryColor.withOpacity(0.4)),
              child: ClipRRect(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(40),
                  child: FittedBox(
                    child: Image.asset('assets/images/pancake.png'),
                    fit: BoxFit.cover,
                  ),
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
                      'Coffee',
                      style: style.mediumText(),
                    ),
                    Text(
                      '07:30am',
                      style: style.simpleText(),
                    )
                  ],
                ),
              ),
            ),
            Icon(Icons.arrow_forward_rounded)
          ],
        ),
      ],
    );
  }

  Widget nutritions(type, total) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    type,
                    style: style.mediumText(),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset(
                      'assets/images/cal.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Text(
                total,
                style: style.simpleText(),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Colors.white,
                activeTrackColor: style.appColor,
                thumbColor: Colors.transparent,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                trackHeight: 10),
            child: Slider(
              value: distance.toDouble(),
              min: 1.0,
              max: 100.0,
              onChanged: (double newValue) {
                setState(() {
                  distance = newValue.round();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
