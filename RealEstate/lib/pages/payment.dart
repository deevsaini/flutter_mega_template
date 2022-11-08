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

class payment extends StatefulWidget {
  payment({Key? key}) : super(key: key);

  static const String page_id = "Payment";

  @override
  _paymentState createState() => _paymentState();
}

enum select { card, cash }

class _paymentState extends State<payment> {
  select _site = select.card;
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
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Payment',
        style: headText(),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_on),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/payment.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Visa **** **** **** 2525'),
                  Text(
                    'Change',
                    style: TextStyle(color: appColor),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text('Credid Card / Debit / ATM Card'),
                leading: Radio(
                  activeColor: appColor,
                  value: select.card,
                  groupValue: _site,
                  onChanged: (select? value) {
                    setState(() {
                      _site = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Cash on Payment'),
                leading: Radio(
                  activeColor: appColor,
                  value: select.cash,
                  groupValue: _site,
                  onChanged: (select? value) {
                    setState(() {
                      _site = value!;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => payment()));
                },
                child: Text(
                  'Process to Checkout',
                  style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
                ),
                style: greenButton(),
              )
            ],
          ),
        )
      ],
    );
  }
}
