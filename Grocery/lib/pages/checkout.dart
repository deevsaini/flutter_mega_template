/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/order-success.dart';
import '../helper/style.dart' as style;

class CheckoutPage extends StatefulWidget {
    CheckoutPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Checkout';

    @override
    State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {

    List<Item> products = <Item>[
        Item('2x', 'Thailand Orange'),
        Item('4x', 'Broccoli'),
        Item('1x', 'Vietnam Apple'),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: true,
                iconTheme: IconThemeData(
                    color: style.appColor
                ),
                title: Text('Checkout'),
                centerTitle: false,
                titleTextStyle: style.pageTitle(),
            ),
            body: _buildBody(),
            bottomNavigationBar: _buildBottomContainer(),
        );

    }

    Widget _buildBody() {
        return SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  color: Color.fromARGB(255, 244, 244, 244),
                  child: Text('Destination'),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(5)
                            ),
                            color: Colors.grey[300]
                        ),
                      ),
                      Expanded(
                          child: Column(
                            children: [
                              Text('1234, eva surbhi complex, aksharwadi road, kalanala, Bhavnagar - 364001'),
                            ],
                          )
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  color: Color.fromARGB(255, 244, 244, 244),
                  child: Text('Pick up time'),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      _buildRow(Icons.schedule, 'Fri, Jun 17, 2020 - 12.30'),
                      SizedBox(height: 16),
                      _buildRow(Icons.watch, 'Pick Up Time 30-40 Min'),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  color: Color.fromARGB(255, 244, 244, 244),
                  child: Text('Total'),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total', style: boldLabel()),
                      Text('\$2.50', style: boldLabel()),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  color: Color.fromARGB(255, 244, 244, 244),
                  child: Text('Payment Method'),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      _buildRow(Icons.payment_outlined, 'Add Payment Method'),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  color: Color.fromARGB(255, 244, 244, 244),
                  child: Text('Promo Code'),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      _buildRow(Icons.local_offer_outlined, 'Add Promo Code'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
    }

    Widget _buildRow(icn, text) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Expanded(
                    child: Row(
                        children: [
                            Icon(icn, color: style.appColor),
                            SizedBox(width: 16),
                            Expanded(child: Text('$text')),
                        ],
                    ),
                ),
                Icon(Icons.keyboard_arrow_right, color: style.appColor)
            ],
        );
    }

    boldLabel() {
        return TextStyle(
            fontSize: 18,
            fontFamily: 'semi-bold'
        );
    }

    _buildBottomContainer() {
        return Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new OrderSuccessPage())
                    );
                },
                child: Text('Place Order'),
                style: style.simpleButton(),
            )
        );
    }
}

class Item {
    const Item(this.qty, this.name);
    final String qty;
    final String name;
}