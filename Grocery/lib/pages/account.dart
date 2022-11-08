/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/addresses.dart';
import 'package:flutternewgrocery/pages/edit-profile.dart';
import 'package:flutternewgrocery/pages/help.dart';
import 'package:flutternewgrocery/pages/personal-info.dart';
import '../helper/style.dart' as style;

class AccountPage extends StatefulWidget {
    AccountPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Account';

    @override
    State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                iconTheme: IconThemeData(
                    color: style.appColor
                ),
                title: Text('Account'),
                centerTitle: false,
                titleTextStyle: style.pageTitle(),
            ),
            body: _buildBody(), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.only(bottom: 24),
                            child: Row(
                                children: [
                                    Container(
                                        width: 100,
                                        height: 100,
                                        margin: EdgeInsets.only(right: 16),
                                        decoration: style.roundImage('assets/images/user.jpg'),
                                    ),
                                    Expanded(
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text('Jonh Doe',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontFamily: 'semi-bold'
                                                    ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                        Navigator.push(context, new MaterialPageRoute(
                                                            builder: (context) => new EditProfilePage())
                                                        );
                                                    },
                                                    child: Text('Edit Profile',
                                                        style: TextStyle(color: style.appColor),
                                                    ),
                                                )
                                          ],
                                        )
                                    ),
                                ],
                            ),
                        ),
                        InkWell(
                            onTap: () {
                                Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) => new PersonalInfoPage())
                                );
                            },
                            child: _buildRow('Personal Info'),
                        ),
                        InkWell(
                            onTap: () {
                                Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) => new AddressesPage())
                                );
                            },
                            child: _buildRow('My Address'),
                        ),
                        InkWell(
                            onTap: () {},
                            child: _buildRow('Password'),
                        ),
                        InkWell(
                            onTap: () {},
                            child: _buildRow('About'),
                        ),
                        InkWell(
                            onTap: () {
                                Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) => new HelpPage())
                                );
                            },
                            child: _buildRow('Help'),
                        ),
                        Padding(
                            padding: EdgeInsets.all(16),
                            child: Text('Logout',
                                style: TextStyle(color: Colors.grey),
                            ),
                        )
                    ],
                ),
            ),
        );
    }

    Widget _buildRow(val) {
        return Container(
            padding: EdgeInsets.all(16),
            decoration: style.bottomBorder(),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text('$val'),
                    Icon(Icons.keyboard_arrow_right, color: Colors.grey)
                ],
            ),
        );
    }
}