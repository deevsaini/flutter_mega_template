/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:car/helper/style.dart';
import 'package:flutter/material.dart';

class editInfo extends StatefulWidget {
  editInfo({Key? key}) : super(key: key);

  static const String page_id = "Edit Info";

  @override
  _editInfoState createState() => _editInfoState();
}

class _editInfoState extends State<editInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'Edit Info',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Save',
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 20),
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
            Text(
              'Jaydeep Hirani',
              style: headText(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                Text('60 Willium St.Brooklyn, NY 11225'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ACCOUNT',
                  style: headText(),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'USER NAME',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      border: UnderlineInputBorder(),
                      hintText: 'Jaydeep Hirani'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'PASSWORD',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      border: UnderlineInputBorder(),
                      hintText: '********'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'PHONE NUMBER',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      border: UnderlineInputBorder(),
                      hintText: '9898-202-202'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'PERSONAL INFORMATION',
                  style: headText(),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'EMAIL',
                  style: TextStyle(color: Colors.grey),
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      border: UnderlineInputBorder(),
                      hintText: 'jaydeephirani@gmail.com'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'DATE OF BIRTH',
                  style: TextStyle(color: Colors.grey),
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      border: UnderlineInputBorder(),
                      hintText: '12/08/1998'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
