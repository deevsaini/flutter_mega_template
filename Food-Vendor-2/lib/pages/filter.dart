/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:zomato/helper/style.dart';

class filter extends StatefulWidget {
  filter({Key? key}) : super(key: key);

  static const String page_id = "Filter";

  @override
  _filterState createState() => _filterState();
}

enum select { delivery, customer, restaurant, food, out, foodiesh, self, pick }

class _filterState extends State<filter> {
  select _site = select.delivery;
  select _order = select.foodiesh;

  int tabID = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'CLEAR ALL',
                  style: TextStyle(color: Colors.grey, fontFamily: 'medium'),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'APPLY',
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                style: simpleButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      automaticallyImplyLeading: false,
      title: Text(
        'Filter',
        style: headText(),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    _buildSegment(),
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    if (tabID == 1)
                      statusContainer()
                    else if (tabID == 2)
                      typeContainer()
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  decoration: segmentDecoration(1),
                  child: Text('Order Status', style: segmentText(1)),
                ),
              ),
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    tabID = 2;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  decoration: segmentDecoration(2),
                  child: Text('Order Type', style: segmentText(2)),
                )),
          ],
        ),
      ),
    );
  }

  segmentText(val) {
    return TextStyle(
      fontSize: 16,
      fontFamily: tabID == val ? 'medium' : 'regular',
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
        border: Border(
            left: BorderSide(
                width: 2,
                color: tabID == val ? appColor : Colors.transparent)));
  }

  Widget statusContainer() {
    return Container(
      child: Column(
        children: [
          ListTile(
            title: const Text('Delivered'),
            leading: Radio(
              activeColor: appColor,
              value: select.delivery,
              groupValue: _site,
              onChanged: (select? value) {
                setState(() {
                  _site = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text(
              'Customer Cancelled',
            ),
            leading: Radio(
              activeColor: appColor,
              value: select.customer,
              groupValue: _site,
              onChanged: (select? value) {
                setState(() {
                  _site = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Restaurant Cancelled'),
            leading: Radio(
              activeColor: appColor,
              value: select.restaurant,
              groupValue: _site,
              onChanged: (select? value) {
                setState(() {
                  _site = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('FoodiesWorld Cancelled'),
            leading: Radio(
              activeColor: appColor,
              value: select.food,
              groupValue: _site,
              onChanged: (select? value) {
                setState(() {
                  _site = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Timed Out'),
            leading: Radio(
              activeColor: appColor,
              value: select.out,
              groupValue: _site,
              onChanged: (select? value) {
                setState(() {
                  _site = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget typeContainer() {
    return Container(
      child: Column(
        children: [
          ListTile(
            title: const Text('FoodiesWorld Delivery'),
            leading: Radio(
              activeColor: appColor,
              value: select.foodiesh,
              groupValue: _order,
              onChanged: (select? value) {
                setState(() {
                  _order = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Self Delivery'),
            leading: Radio(
              activeColor: appColor,
              value: select.self,
              groupValue: _order,
              onChanged: (select? value) {
                setState(() {
                  _order = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Pickup'),
            leading: Radio(
              activeColor: appColor,
              value: select.pick,
              groupValue: _order,
              onChanged: (select? value) {
                setState(() {
                  _order = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
