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
import 'package:food2/pages/addCard.dart';

class addPaymentMethod extends StatefulWidget {
  addPaymentMethod({Key? key}) : super(key: key);

  static const String page_id = 'Add Payment Method';

  @override
  _addPaymentMethodState createState() => _addPaymentMethodState();
}

class _addPaymentMethodState extends State<addPaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Add Payment Method',
        style: style.headText(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          paymentmethod(() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => addCard()));
          }, 'Credit or Debit card'),
          paymentmethod(() {}, 'Paypal'),
          paymentmethod(() {}, 'Apple Pay'),
          paymentmethod(() {}, 'Google Pay'),
        ],
      ),
    );
  }

  Widget paymentmethod(route, text) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: InkWell(
        onTap: route,
        child: Row(
          children: [
            Icon(
              Icons.check_circle_outline,
              color: Colors.grey,
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(fontFamily: 'medium', fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
