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
import 'package:fooddoor/pages/trackYourOrder.dart';
import 'package:timeline_tile/timeline_tile.dart';

class orderTracking extends StatefulWidget {
  orderTracking({Key? key}) : super(key: key);

  static const String page_id = "Order Tracking";

  @override
  _orderTrackingState createState() => _orderTrackingState();
}

class _orderTrackingState extends State<orderTracking> {
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
      title: Text(
        'Order Tracking',
        style: TextStyle(color: Colors.black, fontFamily: 'medium'),
      ),
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
                Text(
                  'Order id :',
                  style: TextStyle(color: style.greyColor),
                ),
                Text(
                  '1542015001',
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            timeLine(style.secondaryColor.withOpacity(0.3),
                'assets/images/delivered.png', 'Delivered'),
            timeLine(Colors.blue.withOpacity(0.3), 'assets/images/order.png',
                'On the way'),
            timeLine(Colors.red.withOpacity(0.3),
                'assets/images/processing.png', 'Order processing'),
            timeLine(Colors.green.withOpacity(0.3), 'assets/images/confirm.png',
                'Confirmed'),
            timeLine(style.secondaryColor.withOpacity(0.3),
                'assets/images/orderc.png', 'Order Placed'),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order From'),
                Text(
                  'McDonald\'s',
                  style: TextStyle(color: style.secondaryColor),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/burger.jpg',
                    height: 60,
                    width: 60,
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
                          height: 10,
                        ),
                        Text(
                          '\$30.00',
                          style: TextStyle(
                              color: style.secondaryColor, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.grey.shade300,
                  child: Text('2'),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
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
            billDetail('Discount', '\$10.00'),
            billDetail('Delivery Fee', 'Free'),
            billDetail('Total', '\$40.00'),
            billDetail('Payment Method', 'Visa Card'),
          ],
        ),
      ),
    );
  }

  Widget billDetail(text, type) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            type,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget timeLine(color, image, name) {
    return Container(
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        indicatorStyle: IndicatorStyle(color: style.secondaryColor),
        beforeLineStyle: LineStyle(
          color: style.secondaryColor,
        ),
        lineXY: 0.3,
        endChild: Container(
          constraints: const BoxConstraints(
            minHeight: 70,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Image.asset(
                    image,
                    height: 20,
                    width: 20,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'status :',
                      style: TextStyle(color: style.greyColor),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => trackYourOrder()));
                      },
                      child: Text(
                        name,
                        style: TextStyle(color: style.secondaryColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        startChild: Container(
          child: Column(
            children: [
              Text(
                '10 May 2020',
                style: TextStyle(color: style.greyColor),
              ),
              Text(
                '10:25 AM',
                style: TextStyle(color: style.greyColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
