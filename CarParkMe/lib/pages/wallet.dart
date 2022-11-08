/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:parkme/pages/add_card.dart';
import 'package:parkme/widget/elevated_button.dart';
import '../components/styles.dart';

class Wallet extends StatefulWidget {
  static const String id = 'Wallet';

  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
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
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
              ),
            ),
          ],
          centerTitle: true,
          title: Text(
            'Wallet',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black87),
          elevation: 0,
        ),
        bottomNavigationBar: bottomBtn(),
        body: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: greyText('Credit/Debit cards'),
              ),
              _buildSession(),
              _buildSession(),
            ],
          ),
        ));
  }

  Widget _buildSession() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                offset: const Offset(0, 2),
                blurRadius: 12.0),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Row(
          children: [
            Icon(Icons.credit_card, color: Colors.black45),
            SizedBox(width: 16),
            Expanded(
              child: Text('*** *** *** 1220',
                  style: TextStyle(fontFamily: 'medium', fontSize: 14)),
            ),
            Text('05/23', style: TextStyle(fontFamily: 'medium', fontSize: 12)),
          ],
        ),
      ),
    );
  }

  bottomBtn() {
    return Container(
        padding: EdgeInsets.all(30),
        child: MyElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddCard()));
            },
            text: '+ Add'));
  }
}
