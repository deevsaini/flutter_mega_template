/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/login.dart';
import 'package:home/pages/profile_listing_status.dart';
import 'package:home/widget/elevated_button.dart';
import '../components/styles.dart';

class AddPropertyStep3 extends StatefulWidget {
  static const String id = 'AddPropertyStep3';

  const AddPropertyStep3({Key? key}) : super(key: key);

  @override
  _AddPropertyStep3State createState() => _AddPropertyStep3State();
}

class _AddPropertyStep3State extends State<AddPropertyStep3> {
  DateTime currentDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }

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
        title: Text('Step 3', style: TextStyle(color: Colors.black)),
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
          // height: MediaQuery.of(context).size.height * 0.85,
          color: Colors.white,
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  boldHeading("Confirmation"),
                  SizedBox(height: 16),
                  blackText("Give your listing title"),
                  textFieldno('Your listing title'),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      _buildSelectDate('04-04-2022'),
                      SizedBox(width: 10),
                      _buildSelectDate('until drop'),
                    ],
                  ),
                  SizedBox(height: 16),
                  blackText("Whats the monthly rent?"),
                  textField('Price', Icons.currency_pound),
                  SizedBox(height: 16),
                  blackText("Tell us more"),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Material(
                      shadowColor: Colors.black38,
                      elevation: 10,
                      borderRadius: BorderRadius.circular(20),
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          height: 1.0,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Descriptions',
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 16),
              MyElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileListingStatus()));
                },
                text: 'Post Listing',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSelectDate(hint) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8.0)],
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        child: Text(hint,
            style: TextStyle(
                fontFamily: 'medium', fontSize: 14, color: Colors.black54)),
      ),
    );
  }
}
//
