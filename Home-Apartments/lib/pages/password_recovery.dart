/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/forgot_Password.dart';
import 'package:home/widget/elevated_button.dart';
import '../components/styles.dart';

class PasswordRecovery extends StatefulWidget {
  static const String id = 'PasswordRecovery';

  const PasswordRecovery({Key? key}) : super(key: key);

  @override
  _PasswordRecoveryState createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery>
    with SingleTickerProviderStateMixin {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: appColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          centerTitle: true,
          title: Text('Forgot Password', style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.close,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 1,
              color: backgroundColor,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/home.jpg',
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * .4,
                      ),
                      Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * .6,
                          color: appColor),
                    ],
                  ),
                  Positioned(
                      top: 200,
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * .68,
                      child: _buildContent()),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: Container(
        color: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                boldHeading("Password Recovery"),
                greyText("We will send password recovery code on this email"),
                SizedBox(height: 40),
                blackText("Email Address"),
                textField('Enter email', Icons.check_circle),
                SizedBox(height: 16),
              ],
            ),
            MyElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPassword()));
              },
              text: 'Send Link Recovery',
            ),
          ],
        ),
      ),
    );
  }
}
