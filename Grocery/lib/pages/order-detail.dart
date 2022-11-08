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

class OrderDetailPage extends StatefulWidget {
    OrderDetailPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Order Detail';

    @override
    State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {

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
                title: Text('ASD346536'),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: style.bottomBorder(),
                  child: Text('16 June, 11:30 AM'),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: style.bottomBorder(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildBoldTitle('Order Status'),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: style.bottomBorder(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildBoldTitle('Destination'),
                      SizedBox(height: 10),
                      Text('240 West 14th street, New York, NY 10031')
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: style.bottomBorder(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildBoldTitle('Courier'),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.local_mall, color: style.appColor),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text('Grocery Courier'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: style.bottomBorder(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildBoldTitle('Total Cost'),
                          Text('\$8.52',
                            style: TextStyle(
                                fontFamily: 'semi-bold',
                                fontSize: 18
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text('You can check your order detail here, Thank you for order.',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
    }

    Widget _buildBoldTitle(val) {
        return Text('$val',
            style: TextStyle(
                fontFamily: 'medium',
                fontSize: 16
            ),
        );
    }
}

class Item {
  const Item(this.title, this.status);
  final String title;
  final int status;
}