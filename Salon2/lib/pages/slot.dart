/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon2/pages/pick-stylist.dart';
import '../components/styles.dart' as style;
import 'package:date_picker_timeline/date_picker_timeline.dart';

class Slot extends StatefulWidget {
  static const String id = 'Slot';

  const Slot({Key? key}) : super(key: key);

  @override
  _SlotState createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  final DatePickerController _controller = DatePickerController();

  List<Item> time = <Item>[
    const Item('09:00 AM'),
    const Item('09:30 AM'),
    const Item('10:00 AM'),
    const Item('10:30 AM'),
    const Item('11:00 AM'),
    const Item('11:30 AM'),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.calendar_today_outlined,
            ),
          )
        ],
        iconTheme: const IconThemeData(color: Colors.black87),
        centerTitle: true,
        title: const Text(
          'Select your Slot',
          style: TextStyle(color: style.appColor, fontFamily: "semi-bold"),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 25),
                calender(),
                SizedBox(height: 25),
                chipList("Morning Slot"),
                SizedBox(height: 25),
                chipList("Afternoon Slot"),
                SizedBox(height: 25),
                chipList("Evening Slot"),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildFooter(),
    );
  }

  calender() {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: DatePicker(
              DateTime.now(),
              width: 60,
              height: 85,
              controller: _controller,
              initialSelectedDate: DateTime.now(),
              selectionColor: Colors.black,
              selectedTextColor: Colors.white,
              inactiveDates: [DateTime.now().add(Duration(days: 7))],
              onDateChange: (date) {
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }

  chipList(String label) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: style.appColor, fontFamily: "semi-bold", fontSize: 20),
          ),
          SizedBox(height: 10),
          Wrap(
            spacing: 8.0,
            children: time.map((e) {
              return _buildChip(
                e.text,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label) {
    return Chip(
      labelPadding: EdgeInsets.symmetric(horizontal: 2),
      label: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 3.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(8.0),
    );
  }

  Widget _buildFooter() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: ElevatedButton(
        child: const Text("Check Available Stylist",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "medium",
            )),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PickStylist()));
        },
        style: ElevatedButton.styleFrom(
          primary: style.appColor,
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}

class Item {
  const Item(this.text);
  final String text;
}
