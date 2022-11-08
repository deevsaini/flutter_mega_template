/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shopping/helper/style.dart';
import 'package:shopping/pages/account.dart';
import 'package:shopping/pages/trackOrder.dart';

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
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => trackOrder()));
                },
                child: Text('Track Order'),
                style: simpleBlueButton(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => account()));
                },
                child: Text('View Account'),
                style: blueOutlineButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Finish',
        style: TextStyle(
          fontFamily: 'medium',
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.amber,
            radius: 70,
            child: Icon(
              Icons.check,
              size: 50,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Congratulations \n Your Order Is Accepted',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'medium', fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
              style: greyText(),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
