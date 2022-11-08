/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness/pages/tabs.dart';
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart' as style;

class success extends StatefulWidget {
  success({Key? key}) : super(key: key);

  static const String page_id = "Success";

  @override
  _successState createState() => _successState();
}

class _successState extends State<success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 10.0),
          child: ElevatedButton(
            child: const Text(
              "Back To Home",
              style: TextStyle(fontFamily: 'semi-bold'),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => tabs())));
            },
            style: style.simpleButton(),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              child: Image.asset(
                'assets/images/yoga.webp',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Congratulations, you have \n Finished Your Workout',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'bold', fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Excercise is king and nutrition is queen.\n Combine the two and you have a kingdom.',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'regular', fontSize: 14),
            ),
            Text(
              '-Jack Lallane',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'regular', fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
