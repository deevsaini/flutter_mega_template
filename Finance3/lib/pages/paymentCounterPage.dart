/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:finance3_fluttermarketplace/utilities/constancePage.dart'
    as style;

class paymentCounterPage extends StatefulWidget {
  paymentCounterPage({Key? key}) : super(key: key);

  static const String pageId = 'paymentCounterPage';

  @override
  State<paymentCounterPage> createState() => _paymentCounterPageState();
}

class _paymentCounterPageState extends State<paymentCounterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 17, left: 10),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.chevron_left,
                      color: style.appColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Back',
                      style: TextStyle(
                        fontFamily: 'bold',
                        color: style.appColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Payment Counter',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'bold', fontSize: 20),
            ),
            Text(
              'Take this code to cashier to pay',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(100),
                  child: FittedBox(
                    child: Image.asset('assets/images/q1.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Text(
              '1377 6008 4013',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'bold', fontSize: 20, color: style.appColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.refresh,
                    color: Colors.lightBlue,
                  ),
                  Text(
                    'Auto update after 40 sec',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17, color: Colors.lightBlue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
