/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/payment_detail.dart';
import 'package:home/widget/elevated_button.dart';
import '../components/styles.dart';

class Booking extends StatefulWidget {
  static const String id = 'Booking';

  const Booking({Key? key}) : super(key: key);

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> with SingleTickerProviderStateMixin {
  String dropdownValuePackage = '1 year';
  String dropdownValueGuest = '1 person';

  DateTime currentDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }

  int selectID = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          centerTitle: true,
          title: Text('Booking Detail', style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.bookmark_border,
              ),
              onPressed: () {},
            ),
          ],
        ),
        bottomNavigationBar: _buildBottomBtn(),
        body: _buildBody());
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8.0,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildSelect('monthly', 1),
                  _buildSelect('Yearly', 2),
                  _buildSelect('Custom', 3),
                ],
              ),
            ),
            SizedBox(height: 30),
            blackBoldHeading('Set Plan Package'),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      blackText('Check In'),
                      _buildSelectDate(),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      blackText('Check In'),
                      _buildSelectDate(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            blackText('Plan Package'),
            buildDropDownDate(),
            SizedBox(height: 16),
            blackText('Number of Guest(s)'),
            buildDropDownGuest(),
            SizedBox(height: 16),
            blackBoldHeading('Apartment Selected'),
            _buildItem()
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBtn() {
    return Container(
      padding: EdgeInsets.all(24),
      child: MyElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PaymentDetail()));
        },
        text: 'Book Now',
      ),
    );
  }

  Widget _buildSelect(title, id) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectID = id;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        margin: EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: selectID == id ? appColor : Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        child: Text(title,
            style: TextStyle(
                fontFamily: 'medium',
                fontSize: 14,
                color: selectID == id ? Colors.white : Colors.black54)),
      ),
    );
  }

  Widget _buildSelectDates(hint) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8.0)],
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        child: Text(hint,
            style: TextStyle(
                fontFamily: 'medium', fontSize: 14, color: Colors.black54)),
      ),
    );
  }

  Widget _buildSelectDate() {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        width: MediaQuery.of(context).size.width * .4,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8.0)],
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //  Text(currentDate.toString()),
            Text('4 Jan \'21',
                style: TextStyle(
                    fontFamily: 'medium', fontSize: 14, color: Colors.black54)),
            Icon(Icons.calendar_month, color: appColor2)
          ],
        ),
      ),
    );
  }

  Widget buildDropDownDate() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      child: Row(
        children: [
          Expanded(
            child: DropdownButton<String>(
              underline: SizedBox(),
              iconSize: 0.0,
              value: dropdownValuePackage,
              onChanged: (newValue) {
                setState(() {
                  dropdownValuePackage = newValue!;
                });
              },
              items: [
                '1 year',
                '2 year',
                '3 year',
                '4 year',
                '5 year',
                '6 year'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Icon(
            Icons.access_time,
            color: appColor2,
          )
        ],
      ),
    );
  }

  Widget buildDropDownGuest() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      child: Row(
        children: [
          Expanded(
            child: DropdownButton<String>(
              underline: SizedBox(),
              iconSize: 0.0,
              value: dropdownValueGuest,
              onChanged: (newValue) {
                setState(() {
                  dropdownValueGuest = newValue!;
                });
              },
              items: [
                '1 person',
                '2 person',
                '3 person',
                '4 person',
                '5 person',
                '6 person'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Icon(
            Icons.person_outline,
            color: appColor2,
          )
        ],
      ),
    );
  }

  Widget _buildItem() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    'assets/images/h3.jpg',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -5,
                  right: -5,
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                          color: appColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Row(
                        children: [
                          Icon(Icons.favorite, size: 10, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            "220",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      )),
                )
              ],
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  blackBoldHeading('\$12,120'),
                  SizedBox(height: 5),
                  greyText('The Best Villa Efcee'),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.directions_bus,
                          size: 14, color: Colors.black38),
                      SizedBox(width: 5),
                      Text(
                        "4",
                        style: TextStyle(color: Colors.black38, fontSize: 12),
                      ),
                      SizedBox(width: 20),
                      Icon(Icons.garage, size: 14, color: Colors.black38),
                      SizedBox(width: 5),
                      Text(
                        "2",
                        style: TextStyle(color: Colors.black38, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
