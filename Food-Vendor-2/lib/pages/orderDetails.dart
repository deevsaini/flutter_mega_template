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

class orderDetails extends StatefulWidget {
  orderDetails({Key? key}) : super(key: key);

  static const String page_id = "Order Details";

  @override
  State<orderDetails> createState() => _orderDetailsState();
}

class _orderDetailsState extends State<orderDetails> {
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
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Order Details',
        style: headText(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dharmanandan Puff House',
              style: TextStyle(fontFamily: 'medium', fontSize: 18),
            ),
            Text(
              'Bhavnagar Locality, Bhavnagar',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Order',
                  style: headText(),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: secondaryColor),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Mark as favourite',
                    style: TextStyle(color: secondaryColor),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey.shade300))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/veg.png',
                        width: 20,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Double cheese Puff',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 3),
                            decoration: BoxDecoration(
                                color: Colors.green.shade100,
                                border:
                                    Border.all(width: 1, color: Colors.green)),
                            child: Text(
                              '1',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('X ₹60')
                        ],
                      ),
                      Text('₹60')
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey.shade300))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/veg.png',
                        width: 20,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Double cheese Puff',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 3),
                            decoration: BoxDecoration(
                                color: Colors.green.shade100,
                                border:
                                    Border.all(width: 1, color: Colors.green)),
                            child: Text(
                              '1',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('X ₹60')
                        ],
                      ),
                      Text('₹60')
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Item Total'),
                Text('₹120'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Taxes & Charges',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text('₹16.50'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delivery Charge'),
                Text('Free'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Total',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
                Text(
                  '₹138.50',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your total saving',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
                Text(
                  '₹20.00',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Order Details',
              style: TextStyle(fontFamily: 'medium', fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'ORDER NUMBER',
              style: TextStyle(color: Colors.grey),
            ),
            Text('3812853256'),
            SizedBox(
              height: 10,
            ),
            Text(
              'PAYMENT',
              style: TextStyle(color: Colors.grey),
            ),
            Text('Complete'),
            SizedBox(
              height: 10,
            ),
            Text(
              'DATE',
              style: TextStyle(color: Colors.grey),
            ),
            Text('March 12, 2022 at 10:00 AM'),
            SizedBox(
              height: 10,
            ),
            Text(
              'PHONE NUMBER',
              style: TextStyle(color: Colors.grey),
            ),
            Text('987654XXXX'),
            SizedBox(
              height: 10,
            ),
            Text(
              'DELIVER TO',
              style: TextStyle(color: Colors.grey),
            ),
            Text('316 eva surbhi opp. aksharwadi, Hill drive, Bhavnagar'),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dharmanandan Puff House',
                    style: TextStyle(fontFamily: 'medium', color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lic. No. 20700207002020',
                    style: TextStyle(fontFamily: 'medium', color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
