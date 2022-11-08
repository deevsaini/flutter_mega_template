/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:iotask/pages/search.dart';
import 'package:iotask/pages/upload-files.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../helper/style.dart' as style;

class CalendarPage extends StatefulWidget {
    CalendarPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Calendar';

    @override
    State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackColor,
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: Row(
                    children: [
                        IconButton(
                            onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                        return UploadFilesPage();
                                    }
                                );
                            },
                            icon: Icon(Icons.add_circle_outline, color: style.appGrey)
                        ),
                        IconButton(
                            onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                        return SearchPage();
                                    }
                                );
                            },
                            icon: Icon(Icons.search_outlined, color: style.appGrey)
                        ),
                    ],
                ),
                leadingWidth: 110,
                title: Text('Files'),
                centerTitle: true,
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'medium'
                ),
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications_none, color: style.appGrey)
                    ),
                    CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/user.jpg'),
                    ),
                    SizedBox(width: 16),
                ],
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: SfCalendar(

                view: CalendarView.schedule,
                dataSource: MeetingDataSource(_getDataSource()),
                scheduleViewSettings: ScheduleViewSettings(
                    appointmentItemHeight: 70,
                    dayHeaderSettings: DayHeaderSettings(
                        dayTextStyle: TextStyle(
                            fontSize: 10,
                            fontFamily: 'regular',
                            color: Colors.black,
                        ),
                        dateTextStyle: TextStyle(
                            fontSize: 14,
                            fontFamily: 'medium',
                            color: style.appGrey,
                        ),
                    ),
                    appointmentTextStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: 'regular',
                        color: Colors.white
                    ),
                ),
            ),
        );
    }

    greyTitle() {
        return TextStyle(
            fontFamily: 'medium',
            fontSize: 16,
            color: style.appGrey
        );
    }

}

List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];

    final DateTime today = DateTime.now();
    final DateTime startTime = DateTime(today.year, today.month, today.day, 9, 0, 0);
//    final DateTime endTime = startTime.add(const Duration(hours: 2));

    meetings.add(Meeting('Conference1', DateTime(today.year, today.month, today.day, 9, 0, 0), startTime.add(const Duration(hours: 2)), Colors.blue, false));
    meetings.add(Meeting('Conference2', DateTime(today.year, today.month, today.day, 12, 0, 0), startTime.add(const Duration(hours: 2)), Colors.pink, false));
    meetings.add(Meeting('Conference3', DateTime(today.year, today.month, today.day, 12, 0, 0).add(Duration(days: 2)), startTime.add(const Duration(hours: 2)), Colors.green, false));

    return meetings;
}


class MeetingDataSource extends CalendarDataSource {
    MeetingDataSource(List<Meeting> source) {
        appointments = source;
    }

    @override
    DateTime getStartTime(int index) {
        return appointments![index].from;
    }

    @override
    DateTime getEndTime(int index) {
        return appointments![index].to;
    }

    @override
    String getSubject(int index) {
        return appointments![index].eventName;
    }

    @override
    Color getColor(int index) {
        return appointments![index].background;
    }

    @override
    bool isAllDay(int index) {
        return appointments![index].isAllDay;
    }

////    @override
//    Color getForColor(int index) {
//        return appointments![index].front;
//    }
}

class Meeting {
    Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

    String eventName;
    DateTime from;
    DateTime to;
    Color background;
    bool isAllDay;
}