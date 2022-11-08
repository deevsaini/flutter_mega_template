/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/tabs.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class GeneralInfoPage extends StatefulWidget {
    GeneralInfoPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'General Info';

    @override
    State<GeneralInfoPage> createState() => _GeneralInfoPageState();
}

class _GeneralInfoPageState extends State<GeneralInfoPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(56),
                child: _buildAppBar(),
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildAppBar() {
        return AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(
                color: Colors.black,
                size: 30
            ),
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.keyboard_arrow_left),
            ),
            title: Text('Almost There!'),
            titleTextStyle: style.pageTitle(),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                    children: [
                        SizedBox(height: 20),
                        Text('Help us to know you better',
                            textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 36),

                        Row(
                            children: [
                                Expanded(
                                    child: TextField(
                                        decoration: textInputDecoration('First Name'),
                                    )
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                    child: TextField(
                                      decoration: textInputDecoration('Last Name'),
                                    )
                                ),
                            ],
                        ),
                        SizedBox(height: 36),
                        TextField(
                            decoration: textInputDecoration('Email Address'),
                        ),
                        SizedBox(height: 36),

                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new TabsExample())
                                    );
                                },
                                child: Text('Start Shopping'),
                                style: style.simpleButton(),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    whiteBox() {
        return BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
                Radius.circular(10)
            )
        );
    }

    textInputDecoration(val) {
        return InputDecoration(
            labelText: '$val',
            labelStyle: TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.all(0),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            border: style.underlineBorder(),
            focusedBorder: style.underlineBorder(),
            enabledBorder: style.underlineBorder(),
        );
    }

}