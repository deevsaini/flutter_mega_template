/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:saloon5/pages/tabs.dart';
import 'package:saloon5/pages/verification.dart';
import '../components/styles.dart' as style;

class Success extends StatefulWidget {
  static const String id = 'Success';

  const Success({Key? key}) : super(key: key);

  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Scaffold(
          body: SafeArea(
            bottom: false,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/salon-banner.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                _buildContent()
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildbtn(),
      ),
    );
  }

  Widget _buildContent() {
    return DraggableScrollableSheet(
      maxChildSize: .8,
      initialChildSize: .7,
      minChildSize: .7,
      builder: (BuildContext context, ScrollController scrollController) {
        return SingleChildScrollView(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: _buildSucessDesc(),
          ),
        );
      },
    );
  }

  Widget _buildSucessDesc() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outlined,
              size: 80,
              color: style.appColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 25),
                    Text("Your Visit Confirmed!",
                        style: TextStyle(
                            fontSize: 26,
                            color: Colors.black87,
                            fontWeight: FontWeight.w700)),
                    SizedBox(height: 25),
                    _buildList(
                        "Thank you for a visit appointment we are waiting for you to make even more beautiful!"),
                    _buildList(
                        "You will receive a message the day before your visit as a reminder."),
                    _buildList("Stay healthy and keep your smile :)")
                  ]),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildList(txt) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(txt,
          style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
              fontWeight: FontWeight.w600)),
    );
  }

  Widget _buildbtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          child: const Text("Home",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TabsExample()));
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
      ),
    );
  }
}
