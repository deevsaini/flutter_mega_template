/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/orderSuccess.dart';
import 'package:flutter/material.dart';

class payment extends StatefulWidget {
  payment({Key? key}) : super(key: key);

  static const String page_id = "Payment";

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => orderSuccess()));
          },
          child: Text('Pay Now'),
          style: simpleButton(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      title: SizedBox(
        width: 250,
        child: Text(
          'Hi,Jaydeep Hirani',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          maxLines: 1,
          softWrap: false,
          style: headText(),
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
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
            searchbar(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Select Payment',
              style: headText(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/pay1.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/pay2.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/pay3.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/pay4.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.teal,
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.teal))),
                  child: Text(
                    'ADD NEW CARD',
                    style: TextStyle(color: Colors.teal),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Card Number',
              style: headText(),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: simpleInputText('9898 9898 9888 7878'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Name',
              style: headText(),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              decoration: simpleInputText('Jaydeep Hirani'),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expiry Date',
                        style: headText(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: simpleInputText('08/2025'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVV',
                        style: headText(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: simpleInputText('111'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
