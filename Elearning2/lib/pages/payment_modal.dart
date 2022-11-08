/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:learning/pages/tabs.dart';
import 'package:learning/widget/elevated_button.dart';
import '../components/styles.dart';

class PaymentSuccessModal extends StatefulWidget {
  static const String id = 'PaymentSuccessModal';

  const PaymentSuccessModal({Key? key}) : super(key: key);

  @override
  _PaymentSuccessModalState createState() => _PaymentSuccessModalState();
}

class _PaymentSuccessModalState extends State<PaymentSuccessModal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
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
          'Payment',
          style: TextStyle(color: Colors.black, fontFamily: 'medium'),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildDetail(),
          MyElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TabsExample()));
              },
              text: 'Continue')
        ],
      ),
    );
  }

  Widget _buildDetail() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/slide1.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width * .6,
          ),
          SizedBox(height: 20),
          centerkHeading('Payment method added'),
          centerText('You can buy the course now. Continue to payment.'),
        ],
      )),
    );
  }
}
