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

class orderList extends StatefulWidget {
  orderList({Key? key}) : super(key: key);

  static const String page_id = "Orders";

  @override
  State<orderList> createState() => _orderListState();
}

class _orderListState extends State<orderList> {
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
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Orders',
        style: TextStyle(
          fontFamily: 'medium',
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.dehaze),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          orderDetails(Icons.timer_outlined, Colors.amber, 'During', 'Track'),
          orderDetails(Icons.close_rounded, Colors.red, 'Canceled', ''),
          orderDetails(Icons.check_box_rounded, Colors.green, 'Shipped', ''),
        ],
      ),
    );
  }

  Widget orderDetails(icn, icncolor, status, track) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 15, top: 15, left: 16, right: 16),
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
                  'ORDER #1490393',
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                Text(
                  'Details',
                  style: blueText(),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade400),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Status',
                  style: greyText(),
                ),
                Row(
                  children: [
                    Icon(icn, color: icncolor),
                    SizedBox(
                      width: 10,
                    ),
                    Text(status),
                  ],
                ),
                Text(
                  track,
                  style: blueText(),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade400),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    'Shipped Date',
                    style: greyText(),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Text(
                    '1 Apr 2022',
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade400),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    'Order Amount',
                    style: greyText(),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Text(
                    '\$104.5',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
