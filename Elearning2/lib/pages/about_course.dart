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

class AboutCourse extends StatefulWidget {
  static const String id = 'AboutCourse';

  const AboutCourse({Key? key}) : super(key: key);

  @override
  _AboutCourseState createState() => _AboutCourseState();
}

class _AboutCourseState extends State<AboutCourse> {
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
          'Crypto Currency',
          style: TextStyle(color: Colors.black, fontFamily: 'medium'),
        ),
      ),
      body: _buildBody(),
      bottomNavigationBar: bottomBtn(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/slide1.png'),
                    fit: BoxFit.fitHeight),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: appColor2,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: Text('\$ 50',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'medium',
                            fontSize: 14,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            blackHeading('About the course'),
            blackText(
                'Your can launch a new career in web development today by learning Crepto Currency. You dont need a computer science degree or expensive software. All you need is a computer, abit of time, alot of determination, and a teacher you trust.'),
            SizedBox(height: 20),
            blackHeadingSmall('Duration'),
            SizedBox(height: 8),
            blackText('7 h 45 min')
          ],
        ),
      ),
    );
  }

  bottomBtn() {
    return Container(
      padding: EdgeInsets.all(32),
      child: MyElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TabsExample()));
          },
          text: 'Add to cart'),
    );
  }
}
