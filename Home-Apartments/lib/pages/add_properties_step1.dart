/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/add_properties_step2.dart';
import 'package:home/pages/login.dart';
import 'package:home/widget/elevated_button.dart';
import '../components/styles.dart';

class AddPropertyStep1 extends StatefulWidget {
  static const String id = 'AddPropertyStep1';

  const AddPropertyStep1({Key? key}) : super(key: key);

  @override
  _AddPropertyStep1State createState() => _AddPropertyStep1State();
}

class _AddPropertyStep1State extends State<AddPropertyStep1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        toolbarHeight: 70,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text('Step 1', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.85,
          color: Colors.white,
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  boldHeading("Location"),
                  greyText("Select the location your room is located in"),
                  SizedBox(height: 20),
                  blackText("City"),
                  textField('City of property', Icons.location_on),
                  SizedBox(height: 16),
                  blackText("Address"),
                  textField('Street Address Location', Icons.location_on),
                ],
              ),
              MyElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddPropertyStep2()));
                },
                text: 'Continue',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
