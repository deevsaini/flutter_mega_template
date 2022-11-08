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

class ComplaintPage extends StatefulWidget {
    ComplaintPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Complaint';

    @override
    State<ComplaintPage> createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {

    List<String> complaints = [
        'I lost an item',
        'Bad driver behaviour',
        'I would like a refund',
        'Different driver/vehicle',
        'Other'
    ];

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
                color: Colors.white,
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                        Text('Complaint',
                            style: style.boldLabel(),
                        ),

                        SizedBox(height: 20),

                        ListView(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            children: complaints.map((e) {
                                return Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Row(
                                        children: [
                                            Expanded(
                                                child: Text(e, style: TextStyle(fontSize: 16),
                                                )
                                            ),
                                            Icon(Icons.keyboard_arrow_right, color: Colors.grey, size: 24)
                                        ],
                                    ),
                                );
                            }).toList(),
                        ),



                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

}

class User {
  int userId;
  String firstName;

  User(this.userId, this.firstName);
}