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

class carThing extends StatefulWidget {
  carThing({Key? key}) : super(key: key);

  static const String page_id = "Car Thing";

  @override
  _carThingState createState() => _carThingState();
}

class _carThingState extends State<carThing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      title: Text('Car Thing'),
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
              'Car Thing',
              style: headText(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                'Spotify\'s voice-enabled audio player for the car. Just say "Hey Spotify" to get all your music and podcast'),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Center(
                child: Text(
                  'SET UP CAR THING',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
