/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart' as style;
import 'package:date_picker_timeline/date_picker_timeline.dart';

class sleepSchedule extends StatefulWidget {
  sleepSchedule({Key? key}) : super(key: key);

  static const String page_id = "Sleep Schedule";

  @override
  _sleepScheduleState createState() => _sleepScheduleState();
}

class _sleepScheduleState extends State<sleepSchedule> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  bool _switchValue = true;
  int persontage = 96;

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
        'Sleep Schedule',
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ideal Hours for Sleep'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '8hours 30minutes',
                          style: TextStyle(color: style.appColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        style.elevatedButton('Learn more')
                      ],
                    ),
                    Container(
                      height: 90,
                      width: 100,
                      child: Image.asset(
                        'assets/images/sleep.png',
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your Schedule',
              style: style.headText(),
            ),
            SizedBox(
              height: 20,
            ),
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
                onDateChange: (date) {
                  setState(() {
                    _selectedValue = date;
                  });
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            schedule(Image.asset('assets/images/bed.png'), 'Bedtime', '09:00pm',
                'in 6hours 22minutes'),
            schedule(Image.asset('assets/images/clock.png'), 'Alarm', '05:10am',
                'in 14hours 30minutes'),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: style.secondaryColor.withOpacity(0.3),
              ),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('You will get 8hours 10minutes \n for tonight'),
                  SizedBox(
                    height: 10,
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Colors.white,
                        activeTrackColor: style.secondaryColor,
                        thumbColor: Colors.transparent,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 0.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 0.0),
                        trackHeight: 14),
                    child: Slider(
                      value: persontage.toDouble(),
                      min: 1.0,
                      max: 100.0,
                      onChanged: (double newValue) {
                        setState(() {
                          persontage = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget schedule(image, text, time, left) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(20),
                  child: FittedBox(
                    child: image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            text,
                            style: style.mediumText(),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            time,
                            style: style.simpleText(),
                          )
                        ],
                      ),
                      Text(
                        left,
                        style: style.simpleText(),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Icon(Icons.more_vert),
                  Transform.scale(
                    scale: 0.8,
                    child: CupertinoSwitch(
                      value: _switchValue,
                      activeColor: style.secondaryColor,
                      onChanged: (bool value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
