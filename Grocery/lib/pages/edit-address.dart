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

class EditAddressPage extends StatefulWidget {
    EditAddressPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Edit Address';

    @override
    State<EditAddressPage> createState() => _EditAddressPageState();
}

class _EditAddressPageState extends State<EditAddressPage> {

    bool check = true;

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
                title: Text('Edit Address'),
                centerTitle: false,
                titleTextStyle: style.pageTitle(),
            ),
            body: _buildBody(),
            bottomNavigationBar: _buildBottomContainer(),
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
                  decoration: style.inputTextFieldDecoration('Name', ''),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: style.inputTextFieldDecoration('Street', ''),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: style.inputTextFieldDecoration('City', ''),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: style.inputTextFieldDecoration('Zip Code', ''),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(child: Text('Set as primary')),
                    Checkbox(
                        value: this.check,
                        onChanged: (bool? value) {
                          setState(() {
                            this.check = !this.check;
                          });
                        }
                    )
                  ],
                ),
              ],
            ),
          ),
        );
    }

    Widget _buildBottomContainer() {
        return Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () { },
            child: Text('Save'),
            style: style.simpleButton(),
          ),
        );
    }
}