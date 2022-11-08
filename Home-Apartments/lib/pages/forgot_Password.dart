/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/verification.dart';
import 'package:home/widget/elevated_button.dart';
import '../components/styles.dart';

class ForgotPassword extends StatefulWidget {
  static const String id = 'ForgotPassword';

  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword>
    with SingleTickerProviderStateMixin {
  int selectID = 1;
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
                boldHeading("Forgot Password"),
                greyText("Please select option to send link reset password"),
                SizedBox(height: 16),
                _buildSelect(Icons.mail, 'Reset via email',
                    'If you have email linked to account', 1),
                _buildSelect(Icons.phone_android_rounded, 'Reset via SMS',
                    'If you have number linked to account', 2),
                SizedBox(height: 16),
              ],
            ),
            MyElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Verification()));
              },
              text: 'Select Option',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelect(icn, title, dtl, id) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectID = id;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        margin: EdgeInsets.symmetric(vertical: 16),
        decoration: segmentDecoration(id),
        child: Row(
          children: [
            CircleAvatar(
                backgroundColor: Colors.blue.shade50,
                child: Icon(icn, color: appColor)),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(fontFamily: 'medium', fontSize: 16)),
                  SizedBox(height: 5),
                  Text(dtl,
                      style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 12,
                          color: Colors.black45)),
                ],
              ),
            ),
            Icon(Icons.check_circle,
                size: 18, color: selectID == id ? Colors.green : Colors.white),
          ],
        ),
      ),
    );
  }

  segmentDecoration(id) {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: selectID == id ? Colors.black12 : Colors.transparent,
          blurRadius: 20.0,
        ),
      ],
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    );
  }
}
