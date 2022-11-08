/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:realestate/helper/style.dart';
import 'package:realestate/pages/payment.dart';
import 'package:table_calendar/table_calendar.dart';

class bookdateTime extends StatefulWidget {
  bookdateTime({Key? key}) : super(key: key);

  static const String page_id = "Book Date & Time";

  @override
  _bookdateTimeState createState() => _bookdateTimeState();
}

class _bookdateTimeState extends State<bookdateTime> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  int selectTime = 3;
  int selectBefore = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Booking',
        style: headText(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TableCalendar(
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              firstDay: DateTime.utc(2020, 01, 01),
              lastDay: DateTime.utc(2030, 12, 12),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(_selectedDay, selectedDay)) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                }
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  color: appColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
              child: Text(
                'Available Time',
                style: TextStyle(
                    fontFamily: 'medium', fontSize: 16, color: Colors.white),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 10, right: 10, bottom: 20, left: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 5)
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _selctTime('12:00 AM', 1),
                    _selctTime('02:00 PM', 2),
                    _selctTime('11:00 AM', 3),
                    _selctTime('10:00 AM', 4),
                    _selctTime('09:00 AM', 5),
                    _selctTime('09:00 AM', 6),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  color: appColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
              child: Text(
                'Remind Me Before',
                style: TextStyle(
                    fontFamily: 'medium', fontSize: 16, color: Colors.white),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 10, right: 10, bottom: 20, left: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 5)
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    reminder('30 Min Ago', 1),
                    reminder('40 Min Ago', 2),
                    reminder('50 Min Ago', 3),
                    reminder('10 Min Ago', 4),
                    reminder('20 Min Ago', 5),
                    reminder('30 Min Ago', 6),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => payment()));
              },
              child: Text(
                'Booking Now',
                style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
              ),
              style: greenButton(),
            )
          ],
        ),
      ),
    );
  }

  Widget _selctTime(text, time) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectTime = time;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10, top: 10),
        padding: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
        decoration: segmentDecoration(time),
        child: SizedBox(
          width: 50,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'medium',
              color: selectTime == time ? Colors.amber : Colors.black54,
            ),
          ),
        ),
      ),
    );
  }

  segmentDecoration(time) {
    return BoxDecoration(
      color: selectTime == time ? appColor : appColor.withOpacity(0.1),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    );
  }

  Widget reminder(text, remind) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectBefore = remind;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10, top: 10),
        padding: EdgeInsets.symmetric(horizontal: 3, vertical: 5),
        decoration: decoration(remind),
        child: SizedBox(
          width: 50,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'medium',
              color: selectBefore == remind ? Colors.amber : Colors.black54,
            ),
          ),
        ),
      ),
    );
  }

  decoration(remind) {
    return BoxDecoration(
      color: selectBefore == remind ? appColor : appColor.withOpacity(0.1),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    );
  }
}
