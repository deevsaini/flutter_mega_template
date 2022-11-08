/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/tabs.dart';
import 'package:home/widget/elevated_button.dart';
import '../components/styles.dart';

class BookingBill extends StatefulWidget {
  static const String id = 'BookingBill';

  const BookingBill({Key? key}) : super(key: key);

  @override
  _BookingBillState createState() => _BookingBillState();
}

class _BookingBillState extends State<BookingBill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text('Selected Villa', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.bookmark_border,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomBtn(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildItem(),
            SizedBox(height: 10),
            blackBoldHeading('Charge to pay'),
            SizedBox(height: 10),
            _buildBillDetail(),
            blackBoldHeading('Payment Method'),
            SizedBox(height: 10),
            _buildPayment()
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBtn() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: MyElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TabsExample()));
        },
        text: 'Pay Now',
      ),
    );
  }

  Widget _buildItem() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    'assets/images/h3.jpg',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -5,
                  right: -5,
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                          color: appColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Row(
                        children: [
                          Icon(Icons.favorite, size: 10, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            "220",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      )),
                )
              ],
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  blackBoldHeading('\$12,120'),
                  SizedBox(height: 5),
                  greyText('The Best Villa Efcee'),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.directions_bus,
                          size: 14, color: Colors.black38),
                      SizedBox(width: 5),
                      Text(
                        "4",
                        style: TextStyle(color: Colors.black38, fontSize: 12),
                      ),
                      SizedBox(width: 20),
                      Icon(Icons.garage, size: 14, color: Colors.black38),
                      SizedBox(width: 5),
                      Text(
                        "2",
                        style: TextStyle(color: Colors.black38, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBillDetail() {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              greyText("Security Deposit"),
              greyText("\$7,345"),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              greyText("Token"),
              greyText("\$1,345"),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              greyText("One time newstaway"),
              greyText("\$2,345"),
            ],
          ),
          SizedBox(height: 10),
          Divider(thickness: 1, color: Colors.black12),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              blackText("Total Pay"),
              blackText("\$14,345"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPayment() {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/google.png',
            width: 24,
            height: 24,
          ),
          SizedBox(width: 16),
          blackText("****9120"),
        ],
      ),
    );
  }
}
