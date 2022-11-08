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

class ProfilePage extends StatefulWidget {
    ProfilePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Profile';

    @override
    State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBack,
            appBar: AppBar(
                backgroundColor: style.appBack,
                automaticallyImplyLeading: false,
                elevation: 0,
            ),
            body: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        Text('Profile', style: style.pageTitle()),
                        Row(
                            children: [
                                Container(
                                    height: 120,
                                    width: 120,
                                    margin: EdgeInsets.only(right: 16),
                                    decoration: style.roundImage('assets/images/user.jpg'),
                                ),
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Text('Samuel \nFlatcher',
                                                style: TextStyle(
                                                    fontFamily: 'semi-bold',
                                                    fontSize: 20
                                                ),
                                            ),
                                            Text('Credit Score: \$25,000',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontFamily: 'medium',
                                                    fontSize: 16
                                                ),
                                            )
                                        ],
                                    )
                                ),
                            ],
                        ),
                        SizedBox(height: 20),
                        Container(
                            margin: EdgeInsets.only(bottom: 20),
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(16)
                                ),
                                color: style.appColor
                            ),
                            child: Row(
                                children: [
                                    Expanded(
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text('United States of bank Ltd.',
                                                    style: TextStyle(
                                                        color: Colors.white
                                                    ),
                                                ),
                                                Text('Credit: \$5,000.00',
                                                    style: TextStyle(
                                                        fontFamily: 'medium',
                                                        color: Colors.white
                                                    ),
                                                )
                                            ],
                                        )
                                    ),
                                    Container(
                                        width: 120,
                                        margin: EdgeInsets.only(left: 16),
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            child: Text('Update'),
                                            style: simpleButton(),
                                        ),
                                    )
                                ],
                            ),
                        ),

                        Padding(
                            padding: EdgeInsets.only(bottom: 4),
                            child: Text('Name'),
                        ),
                        TextField(
                            decoration: style.inputTextDecoration('Name', Colors.white),
                        ),
                        SizedBox(height: 20),
                        Padding(
                            padding: EdgeInsets.only(bottom: 4),
                            child: Text('Date of Birth'),
                        ),
                        TextField(
                            decoration: style.inputTextDecoration('Date of Birth', Colors.white),
                        ),
                        SizedBox(height: 20),
                        Padding(
                            padding: EdgeInsets.only(bottom: 4),
                            child: Text('Password'),
                        ),
                        TextField(
                            decoration: style.inputTextDecoration('Password', Colors.white),
                        ),

                        Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 30),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Update Changes'),
                                style: style.simpleButton(),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    simpleButton() {
        return ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(8)
              ),
            ),
            textStyle: TextStyle(
                fontFamily: 'medium',
                fontSize: 15
            ),
            primary: Colors.white,
            onPrimary: Colors.blue
        );
    }

}

class Item {
    Item(this.icn, this.text);
    final IconData icn;
    final String text;
}