/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:parkme/pages/verification.dart';
import 'package:parkme/widget/elevated_button.dart';
import '../components/styles.dart';

class PhoneSignUp extends StatefulWidget {
  static const String id = 'PhoneSignUp';

  const PhoneSignUp({Key? key}) : super(key: key);

  @override
  _PhoneSignUpState createState() => _PhoneSignUpState();
}

class _PhoneSignUpState extends State<PhoneSignUp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              size: 30,
            ),
          ),
          centerTitle: true,
          title: Text(
            'Phone number',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black87),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [blackBoldText('STEP 1 '), greyText('of 3')],
                  ),
                ),
                SizedBox(height: 30),
                blackBoldText('Enter your phone number'),
                SizedBox(height: 30),
                textField('Phone number', Icons.check),
                SizedBox(height: 30),
                MyElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Verification()));
                    },
                    text: 'Next')
              ],
            ),
          ),
        ));
  }
}
