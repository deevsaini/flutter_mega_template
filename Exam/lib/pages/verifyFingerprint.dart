/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/tabs.dart';
import 'package:flutter/material.dart';

class verifyFingerprint extends StatefulWidget {
  verifyFingerprint({Key? key}) : super(key: key);

  static const String page_id = "Verify Fingerprint";

  @override
  State<verifyFingerprint> createState() => _verifyFingerprintState();
}

class _verifyFingerprintState extends State<verifyFingerprint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => tabs()));
          },
          child: Text(
            'Continue',
            style: TextStyle(fontFamily: 'medium', fontSize: 16),
          ),
          style: blueButton(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Verify Fingerprint',
        style: headText(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.fingerprint_outlined,
            size: 100,
            color: appColor,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              'Congratulation on your successful payment',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
