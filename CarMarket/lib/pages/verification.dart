/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:car/helper/style.dart';
import 'package:car/pages/tabs.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class verification extends StatefulWidget {
  verification({Key? key}) : super(key: key);

  static const String page_id = "Verification";

  @override
  _verificationState createState() => _verificationState();
}

class _verificationState extends State<verification> {
  int tabId = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: greenColor,
      title: Text('Verification'),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.only(top: 50),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: AssetImage('assets/images/men.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('VERIFICATION'),
          Text(
            '65%',
            style: TextStyle(fontFamily: 'medium', fontSize: 20),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: greenColor, width: 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return FractionallySizedBox(
                      heightFactor: 0.7,
                      child: verificationContainer(),
                    );
                  },
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Verify Phone Number'),
                  Icon(
                    Icons.arrow_circle_right_outlined,
                    color: greenColor,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: greenColor,
              border: Border.all(color: greenColor, width: 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Verify Profile Picture',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: greenColor,
              border: Border.all(color: greenColor, width: 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Verify Social Account',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(
                'By comletion verification progress, Your profile will be more realable and easier for buyer.'),
          )
        ],
      ),
    );
  }

  Widget verificationContainer() {
    int tabId = 1;
    return Column(
      children: [
        if (tabId == 1)
          enterPhoneContainer()
        else if (tabId == 2)
          otpContainer()
      ],
    );
  }

  Widget enterPhoneContainer() {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ENTER YOUR PHONE NUMBER',
            style: TextStyle(fontFamily: 'medium', fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'PHONE NUMBER',
            style: TextStyle(color: Colors.grey),
          ),
          TextField(
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                border: UnderlineInputBorder(),
                hintText: 'Enter phone number'),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                tabId = 2;
              });
            },
            child: Text('CONTINUE'),
            style: simpleButton(),
          ),
        ],
      ),
    );
  }

  Widget otpContainer() {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ENTER VERIFY CODE',
            style: TextStyle(fontFamily: 'medium', fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          Text('We just send you a verify code via a phone 098XXXX789'),
          SizedBox(
            height: 20,
          ),
          OTPTextField(
            length: 6,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 30,
            style: TextStyle(fontSize: 18),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.underline,
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text('The verify code will be expired in 01:58'),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Resend code',
              style: TextStyle(color: appColor),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => tabs()));
            },
            child: Text('SUBMIT CODE'),
            style: simpleButton(),
          ),
        ],
      ),
    );
  }
}
