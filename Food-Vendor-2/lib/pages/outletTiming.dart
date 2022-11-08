/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:zomato/helper/style.dart';

class outletTiming extends StatefulWidget {
  outletTiming({Key? key}) : super(key: key);

  static const String page_id = "Outlet Timing";

  @override
  _outletTimingState createState() => _outletTimingState();
}

class _outletTimingState extends State<outletTiming> {
  TimeOfDay selectedTime = TimeOfDay.now();
  bool card = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Checkbox(
                  value: this.card,
                  onChanged: (value) {
                    setState(() {
                      this.card = value!;
                    });
                  },
                ),
                Text('Copy above timing to all days')
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'SAVE',
                style: TextStyle(
                    fontFamily: 'semi-bold', fontSize: 16, color: Colors.white),
              ),
              style: simpleButton(),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Update Outlet Timing',
        style: headText(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            'Add or modify your restaurant timings here. You can create maximum up to 3 time slots in a day',
            style: TextStyle(color: secondaryColor),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Slot-1',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Start Time',
                          style: TextStyle(fontFamily: 'medium'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("${selectedTime.hour}:${selectedTime.minute}"),
                        IconButton(
                          onPressed: () {
                            _selectTime(context);
                          },
                          icon: Icon(Icons.access_time),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'End Time',
                          style: TextStyle(fontFamily: 'medium'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("${selectedTime.hour}:${selectedTime.minute}"),
                        IconButton(
                          onPressed: () {
                            _selectTime(context);
                          },
                          icon: Icon(Icons.access_time),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.delete_outline,
                      color: secondaryColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Delete',
                      style: TextStyle(color: secondaryColor),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  color: appColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Add time slot',
                  style: TextStyle(color: appColor, fontFamily: 'medium'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }
}
