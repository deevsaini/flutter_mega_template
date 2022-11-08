/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:spotify/helper/style.dart';

class aboutRecommendation extends StatefulWidget {
  aboutRecommendation({Key? key}) : super(key: key);

  static const String page_id = "About Recommendations";

  @override
  _aboutRecommendationState createState() => _aboutRecommendationState();
}

class _aboutRecommendationState extends State<aboutRecommendation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About recommendations',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
              style: TextStyle(height: 1.5),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.',
              style: TextStyle(height: 1.5),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
              style: TextStyle(height: 1.5),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.',
              style: TextStyle(height: 1.5),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.',
              style: TextStyle(height: 1.5),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
              style: TextStyle(height: 1.5),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.',
              style: TextStyle(height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
