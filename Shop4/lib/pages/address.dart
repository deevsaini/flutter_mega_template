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
import 'package:shopping/pages/payment.dart';

class address extends StatefulWidget {
  address({Key? key}) : super(key: key);

  static const String page_id = "Address";

  @override
  _addressState createState() => _addressState();
}

class _addressState extends State<address> {
  int tabID = 1;
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
                      MaterialPageRoute(builder: (context) => payment()));
                },
                child: Text('Payment'),
                style: simpleBlueButton(),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Cancel Order'),
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
        'Address',
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
        children: [
          _buildSegment(),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: simpleInputText('Full Name'),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: simpleInputText('E-mail'),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: simpleInputText('Phone'),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: simpleInputIconText(
                'United States', Icon(Icons.keyboard_arrow_down)),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: simpleInputIconText(
                'California', Icon(Icons.keyboard_arrow_down)),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: simpleInputIconText(
                'Los Angeles', Icon(Icons.keyboard_arrow_down)),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: simpleInputText('Address'),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: simpleInputText('Zip-code'),
          ),
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  decoration: segmentDecoration(1),
                  child: Text(
                    'Free Delivery',
                    textAlign: TextAlign.center,
                    style: segmentText(1),
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 2;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  decoration: segmentDecoration(2),
                  child: Text(
                    'Express \$30',
                    textAlign: TextAlign.center,
                    style: segmentText(2),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: tabID == val ? appColor : Colors.transparent);
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: tabID == val ? 'medium' : 'regular',
        color: tabID == val ? Colors.white : Colors.grey);
  }
}
