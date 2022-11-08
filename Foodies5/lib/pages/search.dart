/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food2/helper/style.dart' as style;

class search extends StatefulWidget {
  search({Key? key}) : super(key: key);

  static const String page_id = 'Search';

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  List<int> style = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'search restaurant or food',
            border: InputBorder.none),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Categories',
              style: TextStyle(fontSize: 18, fontFamily: 'semi-bold'),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  for (var i in style) catagory(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget catagory() {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/cake.jpg'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 5,
          ),
          Text('Special Deals')
        ],
      ),
    );
  }
}
