/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:learning/pages/tabs.dart';
import 'package:learning/widget/elevated_button.dart';
import '../components/styles.dart';

class Result extends StatefulWidget {
  static const String id = 'Result';

  const Result({Key? key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Results',
          style: TextStyle(color: Colors.black, fontFamily: 'medium'),
        ),
      ),
      body: _buildBody(),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            socialButtonCircle('assets/images/facebook.png'),
            socialButtonCircle('assets/images/google.png'),
            socialButtonCircle('assets/images/apple.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildDetail(),
          SizedBox(height: 20),
          MyElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TabsExample()));
              },
              text: 'Continue')
        ],
      ),
    );
  }

  Widget _buildDetail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/slide1.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width * .5,
          ),
          SizedBox(height: 20),
          centerkHeading('Congratulations'),
          centerText('Congratulations for getting all the answers correct!'),
        ],
      )),
    );
  }

  Widget socialButtonCircle(img) {
    return ElevatedButton(
      onPressed: () {},
      child: Image.asset(
        img,
        width: 26,
        height: 26,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: appColor2,
        padding: const EdgeInsets.symmetric(vertical: 10),
      ),
    );
  }
}
