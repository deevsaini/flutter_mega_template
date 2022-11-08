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
import 'package:food2/pages/orderSuccess.dart';
import 'package:food2/pages/paymentMethod.dart';

class orderDetails extends StatefulWidget {
  orderDetails({Key? key}) : super(key: key);

  static const String page_id = 'Order Details';

  @override
  _orderDetailsState createState() => _orderDetailsState();
}

class _orderDetailsState extends State<orderDetails> {
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
          child: Text(
            'Continue Payment',
            style: TextStyle(fontFamily: 'medium', fontSize: 16),
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
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Order Details',
        style: style.headText(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Deliver to',
                style: style.headText(),
              ),
              Text('Edit')
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: SizedBox(
                  width: 250,
                  child: Text(
                    '1124 Jupiter, Blackhole',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(fontSize: 16, fontFamily: 'medium'),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your Order',
                style: style.headText(),
              ),
              Text('Add items')
            ],
          ),
          SizedBox(
            height: 20,
          ),
          yourOrder(),
          yourOrder(),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Add promo code'),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    onPrimary: Colors.black,
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => paymentPayment()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Add payment'),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    onPrimary: Colors.black,
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          biilDetails('Sub total price', '\$26.29'),
          biilDetails('Delivery fee', '\$8'),
          biilDetails('Promo code', 'None'),
          biilDetails('Total price', '\$34.29'),
        ],
      ),
    );
  }

  Widget yourOrder() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text(
                        '1124 Jupiter, Blackhole',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(fontSize: 16, fontFamily: 'medium'),
                      ),
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(color: style.appColor),
                    )
                  ],
                ),
              ),
            ],
          ),
          Text(
            '\$5.8',
            style: TextStyle(fontFamily: 'medium', fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget biilDetails(text, detail) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            detail,
            style: TextStyle(fontFamily: 'semi-bold'),
          ),
        ],
      ),
    );
  }
}
