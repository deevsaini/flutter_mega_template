/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxibookflutter/pages/social-connect.dart';
import 'package:taxibookflutter/pages/verifications.dart';
import '../helper/style.dart' as style;

class MobilePage extends StatefulWidget {
    MobilePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Mobile';

    @override
    State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {

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

                        Text('Ride with Kangaroo Cabs',
                            style: style.boldLabel(),
                        ),

                        Text('Enter your mobile number to Login or Register',
                            style: style.simpleLabel(),
                        ),
                        SizedBox(height: 20),

                        Row(
                            children: [
                                Container(
                                    margin: EdgeInsets.only(right: 16),
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                                    decoration: codeContainer(),
                                    child: Row(
                                        children: [
                                            Text('+ 91'),
                                            Icon(Icons.arrow_drop_down, color: Colors.grey),
                                        ],
                                    ),
                                ),
                                Expanded(
                                    child: TextField(
                                        decoration: style.textInputDecoration('Enter your mobile'),
                                    ),
                                )
                            ],
                        ),

                        SizedBox(height: 20),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                InkWell(
                                    onTap: () {
                                        Navigator.push(context, new MaterialPageRoute(
                                            builder: (context) => new SocialConnectPage())
                                        );
                                    },
                                    child: Text('Or connect with social account'),
                                ),

                                FloatingActionButton(
                                    onPressed: () {
                                        Navigator.push(context, new MaterialPageRoute(
                                            builder: (context) => new VerificationPage())
                                        );
                                    },
                                    child: Icon(Icons.arrow_forward),
                                    backgroundColor: style.appColor,
                                    elevation: 0,
                                )
                            ],
                        )

                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    codeContainer() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(8)
            ),
            border: Border.all(
                width: 1,
                color: (Colors.grey[300])!
            )
        );
    }

}