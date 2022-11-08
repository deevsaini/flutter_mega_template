/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food1_flutter_marketplace/pages/paymentDetailPage.dart';
import 'package:food1_flutter_marketplace/pages/successPage.dart';
import 'package:food1_flutter_marketplace/utilities/constancePage.dart'
    as style;

class checkoutPage extends StatefulWidget {
  checkoutPage({Key? key}) : super(key: key);

  static const String pageId = 'checkoutPage';

  @override
  State<checkoutPage> createState() => _checkoutPageState();
}

class _checkoutPageState extends State<checkoutPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
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
              'Checkout',
              style: TextStyle(fontFamily: 'bold', fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Delivery Address',
                textAlign: TextAlign.left,
                style: TextStyle(fontFamily: 'bold', fontSize: 17),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 180,
                  child: Wrap(
                    children: [
                      Text(
                        'No 110, 5th parcke, new york city.',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontFamily: 'bold', fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: Text(
                    'Change',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 15, color: style.appColor),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 180,
                    child: Wrap(
                      children: [
                        Text(
                          'Payment method.',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontFamily: 'bold', fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => paymentDetailPage()));
                      },
                      child: Text(
                        '+ Add cart',
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 15, color: style.appColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Cash delivery'),
                    Checkbox(
                      checkColor: Colors.white,
                      value: isChecked,
                      activeColor: style.appColor,
                      shape: CircleBorder(),
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(20),
                            child: FittedBox(
                              child: Image.asset('assets/images/p2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('1234 6542 1234 1234'),
                      ],
                    ),
                    Checkbox(
                      checkColor: Colors.white,
                      value: isChecked,
                      activeColor: style.appColor,
                      shape: CircleBorder(),
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(20),
                            child: FittedBox(
                              child: Image.asset('assets/images/p2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('initappz@gmail.com'),
                      ],
                    ),
                    Checkbox(
                      checkColor: Colors.white,
                      value: isChecked,
                      activeColor: style.appColor,
                      shape: CircleBorder(),
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub total :',
                    style: TextStyle(fontFamily: 'bold'),
                  ),
                  Text(
                    '68.00',
                    style: TextStyle(fontFamily: 'bold', color: style.appColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery cost :',
                    style: TextStyle(fontFamily: 'bold'),
                  ),
                  Text(
                    '\$ 05',
                    style: TextStyle(fontFamily: 'bold', color: style.appColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discount :',
                    style: TextStyle(fontFamily: 'bold'),
                  ),
                  Text(
                    '\$ 05',
                    style: TextStyle(fontFamily: 'bold', color: style.appColor),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total :',
                    style: TextStyle(
                      fontFamily: 'bold',
                      fontSize: 17,
                      color: style.appColor,
                    ),
                  ),
                  Text(
                    '\$ 68.00',
                    style: TextStyle(
                        fontFamily: 'bold',
                        color: style.appColor,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => successPage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Send order',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
