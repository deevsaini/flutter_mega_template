/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:saloon5/pages/confirmation.dart';
import '../components/styles.dart' as style;
import 'package:date_picker_timeline/date_picker_timeline.dart';

class Booking extends StatefulWidget {
  static const String id = 'Booking';

  const Booking({Key? key}) : super(key: key);

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  final DatePickerController _controller = DatePickerController();
  bool isChecked = false;
  @override
  void initState() {
    super.initState();
  }

  List<Item> time = <Item>[
    const Item('9:00'),
    const Item('9:30'),
    const Item('10:00'),
    const Item('10:30'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.appColor2,
      body: Scaffold(
        backgroundColor: style.appColor2,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: <Widget>[
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        size: 30,
                        color: Colors.black54,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          'Book a visit',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                              fontSize: 24),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              _buildContent()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return DraggableScrollableSheet(
      initialChildSize: .9,
      minChildSize: .9,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          child: SingleChildScrollView(
            child: Column(
              children: [_buildServiceDesc()],
            ),
          ),
        );
      },
    );
  }

  Widget _buildServiceDesc() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 30),
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 14),
                  calender(),
                  const SizedBox(height: 14),
                  const Text("Availavle slots",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                          fontSize: 22)),
                  const SizedBox(height: 14),
                  chipList("Morning (a.m)"),
                  const SizedBox(height: 24),
                  chipList("Afternoon (p.m)"),
                  const SizedBox(height: 24),
                  chipList("Evening (p.m)"),
                  const SizedBox(height: 24),
                  _checkBox(),
                  const SizedBox(height: 14),
                  _buildBookButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  calender() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DatePicker(
            DateTime.now(),
            width: 50,
            height: 100,
            controller: _controller,
            initialSelectedDate: DateTime.now(),
            selectionColor: style.appColor,
            selectedTextColor: Colors.white,
            inactiveDates: [DateTime.now().add(const Duration(days: 7))],
            onDateChange: (date) {
              setState(() {});
            },
          ),
        ],
      ),
    );
  }

  chipList(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.circle,
              size: 18,
              color: Colors.black54,
            ),
            const SizedBox(width: 16),
            Text(
              label,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 0),
        Container(
          margin: const EdgeInsets.only(left: 30),
          child: Wrap(
            spacing: 10.0,
            children: time.map((e) {
              return _buildChip(
                e.text,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildChip(String label) {
    return Chip(
      labelPadding: const EdgeInsets.symmetric(horizontal: 10),
      label: Text(
        label,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black54,
        ),
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      backgroundColor: Colors.white,
      elevation: 3.0,
      shadowColor: Colors.grey[30],
      padding: const EdgeInsets.all(6.0),
    );
  }

  Widget _checkBox() {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
          activeColor: style.appColor,
        ),
        const Expanded(
          child: Text(
            "Notify me if master has any cancellations on this date",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBookButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.access_time,
                color: Colors.black54,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Work Hours',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  Text(
                    '08 am - 12 pm',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            child: const Text(
              "Confirm",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Confirmation()));
            },
            style: ElevatedButton.styleFrom(
              primary: style.appColor,
              onPrimary: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Item {
  const Item(this.text);
  final String text;
}
