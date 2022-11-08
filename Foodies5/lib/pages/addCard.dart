/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food2/helper/style.dart' as style;
import 'package:food2/pages/orderDetails.dart';

class addCard extends StatefulWidget {
  addCard({Key? key}) : super(key: key);

  static const String page_id = 'Add Card';

  @override
  _addCardState createState() => _addCardState();
}

class _addCardState extends State<addCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => orderDetails()));
          },
          child: Text(
            'Save',
            style: TextStyle(fontFamily: 'medium', fontSize: 16),
          ),
          style: style.simpleButton(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Add Card',
        style: style.headText(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Card Number',
            style: style.headText(),
          ),
          style.onlyTextInput('XXXX-XXXX-XXXX-XXXX'),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Exp Date',
                      style: style.headText(),
                    ),
                    style.onlyTextInput('MM/YY'),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CVV',
                      style: style.headText(),
                    ),
                    style.onlyTextInput('123'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Country',
            style: style.headText(),
          ),
          style.onlyTextInput('India'),
          SizedBox(
            height: 20,
          ),
          Text(
            'Post Code',
            style: style.headText(),
          ),
          style.onlyTextInput('323-323'),
        ],
      ),
    );
  }
}
