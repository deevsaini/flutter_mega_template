/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:doctor_marketplace_app/utilities/constance.dart' as style;

class bookAppointmentPage extends StatefulWidget {
  bookAppointmentPage({Key? key}) : super(key: key);

  static const String pageId = 'bookAppointmentPage';

  @override
  State<bookAppointmentPage> createState() => _bookAppointmentPageState();
}

class _bookAppointmentPageState extends State<bookAppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color(0xFFE7EFFA),
          appBar: _buildAppBar(),
          body: _buildBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: BackButton(color: Colors.black),
      title: Text(
        'My Appointment',
        style: TextStyle(fontSize: 20, fontFamily: 'bold', color: Colors.black),
      ),
      centerTitle: true,
      bottom: PreferredSize(
        child: const TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0, color: style.appColor),
              insets: EdgeInsets.symmetric(horizontal: 10.0)),
          tabs: [
            Tab(
              text: 'Upcoming',
            ),
            Tab(
              text: 'Past',
            ),
          ],
        ),
        preferredSize: Size.fromHeight(37.0),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      child: TabBarView(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildUpComingContent('01 January 2020', '2.20PM',
                    'Dr.Nafiz Kamal', 'Dentiest', 'New Town Clinic'),
                _buildUpComingContent('01 January 2020', '2.20PM',
                    'Dr.Nafiz Kamal', 'Dentiest', 'New Town Clinic'),
                _buildUpComingContent('01 January 2020', '2.20PM',
                    'Dr.Nafiz Kamal', 'Dentiest', 'New Town Clinic'),
                _buildUpComingContent('01 January 2020', '2.20PM',
                    'Dr.Nafiz Kamal', 'Dentiest', 'New Town Clinic'),
                _buildUpComingContent('01 January 2020', '2.20PM',
                    'Dr.Nafiz Kamal', 'Dentiest', 'New Town Clinic'),
                _buildUpComingContent('01 January 2020', '2.20PM',
                    'Dr.Nafiz Kamal', 'Dentiest', 'New Town Clinic'),
                _buildUpComingContent('01 January 2020', '2.20PM',
                    'Dr.Nafiz Kamal', 'Dentiest', 'New Town Clinic'),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildPastContent('01 January 2020', '2.20PM', 'Dr.Nafiz Kamal',
                    'Dentiest', 'New Town Clinic'),
                _buildPastContent('01 January 2020', '2.20PM', 'Dr.Nafiz Kamal',
                    'Dentiest', 'New Town Clinic'),
                _buildPastContent('01 January 2020', '2.20PM', 'Dr.Nafiz Kamal',
                    'Dentiest', 'New Town Clinic'),
                _buildPastContent('01 January 2020', '2.20PM', 'Dr.Nafiz Kamal',
                    'Dentiest', 'New Town Clinic'),
                _buildPastContent('01 January 2020', '2.20PM', 'Dr.Nafiz Kamal',
                    'Dentiest', 'New Town Clinic'),
                _buildPastContent('01 January 2020', '2.20PM', 'Dr.Nafiz Kamal',
                    'Dentiest', 'New Town Clinic'),
                _buildPastContent('01 January 2020', '2.20PM', 'Dr.Nafiz Kamal',
                    'Dentiest', 'New Town Clinic'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUpComingContent(txt1, txt2, txt3, txt4, txt5) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Date',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          '$txt1',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'bold'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Time',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          '$txt2',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'bold'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Doctor',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          '$txt3',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'bold'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Type',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          '$txt4',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'bold'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Place',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          '$txt5',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'bold'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                            child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white),
                        )),
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

  Widget _buildPastContent(txt1, txt2, txt3, txt4, txt5) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Date',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          '$txt1',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'bold'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Time',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          '$txt2',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'bold'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Doctor',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          '$txt3',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'bold'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Type',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          '$txt4',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'bold'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Place',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          '$txt5',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'bold'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: style.appColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                            child: Text(
                          'Reschedule',
                          style: TextStyle(color: Colors.white),
                        )),
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
}
