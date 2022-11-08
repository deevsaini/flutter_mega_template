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

class PasswordPage extends StatefulWidget {
    PasswordPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Password';

    @override
    State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {

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

                        Text('Enter your password',
                            style: style.boldLabel(),
                        ),

                        Text('Enter your password ride with Kangaroo cabs',
                            style: style.simpleLabel(),
                        ),
                        SizedBox(height: 20),

                        TextField(
                            decoration: style.textInputDecoration('Enter your password'),
                        ),
                        SizedBox(height: 20),
                        
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Text('I forgot my password'),
                                FloatingActionButton(
                                    onPressed: () {
                                        Navigator.push(context, new MaterialPageRoute(
                                            builder: (context) => new MobilePage())
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

}