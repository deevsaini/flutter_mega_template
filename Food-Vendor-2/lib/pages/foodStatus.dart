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

class foodStatus extends StatefulWidget {
  foodStatus({Key? key}) : super(key: key);

  static const String page_id = "Food Status";

  @override
  State<foodStatus> createState() => _foodStatusState();
}

enum select { delivery, customer, restaurant, food, auto }

class _foodStatusState extends State<foodStatus> {
  select _site = select.delivery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'MARK ITEM OUT OF STOCK',
            style: TextStyle(fontFamily: 'semi-bold'),
          ),
          style: simpleButton(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Set time to mark out of stock',
        style: headText(),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Auto turn-on after',
                style: headText(),
              ),
              ListTile(
                title: const Text('2 Hours'),
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
                  '4 Hours',
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
                title: const Text('Next Business Day'),
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
                title: const Text('Custom Date & Time (Upto 7 days)'),
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
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Auto turn-on after',
                style: headText(),
              ),
              ListTile(
                title: const Text('I will turn it on myself'),
                leading: Radio(
                  activeColor: appColor,
                  value: select.auto,
                  groupValue: _site,
                  onChanged: (select? value) {
                    setState(() {
                      _site = value!;
                    });
                  },
                ),
              ),
              Text(
                'This item will not be visible to customers on the FoodiesWorld app till you switch it on.',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
