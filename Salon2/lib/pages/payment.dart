/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon2/pages/home.dart';
import 'package:salon2/pages/tabs.dart';
import '../components/styles.dart' as style;

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);
  static const String id = 'Payment';

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String paymentRadio = '';

  @override
  void initState() {
    super.initState();
  }

  final List _elements = [
    '1',
    '2',
    '3',
    '4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black87),
        centerTitle: true,
        title: const Text(
          'Payment',
          style: TextStyle(color: style.appColor, fontFamily: "semi-bold"),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                children: _elements.map((e) {
                  return _buildPayments(context, e);
                }).toList(),
              ),
              _buildOtherPayment(context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildFooter(),
    );
  }

  Widget _buildPayments(context, index) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 1.0,
          ),
        ),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: <Widget>[
            Radio(
                value: index.toString(),
                activeColor: style.appColor,
                groupValue: paymentRadio,
                onChanged: (value) {
                  setState(() {
                    paymentRadio = value.toString();
                  });
                }),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Image.asset(
                'assets/images/google.png',
                width: 25,
                height: 25,
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text('Google Pay', style: TextStyle(fontFamily: "bold")),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('UPI', style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  // Default Radio Button Selected Item.

  Widget _buildOtherPayment(context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Text('Other Methods',
                style: TextStyle(fontFamily: "bold", fontSize: 18)),
          ),
          Row(
            children: <Widget>[
              Radio(
                  value: "1",
                  activeColor: style.appColor,
                  groupValue: paymentRadio,
                  onChanged: (value) {
                    setState(() {
                      paymentRadio = value.toString();
                    });
                  }),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(left: 10),
                child: Text('UPI Wallets',
                    style: TextStyle(fontFamily: "semi-bold")),
              )),
            ],
          ),
          Row(
            children: <Widget>[
              Radio(
                  value: "2",
                  activeColor: style.appColor,
                  groupValue: paymentRadio,
                  onChanged: (value) {
                    setState(() {
                      paymentRadio = value.toString();
                    });
                  }),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Credit/Debit',
                    style: TextStyle(fontFamily: "semi-bold")),
              )),
            ],
          ),
          Row(
            children: <Widget>[
              Radio(
                  value: "3",
                  activeColor: style.appColor,
                  groupValue: paymentRadio,
                  onChanged: (value) {
                    setState(() {
                      paymentRadio = value.toString();
                    });
                  }),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Net Banking',
                    style: TextStyle(fontFamily: "semi-bold")),
              )),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: ElevatedButton(
        child: const Text("Proceed to Checkout",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "medium",
            )),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TabsExample()));
        },
        style: ElevatedButton.styleFrom(
          primary: style.appColor,
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
