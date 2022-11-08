/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:banky/helper/style.dart' as style;

class success extends StatefulWidget {
  success({Key? key}) : super(key: key);

  static const String page_id = "Success";

  @override
  _successState createState() => _successState();
}

class _successState extends State<success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: style.appColor),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => success()));
            },
            child: Text(
              'Do you need some help ?',
              style: TextStyle(color: Colors.white54),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: style.appColor,
      automaticallyImplyLeading: false,
      elevation: 0,
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: style.appColor),
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.blue.shade50,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.check,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Success',
                  style: TextStyle(fontFamily: 'semi-bold', fontSize: 26),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'You\'ve successfully transferred money.',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '\$2,600',
                  style: TextStyle(
                      fontFamily: 'semi-bold',
                      fontSize: 26,
                      color: style.appColor),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Request Amount',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 30,
                ),
                statusContainer('From', 'Jaydeep Hirani'),
                SizedBox(
                  height: 20,
                ),
                statusContainer('To', 'Hardik Gohil'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date:',
                      style: TextStyle(
                          color: style.darkColor,
                          fontFamily: 'medium',
                          fontSize: 16),
                    ),
                    Text(
                      '26 Apr 2022',
                      style: TextStyle(
                          color: style.darkColor,
                          fontFamily: 'medium',
                          fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Text(
                      '12:48 PM',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.receipt_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Download Receipt',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Done'),
                  style: ElevatedButton.styleFrom(
                    primary: style.appColor,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget statusContainer(text, name) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: style.darkColor, fontFamily: 'medium', fontSize: 16),
            ),
            Text(
              name,
              style: TextStyle(
                  color: style.darkColor, fontFamily: 'medium', fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Credit Card',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Text(
              'VISA *8064',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}
