/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food2/pages/tabs.dart';
import '../components/styles.dart' as style;

class Location extends StatefulWidget {
  static const String id = 'Location';

  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  late double deviceHeight;

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: style.background,
      body: _buildCenter(),
    );
  }

  Widget _buildCenter() {
    return SingleChildScrollView(
      child: Container(
        color: style.background,
        height: deviceHeight,
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/map.png',
                ),
                radius: 80,
              ),
              SizedBox(height: 30),
              Text(
                'Current Location',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'medium', fontSize: 14, color: Colors.black45),
              ),
              Text(
                '243 Phython, Ionic Road, Flutter State,',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'semibold',
                    fontSize: 16,
                    color: Colors.black54),
              ),
              SizedBox(height: 50),
              _buildForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            new BoxShadow(
              color: style.background,
              blurRadius: 10.0,
            ),
          ]),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Confirm Delivery Address',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'bold', fontSize: 18, color: Colors.black54),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Do you want to deliver to this current location?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.black45),
            ),
          ),
          ElevatedButton(
            child: const Text("Yes",
                style: TextStyle(fontSize: 16, fontFamily: 'semibold')),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TabsExample()));
            },
            style: ElevatedButton.styleFrom(
              primary: style.appColor,
              onPrimary: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 80),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            child: const Text("No",
                style: TextStyle(fontSize: 16, fontFamily: 'semibold')),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: style.background,
              onPrimary: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 80),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
