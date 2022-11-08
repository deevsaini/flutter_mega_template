/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart' as style;
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:salon/pages/bookAndPay.dart';

class bookDateTime extends StatefulWidget {
  bookDateTime({Key? key}) : super(key: key);

  static const String page_id = "Book Date And Time";

  @override
  _bookDateTimeState createState() => _bookDateTimeState();
}

class _bookDateTimeState extends State<bookDateTime> {
  DateTime _selectedValue = DateTime.now();
  List<int> artist = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: _buildbottombar(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Text(
        'Book Appointment',
        style: style.boldText(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Select Date',
            style: style.headText(),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DatePicker(
                DateTime.now(),
                initialSelectedDate: DateTime.now(),
                selectionColor: style.appColor,
                selectedTextColor: Colors.white,
                onDateChange: (date) {
                  setState(() {
                    _selectedValue = date;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Select Time',
            style: style.headText(),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Chip(
                  label: Text('08:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('09:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('10:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('11:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('12:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('13:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('14:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('15:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('16:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('17:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('18:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('19:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('20:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('21:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('22:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('23:00'),
                ),
                SizedBox(
                  width: 10,
                ),
                Chip(
                  label: Text('24:00'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Select Specialist',
            style: style.headText(),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: style.appColor, width: 2),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(30),
                              child: FittedBox(
                                child: Image(
                                    image: AssetImage('assets/images/g1.jpg')),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Lily',
                            style: style.mediumText(),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Hair stylist',
                            style: TextStyle(color: style.greyTextColor),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                for (var i in artist) scrollArtist(),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget scrollArtist() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: InkWell(
          onTap: () {},
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(30),
                  child: FittedBox(
                    child: Image(image: AssetImage('assets/images/g1.jpg')),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Lily',
                style: style.mediumText(),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Hair stylist',
                style: TextStyle(color: style.greyTextColor),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildbottombar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: const Text(
                  "Back",
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => bookAndPay()));
            },
            child: Container(
              height: 60,
              width: 150,
              decoration: BoxDecoration(
                color: style.appColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Continue",
                      style: TextStyle(
                          fontFamily: 'semi-bold', color: Colors.white),
                    ),
                    Icon(
                      Icons.chevron_right_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
