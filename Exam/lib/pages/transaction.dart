/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/pinVerify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class transaction extends StatefulWidget {
  transaction({Key? key}) : super(key: key);

  static const String page_id = "Transaction";

  @override
  State<transaction> createState() => _transactionState();
}

class _transactionState extends State<transaction> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => pinVerify()));
          },
          child: Text(
            'Proceed to confirm',
            style: TextStyle(fontFamily: 'medium', fontSize: 16),
          ),
          style: blueButton(),
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
        'Transaction',
        style: headText(),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notification_add_outlined),
        ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade300))),
                  child: Text(
                    '\$ 87.00',
                    style: TextStyle(
                        color: Colors.red, fontSize: 24, fontFamily: 'medium'),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade300))),
                  child: Row(
                    children: [
                      Text(
                        'USD',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Choose payment method',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/card.png',
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Card Name'),
                Text(
                  'Credit card',
                  style: TextStyle(color: appColor),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration: inputText('Card number', '**** **** **** ****'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: TextField(
                    obscureText: true,
                    decoration: inputText('Valid until', '02/2024'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 6,
                  child: TextField(
                    obscureText: true,
                    decoration: inputText('CVV', '111'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: inputText('Card holder', 'Jaydeep hirani'),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('save card data for future data'),
                Transform.scale(
                  scale: 0.8,
                  child: CupertinoSwitch(
                    activeColor: appColor,
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
