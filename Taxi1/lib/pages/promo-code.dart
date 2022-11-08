/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxibookflutter/pages/mobile.dart';
import '../helper/style.dart' as style;

class PromoCodePage extends StatefulWidget {
    PromoCodePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Promo Code';

    @override
    State<PromoCodePage> createState() => _PromoCodePageState();
}

class _PromoCodePageState extends State<PromoCodePage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                elevation: 0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
            ),
            body: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: style.shadowContainer(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Text('Promo Code',
                                    style: style.boldLabel(),
                                ),
                                InkWell(
                                    child: Icon(Icons.close),
                                )
                            ],
                        ),

                        SizedBox(height: 20),

                        TextField(
                            decoration: style.textInputDecoration('Enter Code'),
                        ),
                        SizedBox(height: 20),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Expanded(child: Text('Please enter your promo code and save it on your ride'),),
                                FloatingActionButton(
                                    onPressed: () {
                                        Navigator.push(context, new MaterialPageRoute(
                                            builder: (context) => new MobilePage())
                                        );
                                    },
                                    child: Icon(Icons.check),
                                    backgroundColor: style.appGreen,
                                    elevation: 0,
                                )
                            ],
                        )

                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

}