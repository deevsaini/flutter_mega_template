/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fooddoor/helper/style.dart' as style;
import 'package:fooddoor/pages/addPaymentMethod.dart';
import 'package:fooddoor/pages/orderTracking.dart';
import 'package:fooddoor/pages/tabs.dart';

class checkout extends StatefulWidget {
  checkout({Key? key}) : super(key: key);

  static const String page_id = "CheckOut";

  @override
  _checkoutState createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
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
            showDialog(
                context: context,
                builder: (BuildContext Context) {
                  return successMessage();
                });
          },
          child: Text(
            'Confirm Order',
            style: TextStyle(
                fontFamily: 'semi-bold', fontSize: 16, color: Colors.white),
          ),
          style: style.simpleButton(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Checkout',
        style: TextStyle(color: Colors.black, fontFamily: 'medium'),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(Icons.notification_add_outlined),
        )
      ],
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
            Row(
              children: [
                ClipRRect(
                  child: Image.asset(
                    'assets/images/map.png',
                    height: 60,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Deliver To : Home',
                              style: style.mediumText(),
                            ),
                            Text(
                              'Change',
                              style: TextStyle(
                                  color: style.secondaryColor,
                                  fontFamily: 'medium',
                                  fontSize: 16),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: style.greyColor,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '13A Havinr Street, New York',
                              style: TextStyle(color: style.greyColor),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/burger.jpg',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Crispy Burger',
                        style: style.headText(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$30.00',
                            style: TextStyle(
                                color: style.secondaryColor, fontSize: 16),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 7),
                            decoration: BoxDecoration(
                                color: style.appColor.withOpacity(0.08)),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.remove,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('1'),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.add,
                                  size: 20,
                                  color: style.secondaryColor,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment method',
                  style: style.mediumText(),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => addPaymentMethod()));
                  },
                  child: Text(
                    'Add New',
                    style: TextStyle(
                        color: style.secondaryColor,
                        fontFamily: 'Add New',
                        fontSize: 16),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Icon(
                    Icons.paypal_outlined,
                    color: Colors.blue,
                    size: 40,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Paypal',
                            style: style.mediumText(),
                          ),
                          Text(
                            'Faster and safer way to send money',
                            style:
                                TextStyle(color: style.greyColor, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Icon(
                    Icons.credit_card,
                    color: Colors.green,
                    size: 40,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Credit Card',
                            style: style.mediumText(),
                          ),
                          Text(
                            'Faster and safer way to send money',
                            style:
                                TextStyle(color: style.greyColor, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: style.secondaryColor,
                    radius: 12,
                    child: Icon(
                      Icons.check,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 1, color: Colors.grey.shade300))),
              child: Row(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      'assets/images/promo.png',
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('Add Promo Coden'),
                    ),
                  ),
                  Icon(Icons.chevron_right)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(width: 1, color: Colors.grey.shade300))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Item Total',
                        style: style.mediumText(),
                      ),
                      Text(
                        '\$50.00',
                        style: style.mediumText(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Fee',
                        style: style.mediumText(),
                      ),
                      Text(
                        'Free',
                        style: TextStyle(
                            color: style.appColor,
                            fontFamily: 'medium',
                            fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(fontSize: 24, fontFamily: 'medium'),
                ),
                Text(
                  '\$40.00',
                  style: TextStyle(fontSize: 24, fontFamily: 'medium'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget successMessage() {
    return AlertDialog(
      contentPadding: EdgeInsets.all(16),
      content: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You Place The Order Successfully',
              style: style.mediumText(),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'You placed the order successfully. You will get your order with in 25 minutes.thanks for using our services, Enjoy your order.',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => tabs()));
              },
              child: Text(
                'Keep Browsing Food',
                style: TextStyle(
                    fontSize: 16, fontFamily: 'medium', color: Colors.green),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => orderTracking()));
              },
              child: Text(
                'Order Tracking',
                style: TextStyle(
                    fontSize: 16, fontFamily: 'medium', color: Colors.green),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
