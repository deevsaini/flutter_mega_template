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
import 'package:food2/pages/orderReceipt.dart';

class trackOrder extends StatefulWidget {
  trackOrder({Key? key}) : super(key: key);

  static const String page_id = 'Track Order';

  @override
  _trackOrderState createState() => _trackOrderState();
}

class _trackOrderState extends State<trackOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '10-20 mins',
              style: style.headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/cake.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Placed',
                    style: TextStyle(fontFamily: 'medium'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Restaurant is preparing your order',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Delivery details',
              style: style.headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Address',
              style: style.headText(),
            ),
            style.onlyTextInput('1124 Jupitar,Blackhole'),
            SizedBox(
              height: 20,
            ),
            Text(
              'Type',
              style: style.headText(),
            ),
            style.onlyTextInput('Delivery'),
            SizedBox(
              height: 20,
            ),
            Text(
              'Order Number',
              style: style.headText(),
            ),
            style.onlyTextInput('#CF3675'),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Need help?',
                    style: style.headText(),
                  ),
                  Text(
                    'Call the customer service if you have any question about your order',
                    style: TextStyle(color: Colors.grey),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.call),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Call now'),
                      ],
                    ),
                    style: style.simpleButton(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Order',
                  style: style.headText(),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext Context) {
                          return orderReciept();
                        });
                  },
                  child: Text(
                    'View Reciept',
                    style: TextStyle(color: style.appColor),
                  ),
                )
              ],
            ),
            Text(
              'Starting 203 Blvd',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            orderList(),
            orderList(),
            orderList(),
          ],
        ),
      ),
    );
  }

  Widget orderList() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Caramel Macchiato',
              style: TextStyle(fontSize: 16, fontFamily: 'medium'),
            ),
          )
        ],
      ),
    );
  }
}
