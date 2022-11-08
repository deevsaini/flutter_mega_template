/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:finance3_fluttermarketplace/pages/codeScanPage.dart';
import 'package:finance3_fluttermarketplace/pages/confirmTransactionPage.dart';
import 'package:finance3_fluttermarketplace/pages/paymentPage.dart';
import 'package:finance3_fluttermarketplace/pages/successPaymentPage.dart';
import 'package:flutter/material.dart';
import 'package:finance3_fluttermarketplace/utilities/constancePage.dart'
    as style;

class cashInPage extends StatefulWidget {
  cashInPage({Key? key}) : super(key: key);

  static const String pageId = 'cashInPage';

  @override
  State<cashInPage> createState() => _cashInPageState();
}

class _cashInPageState extends State<cashInPage> {
  String Value = 'USD';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildbottomNavigationBar(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Text(
        'Cash in',
        style: TextStyle(fontFamily: 'bold', color: Colors.black, fontSize: 15),
      ),
      centerTitle: true,
      flexibleSpace: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 17, left: 10),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.chevron_left,
                      color: style.appColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Back',
                      style: TextStyle(
                        fontFamily: 'bold',
                        color: style.appColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle('Enter The Amount'),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _build1DropDownButton(),
                    Text(
                      '\$ 1250.00',
                      style:
                          TextStyle(fontFamily: 'bold', color: style.appColor),
                    ),
                  ],
                ),
              ),
            ),
            _buildTitle('From Bank Account'),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: Center(
                child: Wrap(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => codeScanPage()));
                      },
                      child: _buildCategories(
                          AssetImage('assets/images/k2.png'), 'VietcomBank'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => successPaymentPage()));
                      },
                      child: _buildCategories(
                          AssetImage('assets/images/k2.png'), 'VletinBank'),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => paymentPage()));
                      },
                      child: _buildCategories(
                          AssetImage('assets/images/k2.png'), 'AgriBank'),
                    ),
                    _buildCategories(
                        AssetImage('assets/images/k2.png'), 'ShinhanBank'),
                    _buildCategories(AssetImage('assets/images/k2.png'),
                        'Helth \n & Fitness'),
                    _buildCategories(
                        AssetImage('assets/images/k2.png'), 'ACB Bank'),
                  ],
                ),
              ),
            ),
            _buildTitle('From Bank Account'),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              child: Center(
                child: Wrap(
                  children: [
                    _buildCategories(
                        AssetImage('assets/images/v1.png'), 'VisaCard'),
                    _buildCategories(
                        AssetImage('assets/images/v1.png'), 'MasterCard'),
                    _buildCategories(
                        AssetImage('assets/images/v1.png'), 'JCB Card'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        '$txt',
        style: TextStyle(fontSize: 17, color: Colors.grey),
      ),
    );
  }

  Widget _build1DropDownButton() {
    return Wrap(
      children: [
        DropdownButton<String>(
          value: Value,
          icon: const Icon(Icons.arrow_drop_down),
          elevation: 16,
          style: const TextStyle(color: Colors.black),
          onChanged: (String? newValue) {
            setState(() {
              Value = newValue!;
            });
          },
          items: <String>[
            'USD',
            'Dollar',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildCategories(img, txt) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: img,
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '$txt',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget _buildbottomNavigationBar() {
    return Padding(
      padding:
          const EdgeInsets.only(top: 20.0, bottom: 20, right: 20, left: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => confirmTransactionPage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Send Request',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
