/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ride/helper/style.dart';

class history extends StatefulWidget {
  history({Key? key}) : super(key: key);

  static const String page_id = "History";

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              appColor,
              styleColor,
            ],
          ),
        ),
      ),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      title: Text('History'),
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
              'March 23 2022',
              style: TextStyle(
                  fontFamily: 'semi-bold', fontSize: 16, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            history(),
            history(),
            Text(
              'March 16 2022',
              style: TextStyle(
                  fontFamily: 'semi-bold', fontSize: 16, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            history(),
            history(),
          ],
        ),
      ),
    );
  }

  Widget history() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 20.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.circle_outlined,
                color: styleColor,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PICKUP LOCATION',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      'Jazz Road no 23, Maldan',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Icon(
                Icons.circle_outlined,
                color: Colors.orange,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DESTINATION LOCATION',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      'Harverd University',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
