/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/tabs.dart';
import '../helper/style.dart' as style;

class PersonalInfoPage extends StatefulWidget {
    PersonalInfoPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Personal Info';

    @override
    State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: true,
                iconTheme: IconThemeData(
                    color: style.appColor
                ),
                title: Text('Personal Info'),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                          Container(
                              width: 100,
                              height: 100,
                              margin: EdgeInsets.all(16),
                              decoration: style.roundImage('assets/images/user.jpg'),
                          ),
                          SizedBox(height: 24),

                          _buildRow('Email', 'jonhdoe@gmail.com'),
                          _buildRow('First Name', 'Jonh'),
                          _buildRow('Last Name', 'Doe'),
                          _buildRow('Gender', 'Female'),
                          _buildRow('Phone Number', '9876543212'),
                      ],
                ),
            ),
        );
    }

    Widget _buildRow(val1, val2) {
        return Container(
            padding: EdgeInsets.all(16),
            decoration: style.bottomBorder(),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text('$val1'),
                    Text('$val2'),
                ],
            ),
        );
    }
}