/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class Confirmation extends StatefulWidget {
  static const String id = 'Confirmation';

  const Confirmation({Key? key}) : super(key: key);

  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
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
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Confirmation",
            style: TextStyle(
              fontFamily: 'medium',
              color: Colors.black,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
            ),
          )
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  greyText('From'),
                  _buildTransactionCard('assets/images/credit-card.png',
                      '9999 **** **** 9999', '\$5403'),
                  greyText('To'),
                  _buildTransactionCard('assets/images/credit-card.png',
                      '9999 **** **** 9999', 'Jonathan Swift'),
                  _buildBillDetail(),
                  SizedBox(height: 20),
                  elivatedButton('Send'),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildTransactionCard(img, card, title) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Icon(
              Icons.circle,
              size: 14,
              color: appColor2,
            ),
          ),
          SizedBox(width: 16),
          Image.asset(
            'assets/images/credit-card.png',
            width: 30,
            height: 25,
            fit: BoxFit.fill,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                greyText(card),
                SizedBox(height: 6),
                blackText(title),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBillDetail() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30),

          // Divider(thickness: 1),
          greyText('Commission for payer: 0.00\$'),
          SizedBox(height: 8),
          greyText('Commission for reciver: 0.00\$'),
          SizedBox(height: 8),
          greyText('Amount to be credited: 0.00\$'),
          SizedBox(height: 30),

          Text("Payment amount:",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              )),
          SizedBox(height: 8),
          Text("\$4,520.12",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'medium',
                fontSize: 28,
              )),
        ],
      ),
    );
  }

  elivatedButton(btn) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: ElevatedButton(
        child: Text(btn, style: TextStyle(fontSize: 16, fontFamily: 'medium')),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Confirmation()));
        },
        style: ElevatedButton.styleFrom(
          primary: appColor,
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}
