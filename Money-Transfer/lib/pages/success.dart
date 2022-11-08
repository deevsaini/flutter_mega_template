/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:moneytransaction/pages/tabs.dart';
import '../helper/style.dart' as style;

class SuccessPage extends StatefulWidget {
    SuccessPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Success';

    @override
    State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {

    late double deviceHeight;

    @override
    Widget build(BuildContext context) {
        deviceHeight = MediaQuery.of(context).size.height;
        return Scaffold(
            backgroundColor: style.appColor,
            appBar: AppBar(
                backgroundColor: style.appColor,
                elevation: 0,
            ),
            body: Container(
                height: deviceHeight,
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                        Image.asset('assets/images/check.png', width: 200),
                        SizedBox(height: 40),
                        Text('Transferred \nSuccessfully',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'semi-bold',
                                color: Colors.white
                            ),
                        ),
                        SizedBox(height: 16),
                        Text('Dear user your amount has been \ntransferred to your requested receipt. \nThank you for using our services.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white
                            ),
                        ),
                        SizedBox(height: 40),
                        Container(
                            width: 270,
                            margin: EdgeInsets.only(bottom: 24),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text('View Details'),
                                style: style.whiteButton(),
                            ),
                        ),
                        Container(
                            width: 270,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, new MaterialPageRoute(
                                      builder: (context) => new TabsExample())
                                  );
                                },
                                child: Text('Continue'),
                                style: style.whiteButton(),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}