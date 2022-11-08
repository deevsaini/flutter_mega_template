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
import 'package:fooddoor/helper/style.dart' as style;
import 'package:fooddoor/pages/applyFilter.dart';

class filter extends StatefulWidget {
  filter({Key? key}) : super(key: key);

  static const String page_id = "Filter";

  @override
  _filterState createState() => _filterState();
}

class _filterState extends State<filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          child: const Text(
            "Apply Filters",
            style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
          ),
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new applyFilter()));
          },
          style: style.simpleButton(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Filter',
        style: TextStyle(color: Colors.black, fontFamily: 'medium'),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Reset',
            style: TextStyle(color: style.secondaryColor),
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Category',
            style: style.headText(),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 8),
                decoration: BoxDecoration(
                    color: style.appColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'Food',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 8),
                decoration: BoxDecoration(
                    color: style.appColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'Drink',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                decoration: BoxDecoration(
                    color: style.appColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'Deseart',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Food Groups',
            style: style.headText(),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              foodGroup('Dairy'),
              foodGroup('Pizza'),
              foodGroup('Breakfast'),
              foodGroup('Soups'),
              foodGroup('Salads'),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Chip(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 7),
                  backgroundColor: style.appColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: style.appColor, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  label: Text(
                    'Burger',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              foodGroup('Chicken'),
              foodGroup('Meat'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Rating',
            style: style.headText(),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              rating('1'),
              rating('2'),
              rating('3'),
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                    color: style.appColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Text(
                      '4',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 22,
                    ),
                  ],
                ),
              ),
              rating('5'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Price range',
            style: style.headText(),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              range('\$'),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  backgroundColor: style.appColor,
                  child: Text(
                    '\$\$',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              range('\$\$\$'),
              range('\$\$\$\$'),
              range('\$\$\$\$'),
            ],
          )
        ],
      ),
    );
  }

  Widget foodGroup(text) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Chip(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 7),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: style.appColor, width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        label: Text(text),
      ),
    );
  }

  Widget rating(rate) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
          color: style.appColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          Text(
            rate,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.star,
            color: style.secondaryColor,
            size: 22,
          ),
        ],
      ),
    );
  }

  Widget range(price) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: CircleAvatar(
        backgroundColor: style.appColor.withOpacity(0.1),
        child: Text(
          price,
          style: TextStyle(color: Colors.black54),
        ),
      ),
    );
  }
}
