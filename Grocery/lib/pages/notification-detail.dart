/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class NotificationDetailPage extends StatefulWidget {
    NotificationDetailPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Notification Detail';

    @override
    State<NotificationDetailPage> createState() => _NotificationDetailPageState();
}

class _NotificationDetailPageState extends State<NotificationDetailPage> {

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
                title: Text('Notifications'),
                centerTitle: false,
                titleTextStyle: style.pageTitle(),
            ),
            body: _buildBody(), // This trailing comma makes auto-formatting nicer for build methods.
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
                  child: Text('Order Information'),
                ),
                _buildOrderDetail(),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  color: Color.fromARGB(255, 244, 244, 244),
                  child: Text('Your Order'),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: ListView(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    children: List.generate(products.length, (index) {
                      return _buildSingleItem(products[index]);
                    }),
                  ),
                ),
              ],
            ),
          ),
        );
    }

    Widget _buildOrderDetail() {
        return Container(
            padding: EdgeInsets.all(16),
            child: Column(
                children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text('Order ID', style: greyLabel()),
                            Text('#ASD468458')
                        ],
                    ),
                    SizedBox(height: 16),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text('Status', style: greyLabel()),
                            Text('Completed')
                        ],
                    ),
                    SizedBox(height: 16),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text('Delivery Date', style: greyLabel()),
                            Text('Fri, Jun 17, 2020 - 12.30')
                        ],
                    ),
                    SizedBox(height: 16),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text('Delivered to', style: greyLabel()),
                            Text('Home')
                        ],
                    ),
                    SizedBox(height: 16),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text('Recipient Name', style: greyLabel()),
                            Text('Jonh Doe')
                        ],
                    ),
                ],
            ),
        );
    }

    Widget _buildSingleItem(product) {
        return Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
                children: [
                    Container(
                        width: 36,
                        height: 36,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 244, 244, 244),
                            borderRadius: BorderRadius.all(
                                Radius.circular(3)
                            )
                        ),
                        child: Center(
                            child: Text(product.qty,style: qtyLabel()),
                        ),
                    ),
                    Text(product.name, style: greyLabel()),
                ],
            )
        );
    }

    greyLabel() {
        return TextStyle(
            color: Colors.grey,
            fontSize: 16
        );
    }

    qtyLabel() {
        return TextStyle(
            fontFamily: 'medium',
        );
    }
}

class Item {
    const Item(this.qty, this.name);
    final String qty;
    final String name;
}