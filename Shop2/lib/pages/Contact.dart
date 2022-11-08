/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shop2/widget/appbar.dart';
import 'package:shop2/widget/NavBar.dart';
import 'package:shop2/widget/footer.dart';
import '../components/styles.dart';

class Contact extends StatefulWidget {
  static const String id = 'Contact';

  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.white,
      appBar: BaseAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 40),
            centerHeading("Contact us"),
            sepLine(),
            SizedBox(height: 30),
            _buildIcon(Icons.message_outlined),
            _buildText(
                "Need an ASAP answer? Contact us via chat or call us, 24/7! For existing orders. Please call us"),
            _buildButten('chat with us'),
            _buildIcon(Icons.mark_as_unread_outlined),
            _buildText(
                "You can text us at 222-222-1220 - or click on the \"text us\" link below on your mobile device. Please allow the system to acknowledge a simple greeting (even hi will do!) before providing your question/ order details. Consent is not required for any purchase. Message and data rates may apply. Text messaging may not be available via all carriers. "),
            _buildButten('Text Us'),
            _buildIcon(Icons.facebook_outlined),
            _buildText(
                "To send us a private or direct message, like @initappz on Facebook or follow us on Twitter. We'll get back to you ASAP. Please include your name, order number, and email address for a faster response!"),
            footerMain(),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(icn) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Icon(
        icn,
        color: appColor,
        size: 46,
      ),
    );
  }

  Widget _buildButten(btn) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ElevatedButton(
        child: Text(btn.toUpperCase(),
            style: TextStyle(
              fontSize: 14,
            )),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: appColor2,
          onPrimary: Colors.white,
        ),
      ),
    );
  }

  Widget _buildText(text) {
    return Container(
      padding: EdgeInsets.all(16),
      child: boldText(text),
    );
  }
}
