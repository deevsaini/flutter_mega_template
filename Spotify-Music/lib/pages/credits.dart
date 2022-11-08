/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

class credits extends StatefulWidget {
  credits({Key? key}) : super(key: key);

  static const String page_id = "Credits";

  @override
  _creditsState createState() => _creditsState();
}

class _creditsState extends State<credits> {
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
      title: Text('Aaya Na Tu'),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Performed by',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Arjun Kanungo'),
            SizedBox(
              height: 20,
            ),
            Text('Arjun Kanungo'),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Written by',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Arjun Kanungo'),
            SizedBox(
              height: 20,
            ),
            Text('Arjun Kanungo'),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Produced by',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Arjun Kanungo'),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Source',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Universal music india pvt. ltd.'),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Report Error'),
                Icon(Icons.chevron_right),
              ],
            )
          ],
        ),
      ),
    );
  }
}
