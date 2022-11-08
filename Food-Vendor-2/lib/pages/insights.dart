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
import 'package:zomato/pages/rejectedOrders.dart';
import 'package:zomato/pages/sideMenu.dart';
import 'package:zomato/pages/totalSales.dart';

class insights extends StatefulWidget {
  insights({Key? key}) : super(key: key);

  static const String page_id = "Insights";

  @override
  _insightsState createState() => _insightsState();
}

class _insightsState extends State<insights> {
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
      automaticallyImplyLeading: false,
      title: Text(
        'Business Insights',
        style: headText(),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => sideMenu()));
          },
          icon: Icon(Icons.menu),
        ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Deliverd Orders',
                  style: headText(),
                ),
                Row(
                  children: [
                    Text(
                      'See More',
                      style: TextStyle(color: appColor),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: appColor,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  deliverContainer(),
                  deliverContainer(),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF394a84),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get more orders from FoodiesWorld',
                    style: TextStyle(
                        fontFamily: 'medium',
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Items with food images lead to more orders compared to items without them.Add photos to your menu items to get more orders.',
                    style: TextStyle(color: Colors.white),
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
                  'Rejected Orders',
                  style: headText(),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => rejectedOrders()));
                  },
                  child: Row(
                    children: [
                      Text(
                        'See More',
                        style: TextStyle(color: appColor),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: appColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Text('Lost sale from orders rejected by you'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  rejectOrder(),
                  rejectOrder(),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF394a84),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Great Work!',
                    style: TextStyle(
                        fontFamily: 'medium',
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'You have accepted all orders till now in this month',
                    style: TextStyle(color: Colors.white, fontSize: 13),
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
                  'Food Preparation Time',
                  style: headText(),
                ),
                Text(
                  'Learn More',
                  style: TextStyle(color: appColor),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('Details from'),
                SizedBox(
                  width: 5,
                ),
                Row(
                  children: [
                    Text(
                      '24 Feb to 3 Mar 2022',
                      style: TextStyle(color: appColor),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: appColor,
                    )
                  ],
                )
              ],
            ),
            RichText(
              text: TextSpan(
                text: 'Delivered Orders',
                style: TextStyle(
                    fontFamily: 'regular', fontSize: 14, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: ' 51',
                      style: TextStyle(fontFamily: 'medium', fontSize: 16))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '82% Orders prepare in time',
                    style: TextStyle(fontFamily: 'medium', fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.green,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'in time orders 40',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            border: Border(
                                left:
                                    BorderSide(width: 1, color: Colors.grey))),
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.red,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Delayed orders 7',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.grey))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Most delayed in 11am - 3pm slot',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          '6 out of 9 delayed orders were during this time',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '86% orders marked Order Ready correctly',
                    style: TextStyle(fontFamily: 'medium', fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.green,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Correct 40',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            border: Border(
                                left:
                                    BorderSide(width: 1, color: Colors.grey))),
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.red,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Incorrect/missed 7',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.grey))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Always click Order Ready  when food is ready to improve accuracy of your preparation time',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Customer Complaints',
              style: headText(),
            ),
            Row(
              children: [
                Text('Details from'),
                SizedBox(
                  width: 5,
                ),
                Row(
                  children: [
                    Text(
                      '24 Feb to 3 Mar 2022',
                      style: TextStyle(color: appColor),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: appColor,
                    )
                  ],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '82% Orders prepare in time',
                    style: TextStyle(fontFamily: 'medium', fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.grey))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Wrong item(s) delivered',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          '1 order',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Top Dishes in your menu',
              style: headText(),
            ),
            Row(
              children: [
                Text('Details from'),
                SizedBox(
                  width: 5,
                ),
                Row(
                  children: [
                    Text(
                      '24 Feb to 3 Mar 2022',
                      style: TextStyle(color: appColor),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: appColor,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                dishMenu('Menu items', 'Revenew Contribution', 'Quantity Sold'),
                dishMenu('Fresh Fruit Salad', '12%', '12'),
                dishMenu('Loaded Chicken Sandwich', '9%', '8'),
                dishMenu('Watermalon Bown', '6%', '12'),
                dishMenu('Grilled Paneer Sandwich', '6%', '9'),
                dishMenu('Skin Glow', '3%', '7'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF394a84),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Run promotions to get more orders',
                    style: TextStyle(
                      fontFamily: 'medium',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Set campaigns on your own and offer customized discounts to give a further boost to your sales.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 150,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Start a promo'),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.arrow_right)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget deliverContainer() {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF0594aa),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => totalSales()));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '₹0',
                    style: TextStyle(
                        fontFamily: 'medium',
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Text(
                    '0 Orders',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                  border:
                      Border(top: BorderSide(color: Colors.white, width: 1))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'This Week :01-07 Mar',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '₹0',
                          style: TextStyle(
                              fontFamily: 'medium',
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        Text(
                          '0 Orders',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(color: Colors.white, width: 1))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'This Week :01-07 Mar',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '₹0',
                          style: TextStyle(
                              fontFamily: 'medium',
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        Text(
                          '0 Orders',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rejectOrder() {
    return Container(
      margin: EdgeInsets.only(right: 30),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today',
                ),
                Text(
                  '₹0',
                  style: TextStyle(
                    fontFamily: 'medium',
                    fontSize: 18,
                  ),
                ),
                Text(
                  '0 Orders',
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.grey.shade400, width: 1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'This Week :01-07 Mar',
                      ),
                      Text(
                        '₹0',
                        style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '0 Orders',
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(
                              color: Colors.grey.shade400, width: 1))),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'This Week :01-07 Mar',
                        ),
                        Text(
                          '₹0',
                          style: TextStyle(
                            fontFamily: 'medium',
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '0 Orders',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget dishMenu(left, center, right) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Text(
              left,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Text(
                center,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              right,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
