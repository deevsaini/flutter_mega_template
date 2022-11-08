/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:doctor/utilities/constancePage.dart' as style;

class schedulePage extends StatefulWidget {
  schedulePage({Key? key}) : super(key: key);

  static const String pageId = 'schedulePage';

  @override
  State<schedulePage> createState() => _schedulePageState();
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
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

class _schedulePageState extends State<schedulePage> {
  late _AppointmentDataSource? _dataSource;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  @override
  void initState() {
    _dataSource = _getCalendarDataSource();
    super.initState();
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: style.appBarButtonStyle(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //
                  },
                  child: Container(
                    decoration: style.appBarItemClrButtonStyle(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: style.itemColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
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
                backgroundColor: Colors.white.withOpacity(0.1),
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
            _buildTitle('Septmber 31 - January 6'),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          Text(
            '$txt',
            style: TextStyle(fontFamily: 'bold', fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 100,
        margin: EdgeInsets.only(left: 70),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(35),
                      child: FittedBox(
                        child: Image.asset('assets/images/3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    right: -10,
                    child: InkWell(
                      onTap: () {
                        //
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.chat,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Live Chat -',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'bold',
                            ),
                          ),
                          TextSpan(
                            text: ' Still in process',
                            style: TextStyle(color: style.itemColor),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Ethel Howard',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(fontFamily: 'bold'),
                    ),
                    Text(
                      '19:19 mins left',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
