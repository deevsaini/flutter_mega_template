/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/payment-method.dart';
import '../helper/style.dart' as style;

class ReviewOrderPage extends StatefulWidget {
  ReviewOrderPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Review Order';

    @override
    State<ReviewOrderPage> createState() => _ReviewOrderPageState();
}

class _ReviewOrderPageState extends State<ReviewOrderPage> {

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
                title: Text('Review Order'),
                centerTitle: false,
                titleTextStyle: style.pageTitle(),
            ),
            bottomNavigationBar: _buildBottomContainer(),
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
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  color: Color.fromARGB(255, 244, 244, 244),
                  child: Text('Fees'),
                ),
                _buildOrderDetail(),

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
                            Text('Shipping', style: greyLabel()),
                            Text('Free')
                        ],
                    ),
                    SizedBox(height: 16),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text('Est Tax', style: greyLabel()),
                            Text('Free')
                        ],
                    ),
                    SizedBox(height: 10),
                    Text('#ASD76583',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text('Total', style: greyLabel()),
                            Text('\$2.50')
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

    Widget _buildBottomContainer() {
        return Container(
          padding: EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => new PaymentMethodPage())
              );
            },
            child: Text('Checkout'),
            style: style.simpleButton(),
          ),
        );
    }
}

class Item {
    const Item(this.qty, this.name);
    final String qty;
    final String name;
}