/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxibookflutter/pages/my-location.dart';
import '../helper/style.dart' as style;

class SocialConnectPage extends StatefulWidget {
    SocialConnectPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Social Connect';

    @override
    State<SocialConnectPage> createState() => _SocialConnectPageState();
}

class _SocialConnectPageState extends State<SocialConnectPage> {

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

                        Text('Social account',
                          style: style.boldLabel(),
                        ),

                        Text('Connect with social account',
                          style: style.simpleLabel(),
                        ),

                        SizedBox(height: 20),

                        Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 16),
                            child: _buildButton(' Connect with Google Account ', Color.fromARGB(255, 234, 66, 53)),
                        ),

                        Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 16),
                            child: _buildButton(' Connect with Facebook Account ', Color.fromARGB(255, 59, 89, 153)),
                        ),

                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildButton(text, clr) {
        return ElevatedButton(
            onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => new MyLocationPage())
                );
            },
            style: socialButton(clr),
            child: Text('$text',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'medium',
                ),
            ),
        );
    }

    socialButton(clr) {
        return ElevatedButton.styleFrom(
            primary: clr,
            onPrimary: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
            ),
            elevation: 0
        );
    }


}