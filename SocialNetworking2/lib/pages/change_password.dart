/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:social_network/pages/login.dart';
import 'package:social_network/widget/elevated_button.dart';
import '../components/styles.dart';

class ChangePassword extends StatefulWidget {
  static const String id = 'ChangePassword';

  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black87),
          elevation: 0,
          centerTitle: true,
          title: Text('Change Password', style: TextStyle(color: Colors.black)),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textField('Old Password', Icons.remove_red_eye),
                textField('New Password', Icons.remove_red_eye),
                textField('Confirm New Password', Icons.remove_red_eye),
                SizedBox(height: 30),
                MyElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    colors: appColorBtn,
                    text: 'Change password'),
              ],
            ),
          ),
        ));
  }
}
