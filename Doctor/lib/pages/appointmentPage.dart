/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor_marketplace_app/pages/tabBarPage.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:doctor_marketplace_app/utilities/constance.dart' as style;

class appointmentPage extends StatefulWidget {
  appointmentPage({Key? key}) : super(key: key);

  static const String pageId = 'appointmentPage';

  @override
  State<appointmentPage> createState() => _appointmentPageState();
}

class _appointmentPageState extends State<appointmentPage> {
  DatePickerController _controller = DatePickerController();
  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE7EFFA),
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildbottomNavigationBar(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        'Appointment',
        style: TextStyle(fontSize: 20, fontFamily: 'bold', color: Colors.black),
      ),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xFFE7EFFA), Colors.white]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _buildTitle('You Selected: '),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(_selectedValue.toString()),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTitle('Morning Slots'),
                  Wrap(
                    spacing: 6.0,
                    runSpacing: 6.0,
                    children: [
                      _buildChip('10:10 am', Color(0xFFffffff), false),
                      _buildChip('10:30 am', Color(0xFFffffff), false),
                      _buildChip('10:50 am', Color(0xFFffffff), false),
                      _buildChip('11:10 am', Color(0xFFffffff), false),
                      _buildChip('11:20 am', Color(0xFFffffff), false),
                    ],
                  ),
                  _buildTitle('Afternoon Slots'),
                  Wrap(
                    spacing: 6.0,
                    runSpacing: 6.0,
                    children: [
                      _buildChip('10:10 am', Color(0xFFffffff), false),
                      _buildChip('10:30 am', style.appColor, true),
                      _buildChip('10:50 am', Color(0xFFffffff), false),
                    ],
                  ),
                  _buildTitle('Evening Slots'),
                  Wrap(
                    spacing: 6.0,
                    runSpacing: 6.0,
                    children: [
                      _buildChip('10:10 am', Color(0xFFffffff), false),
                      _buildChip('10:30 am', Color(0xFFffffff), false),
                      _buildChip('10:50 am', Color(0xFFffffff), false),
                      _buildChip('11:10 am', Color(0xFFffffff), false),
                      _buildChip('11:20 am', Color(0xFFffffff), false),
                      _buildChip('11:30 am', Color(0xFFffffff), false),
                      _buildChip('11:50 am', Color(0xFFffffff), false),
                      _buildChip('12:00 am', Color(0xFFffffff), false),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        "$txt",
        style: TextStyle(fontFamily: 'bold', fontSize: 17),
      ),
    );
  }

  Widget _buildChip(String label, Color color, bool selected) {
    return Chip(
      labelPadding: EdgeInsets.all(2.0),
      label: Text(
        label,
        style: TextStyle(
          color: selected == true ? Colors.white : Colors.black,
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      backgroundColor: color,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(8.0),
    );
  }

  Widget _buildbottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => tabBarPage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Confirm Appointment',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
