/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon1/Pages/TabsBarPage.dart';
import 'package:salon1/Utilities/ConstancePage.dart' as style;
import 'package:syncfusion_flutter_calendar/calendar.dart';

class BookAppointmentPage extends StatefulWidget {
  BookAppointmentPage({Key? key}) : super(key: key);

  static const String pageId = 'BookAppointmentPage';

  @override
  State<BookAppointmentPage> createState() => _BookAppointmentPageState();
}

class _BookAppointmentPageState extends State<BookAppointmentPage> {
  int tabID = 1;
  bool isChecked = false;
  List<int> text = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  late _AppointmentDataSource? _dataSource;

  @override
  void initState() {
    _dataSource = _getCalendarDataSource();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppbar(),
        body: _buildBody(),
        bottomNavigationBar: tabID == 1
            ? _buildFirstBottomNavigationBar()
            : tabID == 2
                ? _buildSecondBottomNavigationBar()
                : tabID == 3
                    ? _buildThirdBottomNavigationBar()
                    : Container(),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(120.0),
      child: AppBar(
        backgroundColor: Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                Text(
                  'Book Appointment',
                  style: TextStyle(
                    fontFamily: 'bold',
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  child: Column(
                    children: [
                      tabID == 1
                          ? Icon(
                              Icons.check_circle,
                              color: style.appColor,
                            )
                          : Icon(Icons.circle),
                      Text('Appointment'),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    children: [
                      tabID == 2
                          ? Icon(
                              Icons.check_circle,
                              color: style.appColor,
                            )
                          : Icon(Icons.circle),
                      Text('Payments'),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    children: [
                      tabID == 3
                          ? Icon(
                              Icons.check_circle,
                              color: style.appColor,
                            )
                          : Icon(Icons.circle),
                      Text('Finish'),
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

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tabID == 1
              ? _buildAppointment()
              : tabID == 2
                  ? _buildPayment()
                  : tabID == 3
                      ? _buildFinish()
                      : Container(
                          child: Text('no'),
                        )
        ],
      ),
    );
  }

  //firsttab content
  Widget _buildAppointment() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 20.0,
                        ),
                      ]),
                  child: SfCalendar(
                    viewHeaderStyle: ViewHeaderStyle(
                        backgroundColor: Colors.white,
                        dayTextStyle:
                            TextStyle(color: Colors.grey, fontSize: 20),
                        dateTextStyle:
                            TextStyle(color: Colors.grey, fontSize: 25)),
                    view: CalendarView.month,
                    firstDayOfWeek: 3,
                    headerStyle:
                        CalendarHeaderStyle(textAlign: TextAlign.center),
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
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Information',
                            style: TextStyle(fontFamily: 'bold', fontSize: 17),
                          ),
                          Text(
                            'Hair Stylist',
                            style: TextStyle(
                                fontFamily: 'bold',
                                fontSize: 17,
                                color: style.appColor),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              _buildSpecialist(
                                  'Rahul Jograna', 'assets/images/selfies.jpg'),
                              _buildSpecialist(
                                  'Hardik Rajput', 'assets/images/p4.jpg'),
                              _buildSpecialist(
                                  'Shailly Acharya', 'assets/images/p6.jpg'),
                              _buildSpecialist(
                                  'Jaydeep Hirani', 'assets/images/p3.jpg'),
                              _buildSpecialist(
                                  'Dodiya Saheb', 'assets/images/s3.jpg'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Available Slots',
                        style: TextStyle(fontFamily: 'bold', fontSize: 17),
                      ),
                      Wrap(
                        runSpacing: 5.0,
                        spacing: 5.0,
                        children: [
                          for (var i in text)
                            FilterChip(
                              label: Text(
                                "7:30 To 8:30 PM",
                                style: TextStyle(color: style.appColor),
                              ),
                              backgroundColor: Colors.transparent,
                              shape: StadiumBorder(
                                  side: BorderSide(color: Colors.black12)),
                              onSelected: (bool value) {
                                print("selected");
                              },
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  //secondtab content
  Widget _buildPayment() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Column(
            children: [
              _buildTitle(),
              _buildSecondContent(),
              _buildSecondTitle(),
              _buildPaymentsMethod(),
            ],
          ),
        ),
      ],
    );
  }

  //thirdtab content
  Widget _buildFinish() {
    return Column(
      children: [
        _buildThirdContent(),
      ],
    );
  }

  //
  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Text(
            'Available Slots',
            style:
                TextStyle(fontFamily: 'bold', fontSize: 17, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentsMethod() {
    return Column(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20.0,
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
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
                      Text(
                        '•••• •••• •325',
                        style: TextStyle(fontFamily: 'bold', fontSize: 17),
                      ),
                    ],
                  ),
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: style.appColor,
                    value: isChecked,
                    shape: CircleBorder(),
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20.0,
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
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
                      Text(
                        '•••• •••• •325',
                        style: TextStyle(fontFamily: 'bold', fontSize: 17),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20.0,
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Payments In Cash',
                        style: TextStyle(fontFamily: 'bold', fontSize: 17),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
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
                color: Colors.grey.shade300,
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
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '12:30 To 2:30 PM  :  June,15,2020',
                      style: TextStyle(fontSize: 16, fontFamily: 'bold'),
                    ),
                    Text(
                      '\$25',
                      style: TextStyle(fontSize: 16, fontFamily: 'bold'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '12:30 To 2:30 PM  :  June,15,2020',
                    style: TextStyle(fontSize: 16, fontFamily: 'bold'),
                  ),
                  Text(
                    '\$25',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'bold',
                        color: style.appColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThirdContent() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20.0,
              ),
            ]),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 1))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            'Hair Cross Day Salon',
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
                                  'Hawamahl luvarvav road palitana, 364270.',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: Text(
                                  'ID : ',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Text(
                                  '145687',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 80,
                      width: 100,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/r1.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _buildColumnSecond(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Scan Barcode',
                    style: TextStyle(
                        fontSize: 16, fontFamily: 'bold', color: Colors.grey),
                  ),
                  Container(
                    height: 80,
                    width: 100,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/r2.png'),
                      ),
                    ),
                  ),
                ],
              ),
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
                Icons.person,
                size: 17,
                color: Colors.grey,
              ),
              Text(
                'Luise Dangover',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildColumnSecond() {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hair Styling',
                  style: TextStyle(fontSize: 17, fontFamily: 'bold'),
                ),
                Text(
                  'June 15,2020',
                  style: TextStyle(
                      fontSize: 17, fontFamily: 'bold', color: style.appColor),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 17,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 150,
                      child: Text(
                        'Jessy Roberstone',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontFamily: 'bold'),
                      ),
                    ),
                  ],
                ),
                Text(
                  '1:30 To 2:30 PM',
                  style: TextStyle(
                      fontSize: 17, fontFamily: 'bold', color: style.appColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSecondTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Payments Method',
            style:
                TextStyle(fontFamily: 'bold', fontSize: 17, color: Colors.grey),
          ),
          Text(
            'Add New Methood',
            style: TextStyle(
                fontFamily: 'bold', fontSize: 17, color: style.appColor),
          ),
        ],
      ),
    );
  }

  Widget _buildFirstBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          setState(() {
            tabID = 2;
          });
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Next',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSecondBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          setState(() {
            tabID = 3;
          });
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Confirm Payment',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildThirdBottomNavigationBar() {
    return Container(
      height: 140,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tabsBarPage()));
                });
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 13.0),
                decoration: BoxDecoration(
                  border: Border.all(color: style.appColor, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Book More Appointment',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'bold'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tabsBarPage()));
                });
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 13.0),
                decoration: style.contentButtonStyle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Go To Appointment',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'bold'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialist(txt, img) {
    return InkWell(
      onTap: () {
        //
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Container(
              height: 80,
              width: 110,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('$img'),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: -10,
                    right: -10,
                    child: Checkbox(
                      checkColor: Colors.white,
                      activeColor: style.appColor,
                      value: isChecked,
                      shape: CircleBorder(),
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      '$txt',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontFamily: 'bold', fontSize: 10),
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
