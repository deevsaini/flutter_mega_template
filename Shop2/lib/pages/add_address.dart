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
import '../components/styles.dart';

class AddAddress extends StatefulWidget {
  static const String id = 'AddAddress';

  const AddAddress({Key? key}) : super(key: key);

  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.white,
      appBar: BaseAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 40),
            centerHeading("Add shipping address"),
            sepLine(),
            SizedBox(height: 30),
            _buildForm()
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _buildTextField("First Name")),
            Expanded(child: _buildTextField("Last Name")),
          ],
        ),
        _buildTextField("Address"),
        _buildTextField("City"),
        Row(
          children: [
            Expanded(child: _buildTextField("State")),
            Expanded(child: _buildTextField("ZIP code")),
          ],
        ),
        _buildTextField("Phone Number"),
      ],
    );
  }

  Widget _buildTextField(hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          labelText: hint,
          labelStyle: TextStyle(color: Colors.black),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        child: Text("Add Now".toUpperCase(), style: TextStyle(fontSize: 16)),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: appColor2,
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}
