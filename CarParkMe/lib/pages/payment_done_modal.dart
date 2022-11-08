/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:parkme/pages/home.dart';
import '../components/styles.dart';

class PaymentDoneModal extends StatefulWidget {
  static const String id = 'PaymentDoneModal';

  const PaymentDoneModal({Key? key}) : super(key: key);

  @override
  _PaymentDoneModalState createState() => _PaymentDoneModalState();
}

class _PaymentDoneModalState extends State<PaymentDoneModal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(40),
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    child: Icon(
                      Icons.done,
                      size: 50,
                      color: appColor,
                    )),
                SizedBox(height: 30),
                Text('Complete!',
                    style: TextStyle(
                        color: Colors.white, fontSize: 22, fontFamily: 'bold')),
                SizedBox(height: 16),
                Text(
                  'Your payment was successful',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.white,
                    shadowColor: appColor,
                    elevation: 5,
                    shape: (RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(fontFamily: 'medium', color: appColor),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
