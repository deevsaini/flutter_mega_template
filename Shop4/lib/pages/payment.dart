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
import 'package:shopping/pages/confirmOrder.dart';

class payment extends StatefulWidget {
  payment({Key? key}) : super(key: key);

  static const String page_id = "Payment";

  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
  bool card = true;

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
                      MaterialPageRoute(builder: (context) => confirmOrder()));
                },
                child: Text('Next Step'),
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
                  Navigator.pop(context);
                },
                child: Text('Back'),
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
        'Payment',
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
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Scan Card'),
              style: blueOutlineButton(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Or'),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: simpleInputText('Full Name'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: simpleInputText('Card Number'),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: TextField(
                  decoration: simpleInputIconText(
                    'MM',
                    Icon(Icons.keyboard_arrow_down),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 4,
                child: TextField(
                  decoration: simpleInputIconText(
                    'YYYY',
                    Icon(Icons.keyboard_arrow_down),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 4,
                child: TextField(
                  decoration: simpleInputText('CVV'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: this.card,
                onChanged: (value) {
                  setState(() {
                    this.card = value!;
                  });
                },
              ),
              Text('Save Credit Card Information')
            ],
          )
        ],
      ),
    );
  }
}
