/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxibookflutter/pages/add-card.dart';
import '../helper/style.dart' as style;

class PaymentMethodPage extends StatefulWidget {
    PaymentMethodPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Payment Method';

    @override
    State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {

    String method = 'Cash';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                        Navigator.of(context).pop();
                    },
                ),
                iconTheme: IconThemeData(
                    color: Colors.black
                ),
                title: Text('Payment',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'medium',
                        fontSize: 18
                    ),
                ),
                centerTitle: true,
            ),
            body: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                decoration: style.shadowContainer(),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                        Row(
                            children: [
                                Expanded(
                                    child: _buildIcon(Icons.money, 'Cash')
                                ),
                                Expanded(
                                    child: _buildIcon(Icons.credit_card, 'Card')
                                ),
                                Expanded(
                                    child: _buildIcon(Icons.monetization_on_outlined, 'Points')
                                ),
                            ],
                        ),
                        SizedBox(height: 16),
                        Row(
                            children: [
                                Expanded(
                                    child: _buildTitleLabel('Cash')
                                ),
                                Expanded(
                                    child: _buildTitleLabel('Card')
                                ),
                                Expanded(
                                    child: _buildTitleLabel('Points')
                                ),
                            ],
                        ),
                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildIcon(icn, val) {
        return InkWell(
            onTap: () {
                setState(() {
                    method = val;
                    if(val == 'Card') {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                                return AddCardPage();
                            }
                        );
                    }
                });
            },
            child: Icon(
                icn,
                size: 40,
                color: val == method ? Colors.black : Color.fromARGB(255, 194, 194, 203)
            ),
        );
    }

    Widget _buildTitleLabel(val) {
        return InkWell(
            onTap: () {
                setState(() {
                    method = val;
                    if(val == 'Card') {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AddCardPage();
                            }
                        );
                    }
                });
            },
            child: Text('$val',textAlign: TextAlign.center,
                style: TextStyle(
                    color: val == method ? Colors.black : Color.fromARGB(255, 194, 194, 203)
                ),
            ),
        );
    }

}