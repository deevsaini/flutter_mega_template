/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:realestate/helper/style.dart';

class filter extends StatefulWidget {
  filter({Key? key}) : super(key: key);

  static const String page_id = "Filter";

  @override
  _filterState createState() => _filterState();
}

class _filterState extends State<filter> {
  int tabID = 1;

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
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Filter',
        style: headText(),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        )
      ],
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
              'Search Filters',
              style: headText(),
            ),
            Row(
              children: [
                darkButton('Want to Buy'),
                SizedBox(
                  width: 10,
                ),
                lightButton('Want to Rent')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search Filters',
                  style: headText(),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))),
                  child: Text(
                    'Change City',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 10,
                  child: TextField(
                    decoration: InputText('Search by state or zip Code'),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Property Type',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            _buildSegment(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Price Range',
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))),
                  child: Text(
                    'Change City',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('\$5000'),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: appColor.withOpacity(0.1),
                      onPrimary: appColor,
                      minimumSize: const Size.fromHeight(35),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    'to',
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text('\$10000'),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: appColor))),
                child: Text(
                  'Expand More Options',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: appColor, fontFamily: 'medium'),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                darkButton('Reset Filters'),
                SizedBox(
                  width: 10,
                ),
                lightButton('Apply Filters')
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                tabID = 1;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: segmentDecoration(1),
              child: Text('Home', style: segmentText(1)),
            ),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  tabID = 2;
                });
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: segmentDecoration(2),
                child: Text('Plots', style: segmentText(2)),
              )),
          InkWell(
              onTap: () {
                setState(() {
                  tabID = 3;
                });
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: segmentDecoration(3),
                child: Text('Commercial', style: segmentText(3)),
              )),
        ],
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
        color: tabID == val ? appColor : Colors.transparent,
        borderRadius: BorderRadius.circular(5));
  }

  segmentText(val) {
    return TextStyle(
        fontSize: 16,
        fontFamily: tabID == val ? 'semibold' : 'medium',
        color: tabID == val ? Colors.white : Colors.black);
  }

  Widget darkButton(text) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: appColor,
          onPrimary: Colors.white,
          minimumSize: const Size.fromHeight(40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }

  Widget lightButton(text) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: appColor.withOpacity(0.1),
          onPrimary: appColor,
          minimumSize: const Size.fromHeight(40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
