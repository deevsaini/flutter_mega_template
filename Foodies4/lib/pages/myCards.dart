/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fooddoor/helper/style.dart' as style;
import 'package:fooddoor/pages/checkout.dart';

class myCards extends StatefulWidget {
  myCards({Key? key}) : super(key: key);

  static const String page_id = "My Cards";

  @override
  _myCardsState createState() => _myCardsState();
}

class _myCardsState extends State<myCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => checkout()));
          },
          child: Text(
            'Add Card',
            style: TextStyle(
                fontFamily: 'semi-bold', fontSize: 16, color: Colors.white),
          ),
          style: style.simpleButton(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        'My Cards',
        style: TextStyle(color: Colors.black, fontFamily: 'medium'),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(
            Icons.add_circle_outline,
            color: Colors.green,
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/images/credit-card.png',
                        fit: BoxFit.contain,
                        height: 200,
                        width: 280,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/images/credit-card.png',
                        fit: BoxFit.contain,
                        height: 200,
                        width: 280,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/images/credit-card.png',
                        fit: BoxFit.contain,
                        height: 200,
                        width: 280,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'CARDHOLDER NAME',
              style: style.mediumText(),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Jaydeep Hirani", border: InputBorder.none),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'CARD NUMBER',
              style: style.mediumText(),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "XXXX XXXX XXXX XXXX", border: InputBorder.none),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'EXPIRY DATE',
              style: style.mediumText(),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "July 2022", border: InputBorder.none),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'CVV/CVC',
              style: style.mediumText(),
            ),
            TextField(
              decoration:
                  InputDecoration(hintText: "344", border: InputBorder.none),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: style.appColor,
                  value: true,
                  onChanged: (bool) {
                    setState(() {});
                  },
                ),
                Text('Save my Credential')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
