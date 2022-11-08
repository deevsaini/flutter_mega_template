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

class EmergencyContactsPage extends StatefulWidget {
    EmergencyContactsPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Emergency Contacts';

    @override
    State<EmergencyContactsPage> createState() => _EmergencyContactsPageState();
}

class _EmergencyContactsPageState extends State<EmergencyContactsPage> {

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
                                Text('Emergency Contacts',
                                    style: style.boldLabel(),
                                ),
                                InkWell(
                                    child: Icon(Icons.close),
                                )
                            ],
                        ),

                        SizedBox(height: 20),

                        TextField(
                          decoration: style.textInputDecoration('Add Number'),
                        ),
                        SizedBox(height: 20),

                        Align(
                            alignment: Alignment.centerRight,
                            child: FloatingActionButton(
                                onPressed: () { },
                                child: Icon(Icons.check),
                                backgroundColor: style.appGreen,
                                elevation: 0,
                            )
                        ),


                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

}