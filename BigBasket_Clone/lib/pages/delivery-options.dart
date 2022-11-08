/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/address-list.dart';
import 'package:bigbasket/pages/gift-message.dart';
import 'package:bigbasket/pages/payment.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class DeliveryOptionsPage extends StatefulWidget {
    DeliveryOptionsPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Delivery Options';

    @override
    State<DeliveryOptionsPage> createState() => _DeliveryOptionsPageState();
}

class _DeliveryOptionsPageState extends State<DeliveryOptionsPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Color.fromARGB(255, 208, 208, 208),
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(56),
                child: _buildAppBar(),
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildAppBar() {
        return AppBar(
            backgroundColor: style.appColor,
            elevation: 0,
            centerTitle: true,
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            leading: IconButton(
                onPressed: () {
                    Navigator.of(context).pop();
                },
                icon: Icon(Icons.keyboard_arrow_left),
            ),
            title: Text('Delivery Options'),
            titleTextStyle: style.whitePageTitle()
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.only(bottom: 16),
                            child: Column(
                                children: [
                                    Row(
                                        children: [
                                            Expanded(
                                                child: Row(
                                                    children: [
                                                        Icon(Icons.location_on_outlined, size: 18),
                                                        SizedBox(width: 4),
                                                        Text('Deliver to: Home', style: boldLabel()),
                                                        SizedBox(width: 4),
                                                        Text('(Default)',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontFamily: 'regular',
                                                                color: Colors.grey
                                                            ),
                                                        )
                                                    ],
                                                )
                                            ),
                                            InkWell(
                                                onTap: () {
                                                    Navigator.push(context, new MaterialPageRoute(
                                                        builder: (context) => new AddressListPage())
                                                    );
                                                },
                                                child: Container(
                                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                                    decoration: style.outlineDecoration(),
                                                    child: Text('Change'),
                                                )
                                            )
                                        ],
                                    ),
                                    SizedBox(height: 5),
                                    Text('1234, Eva surbhi, 364001, Bhavnagar, Pin - 364001')
                                ],
                            ),
                        ),

                        Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.only(bottom: 16),
                            child: Column(
                                children: [
                                    Row(
                                        children: [
                                            Expanded(
                                                child: Row(
                                                    children: [
                                                        Icon(Icons.card_giftcard_outlined, size: 18),
                                                        SizedBox(width: 4),
                                                        Text('Is this a gift order?', style: boldLabel()),
                                                    ],
                                                )
                                            ),
                                            InkWell(
                                                onTap: () {
                                                    Navigator.push(context, new MaterialPageRoute(
                                                        builder: (context) => new GiftMessagePage())
                                                    );
                                                },
                                                child: Container(
                                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                                    decoration: style.outlineDecoration(),
                                                    child: Text('Add Message'),
                                                )
                                            ),
                                        ],
                                    ),
                                ],
                            ),
                        ),

                        Container(
                            color: style.appBackColor,
                            child: Column(
                                children: [
                                    Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 1,
                                                    color: Colors.white
                                                )
                                            )
                                        ),
                                        child: Row(
                                            children: [
                                                Text('Default Delivery \nOptions',
                                                    style: boldLabel(),
                                                ),
                                                SizedBox(width: 16),
                                                Expanded(
                                                    child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                            Text('1 Shipment',
                                                                style: TextStyle(
                                                                    fontFamily: 'medium'
                                                                ),
                                                            ),
                                                            Text('Delivery Charges: Rs. 50',
                                                                style: TextStyle(
                                                                    fontFamily: 'medium'
                                                                ),
                                                            )
                                                        ],
                                                    )
                                                )
                                            ],
                                        ),
                                    ),
                                    Container(
                                        padding: EdgeInsets.all(16),
                                        child: Column(
                                            children: [
                                                Row(
                                                    children: [
                                                        Expanded(
                                                            child: Text('Shipment 1: Standard Delivery')
                                                        ),
                                                        Container(
                                                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                                            decoration: style.outlineDecoration(),
                                                            child: Text('View 1 Item'),
                                                        )
                                                    ],
                                                ),

                                                Container(
                                                    margin: EdgeInsets.symmetric(vertical: 16),
                                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                                                    decoration: style.outlineDecoration(),
                                                    child: Row(
                                                        children: [
                                                            Expanded(
                                                                child: Row(
                                                                    children: [
                                                                        Icon(Icons.access_time, size: 20),
                                                                        SizedBox(width: 6),
                                                                        Text('21 Jan, Fri PM - 5:30 PM'),
                                                                    ],
                                                                )
                                                            ),
                                                            Icon(Icons.keyboard_arrow_down),
                                                        ],
                                                    ),
                                                ),

                                                Row(
                                                    children: [
                                                        Text('Delivery Charge: Rs 50',
                                                            style: TextStyle(
                                                                color: Colors.grey,
                                                                fontSize: 14
                                                            ),
                                                        ),
                                                        SizedBox(width: 6),
                                                        Icon(Icons.info_outline, color: Colors.grey, size: 18)
                                                    ],
                                                ),
                                                Container(
                                                    margin: EdgeInsets.only(top: 16),
                                                    width: double.infinity,
                                                    child: ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.push(context, new MaterialPageRoute(
                                                              builder: (context) => new PaymentPage())
                                                          );
                                                        },
                                                        child: Text('Proceed to pay'.toUpperCase()),
                                                        style: style.simpleButton(),
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    boldLabel() {
        return TextStyle(
            fontSize: 17,
            fontFamily: 'medium'
        );
    }

}