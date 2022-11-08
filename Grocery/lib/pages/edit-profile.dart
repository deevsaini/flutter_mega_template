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

class EditProfilePage extends StatefulWidget {
    EditProfilePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Edit Profile';

    @override
    State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {

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
                title: Text('Edit Profile'),
                centerTitle: false,
                titleTextStyle: style.pageTitle(),
            ),
            body: _buildBody(), // This trailing comma makes auto-formatting nicer for build methods.
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
                  decoration: style.inputTextFieldDecoration('Full Name', Icons.person_outline),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: style.inputTextFieldDecoration('Email', Icons.person_outline),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: style.inputTextFieldDecoration('Mobile', Icons.mobile_friendly),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: style.inputTextFieldDecoration('Birthday', Icons.calendar_today),
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
                child: Text('Update Profile'),
                style: style.simpleButton(),
            ),
        );
    }
}