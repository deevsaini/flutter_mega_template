/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/login.dart';
import '../components/styles.dart';

class PasswordChangeModal extends StatefulWidget {
  static const String id = 'PasswordChangeModal';

  const PasswordChangeModal({Key? key}) : super(key: key);

  @override
  _PasswordChangeModalState createState() => _PasswordChangeModalState();
}

class _PasswordChangeModalState extends State<PasswordChangeModal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: appColor,
                radius: 36,
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                )),
            SizedBox(height: 24),
            boldHeading('Your password was successfully changed'),
            SizedBox(height: 20),
            greyText('Please close this window and login again')
          ],
        ),
      ),
    );
  }

  boldHeading(val) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Text(
        val,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22, fontFamily: 'bold'),
      ),
    );
  }

  greyText(val) {
    return Container(
      child: Text(
        val,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.black54),
      ),
    );
  }
}
