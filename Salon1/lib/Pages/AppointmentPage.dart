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
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:salon1/Utilities/ConstancePage.dart' as style;

class AppointmentPage extends StatefulWidget {
  AppointmentPage({Key? key}) : super(key: key);

  static const String PageId = 'AppointmentPage';

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  List<int> text = [1, 2, 3, 4, 5, 6, 7];
  late _AppointmentDataSource? _dataSource;

  bool status = false;

  late int segmentedControlValue = 0;
  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text(
      "Ongoing",
      style: TextStyle(fontFamily: 'bold'),
    ),
    1: Text(
      "Old",
      style: TextStyle(fontFamily: 'bold'),
    ),
  };
  @override
  void initState() {
    _dataSource = _getCalendarDataSource();
    segmentedControlValue = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              if (segmentedControlValue == 0)
                _buildFirstContent()
              else if (segmentedControlValue == 1)
                Column(
                  children: [
                    for (var i in text) _buildSecondContent(),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: Column(
        children: [
          segmentedControl(),
        ],
      ),
    );
  }

  Widget segmentedControl() {
    return Container(
      width: double.infinity,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CupertinoSlidingSegmentedControl(
            thumbColor: style.appColor,
            groupValue: segmentedControlValue,
            backgroundColor: Colors.transparent,
            children: myTabs,
            onValueChanged: (i) {
              this.setState(() {
                segmentedControlValue = i.hashCode;
              });
              print(i.hashCode);
            }),
      ),
    );
  }

  Widget _buildFirstContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 20.0,
                  ),
                ]),
            child: SfCalendar(
              viewHeaderStyle: ViewHeaderStyle(
                  backgroundColor: Colors.white,
                  dayTextStyle: TextStyle(color: Colors.grey, fontSize: 20),
                  dateTextStyle: TextStyle(color: Colors.grey, fontSize: 25)),
              view: CalendarView.month,
              firstDayOfWeek: 3,
              headerStyle: CalendarHeaderStyle(textAlign: TextAlign.center),
              initialSelectedDate: DateTime(2019, 12, 20, 12),
              todayHighlightColor: style.appColor,
              cellBorderColor: Colors.transparent,
              showNavigationArrow: true,
              showWeekNumber: true,
              backgroundColor: Colors.orangeAccent.withOpacity(0.1),
              selectionDecoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: style.appColor, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                shape: BoxShape.rectangle,
              ),
              dataSource: _dataSource,
              monthViewSettings: MonthViewSettings(
                  appointmentDisplayMode:
                      MonthAppointmentDisplayMode.appointment),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 20.0,
                  ),
                ]),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 0.5))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width: 100,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: const Color(0xff7c94b6),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/p6.jpg'),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                'Mint Salon Drive-in Unisex Famous',
                                overflow: TextOverflow.ellipsis,
                                style:
                                    TextStyle(fontFamily: 'bold', fontSize: 17),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 15,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 180,
                                    child: Text(
                                      'Akshaynagar 1 Block, 1 Cross, Ramurrthy',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 0.5))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildColumnFirst(),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'December 26,2021',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'bold',
                                  color: style.appColor),
                            ),
                            Text(
                              '01:30 - 02:30 PM',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'bold',
                                  color: style.appColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Remind me 1h in advance',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'bold',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FlutterSwitch(
                        width: 60.0,
                        height: 30.0,
                        value: status,
                        activeColor: style.appColor,
                        borderRadius: 30.0,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSecondContent() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 20.0,
              ),
            ]),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.5))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 100,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/p6.jpg'),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            'Mint Salon Drive-in Unisex Famous',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontFamily: 'bold', fontSize: 17),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 15,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 180,
                                child: Text(
                                  'Akshaynagar 1 Block, 1 Cross, Ramurrthy',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildColumnFirst(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'December 26,2021',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'bold',
                            color: style.appColor),
                      ),
                      Text(
                        '01:30 - 02:30 PM',
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'bold',
                            color: style.appColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColumnFirst() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Men\' Haircuts',
            style: TextStyle(fontSize: 17, fontFamily: 'bold'),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 15,
                color: Colors.grey,
              ),
              Text(
                'Lisa T.Plum',
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ],
          ),
          Text(
            'Men\' Haircuts',
            style: TextStyle(fontSize: 17, fontFamily: 'bold'),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 15,
                color: Colors.grey,
              ),
              Text(
                'Lisa T.Plum',
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ],
          ),
          Text(
            'Men\' Haircuts',
            style: TextStyle(fontSize: 17, fontFamily: 'bold'),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 15,
                color: Colors.grey,
              ),
              Text(
                'Lisa T.Plum',
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

_AppointmentDataSource _getCalendarDataSource() {
  List<Appointment> appointments = <Appointment>[];
  appointments.add(Appointment(
    startTime: DateTime.now().add(const Duration(days: 1)),
    endTime: DateTime.now().add(const Duration(days: 3)),
    subject: 'Meeting',
    color: Colors.orangeAccent,
    startTimeZone: '',
    endTimeZone: '',
    recurrenceRule: 'FREQ=DAILY;INTERVAL=2;COUNT=5',
  ));

  return _AppointmentDataSource(appointments);
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(this.source);

  List<Meeting> source;

  @override
  List<dynamic> get appointments => source;

  @override
  DateTime getStartTime(int index) {
    return source[index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return source[index].to;
  }

  @override
  String getSubject(int index) {
    return source[index].eventName;
  }

  @override
  Color getColor(int index) {
    return source[index].background;
  }

  @override
  bool isAllDay(int index) {
    return source[index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
