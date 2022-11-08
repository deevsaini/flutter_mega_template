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

class AddCardPage extends StatefulWidget {
  AddCardPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Add Card';

    @override
    State<AddCardPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<AddCardPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: true,
                iconTheme: IconThemeData(
                    color: style.appColor
                ),
                title: Text('Add Card'),
                centerTitle: false,
                titleTextStyle: style.pageTitle(),
            ),
            bottomNavigationBar: _buildBottomContainer(),
            body: _buildBody(), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: style.inputTextFieldDecoration('Card Number', Icons.payment_outlined),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                        child: TextField(
                          decoration: style.inputTextFieldDecoration('MM/YY', ''),
                        )
                    ),
                    SizedBox(width: 16),
                    Expanded(
                        child: TextField(
                          decoration: style.inputTextFieldDecoration('CVV', ''),
                        )
                    ),
                  ],
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: style.inputTextFieldDecoration('Country', Icons.language_outlined),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: style.inputTextFieldDecoration('Postal Code', Icons.payment_outlined),
                ),
              ],
            ),
          ),
        );
    }

    Widget _buildBottomContainer() {
        return Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: ElevatedButton(
                onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new TabsExample())
                    );
                },
                child: Text('Save and Continue'),
                style: style.simpleButton(),
            ),
        );
    }
}