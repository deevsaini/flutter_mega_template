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
import 'package:shopping/pages/success.dart';

class confirmOrder extends StatefulWidget {
  confirmOrder({Key? key}) : super(key: key);

  static const String page_id = "Confirm Order";

  @override
  State<confirmOrder> createState() => _confirmOrderState();
}

class _confirmOrderState extends State<confirmOrder> {
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
                      MaterialPageRoute(builder: (context) => success()));
                },
                child: Text('Order Now'),
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
        'Confirm Order',
        style: TextStyle(
          fontFamily: 'medium',
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            heading('CART'),
            subject('Herschel Supply Co Roy Billiford Wallet',
                'Pcs: 1 Size: Small', '\$59'),
            subject('Herschel Supply Co Roy Billiford Wallet',
                'Pcs: 1 Size: Small', '\$12'),
            subject('Herschel Supply Co Roy Billiford Wallet',
                'Pcs: 1 Size: Small', '\$31.10'),
            subject('Herschel Supply Co Roy Billiford Wallet',
                'Pcs: 1 Size: Small', '\$2'),
            heading('DELEVERY INFORMATION'),
            subject('Express Delivery', '7-8 Days', '\$30'),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Bhavnagar,Gujarat,India'),
                  Text(
                    '100 100 Near Lusty St.',
                    style: greyText(),
                  )
                ],
              ),
            ),
            heading('PAYMENT'),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey.shade400),
                  bottom: BorderSide(color: Colors.grey.shade400),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'XXXX XXXX XXXX 3030',
                  ),
                  Text(
                    'VISA',
                    style: blueText(),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey.shade400),
                  bottom: BorderSide(color: Colors.grey.shade400),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TOTAL',
                    style: headText(),
                  ),
                  Text(
                    '\$134.10',
                    style: headText(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget heading(text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey.shade400),
          bottom: BorderSide(color: Colors.grey.shade400),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: headText(),
          ),
          Text(
            'Edit',
            style: blueText(),
          )
        ],
      ),
    );
  }

  Widget subject(name, size, price) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade400),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text(
                  size,
                  style: greyText(),
                )
              ],
            ),
          ),
          Text(
            price,
            style: headText(),
          )
        ],
      ),
    );
  }
}
