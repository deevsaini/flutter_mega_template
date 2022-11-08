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

class AddCardPage extends StatefulWidget {
    AddCardPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Add Card';

    @override
    State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {

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
                                Text('Add Card',style: style.boldLabel()),
                                InkWell(
                                    onTap: () {
                                        Navigator.pop(context);
                                    },
                                    child: Icon(Icons.close),
                                )
                            ],
                        ),

                        SizedBox(height: 20),

                        TextField(
                            decoration: style.textInputDecoration('Card Holder Name'),
                        ),

                        SizedBox(height: 20),

                        TextField(
                            decoration: style.textInputDecoration('Card Name'),
                        ),
                        SizedBox(height: 20),

                        Row(
                            children: [
                                Expanded(
                                    child: TextField(
                                        decoration: style.textInputDecoration('Day'),
                                    )
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                    child: TextField(
                                        decoration: style.textInputDecoration('Month'),
                                    )
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                    child: TextField(
                                        decoration: style.textInputDecoration('CVC'),
                                    )
                                )
                            ],
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