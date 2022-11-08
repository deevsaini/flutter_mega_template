/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food1_flutter_marketplace/utilities/constancePage.dart'
    as style;

class trackDeliveryPage extends StatefulWidget {
  trackDeliveryPage({Key? key}) : super(key: key);

  static const String pageId = 'trackDeliveryPage';

  @override
  State<trackDeliveryPage> createState() => _trackDeliveryPageState();
}

class _trackDeliveryPageState extends State<trackDeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
            Text(
              'Track your order',
              style: TextStyle(fontFamily: 'bold', fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRowContent(
                  Icons.check, 'Order Confirmed!', 'Your order has been send.'),
              _buildLine(),
              _buildRowContent(
                  Icons.check, 'Order Confirmed!', 'Your order has been send.'),
              _buildLine(),
              _buildRowContent(
                  Icons.check, 'Order Confirmed!', 'Your order has been send.'),
              _buildLine(),
              _buildRowContent(
                  Icons.check, 'Order Confirmed!', 'Your order has been send.'),
              _buildLine(),
              _buildRowContent(
                  Icons.star, 'Order Confirmed!', 'Your order has been send.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRowContent(icn, txt1, txt2) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            height: 50,
            width: 50,
            decoration: style.contentButtonStyle(),
            child: Center(
                child: Icon(
              icn,
              color: Colors.white,
            )),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$txt1',
              style: TextStyle(fontFamily: 'bold', color: Colors.grey),
            ),
            Text(
              '$txt2',
              style: TextStyle(fontFamily: 'bold', color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLine() {
    return Container(
      margin: EdgeInsets.only(left: 25, bottom: 5),
      height: 80,
      width: 1,
      color: style.appColor,
    );
  }
}
