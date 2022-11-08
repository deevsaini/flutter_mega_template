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

class SettingsPage extends StatefulWidget {
    SettingsPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Settings';

    @override
    State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

    bool isATMWithdraws = false;


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
                        Text('App Settings', style: style.pageTitle()),
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
                                                Text('Do more with Pro account',
                                                    style: TextStyle(
                                                        color: Colors.white
                                                    ),
                                                ),
                                                Text('Get Premium Now',
                                                    style: TextStyle(
                                                        fontFamily: 'medium',
                                                        color: Colors.white
                                                    ),
                                                ),
                                                SizedBox(height: 20),
                                                Text('Purchase Account',
                                                    style: TextStyle(
                                                        fontFamily: 'medium',
                                                        color: Colors.white,
                                                        decoration: TextDecoration.underline
                                                    ),
                                                )
                                            ],
                                        )
                                    ),
                                    Image.asset('assets/images/trophy.png', width: 80),
                                ],
                            ),
                        ),

                        Row(
                            children: [
                                Expanded(
                                    child: Row(
                                        children: [
                                            Image.asset('assets/images/notifications.png', width: 24),
                                            Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: Text('Get Notifications'),
                                            )
                                        ],
                                    ),
                                ),
                                Switch(
                                    value: this.isATMWithdraws,
                                    activeColor: Colors.green[600],
                                    onChanged: (bool? value) {
                                      setState(() {
                                        this.isATMWithdraws = !this.isATMWithdraws;
                                      });
                                    }
                                )
                            ],
                        ),
                        Row(
                            children: [
                                Expanded(
                                    child: Row(
                                      children: [
                                          Image.asset('assets/images/email.png', width: 24),
                                          Padding(
                                              padding: EdgeInsets.only(left: 10),
                                              child: Text('Email Newslatters'),
                                          )
                                      ],
                                    ),
                                ),
                                Switch(
                                    value: this.isATMWithdraws,
                                    activeColor: Colors.green[600],
                                    onChanged: (bool? value) {
                                      setState(() {
                                        this.isATMWithdraws = !this.isATMWithdraws;
                                      });
                                    }
                                )
                            ],
                        ),
                        SizedBox(height: 10),

                        _buildRow('assets/images/lock.png', 'Privacy & Security'),
                        _buildRow('assets/images/cogwheel.png', 'Account Settings'),
                        _buildRow('assets/images/line-chart.png', 'Set Stock Rates'),
                        _buildRow('assets/images/pie-chart.png', 'Data & Usage'),
                        _buildRow('assets/images/block.png', 'Factory Reset'),

                        Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 30),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Deactivate My Account'),
                                style: style.simpleButton(),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildRow(img, text) {
        return Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
                children: [
                    Expanded(
                        child: Row(
                            children: [
                                Image.asset(img, width: 24),
                                Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text('$text'),
                                )
                            ],
                        ),
                    ),
                    Icon(Icons.keyboard_arrow_right, size: 24, color: Colors.grey)
                ],
            ),
        );
    }

}

class Item {
    Item(this.icn, this.text);
    final IconData icn;
    final String text;
}