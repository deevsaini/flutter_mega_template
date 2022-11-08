/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:admin_app/pages/menuPage.dart';
import 'package:admin_app/pages/offerPage.dart';
import 'package:admin_app/pages/orderPage.dart';
import 'package:admin_app/pages/profilePage.dart';
import 'package:admin_app/pages/settingsPage.dart';
import 'package:admin_app/pages/specialMealPage.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/utilities/consultsPage.dart' as style;

class sideMenuPage extends StatefulWidget {
  sideMenuPage({Key? key}) : super(key: key);

  static const String pageId = 'sideMenuPage';

  @override
  State<sideMenuPage> createState() => _sideMenuPageState();
}

class _sideMenuPageState extends State<sideMenuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.grey.shade300, width: 3),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(70),
                    child: FittedBox(
                      child: Image.asset('assets/images/c6.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'Rahul Jograna',
                  style: TextStyle(
                      fontFamily: 'bold', fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => orderPage()));
                },
                child: _buildContent(
                    Icons.book_outlined, style.appColor, 'All Orders'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => menuPage()));
                },
                child: _buildContent(
                    Icons.menu_book_outlined, Colors.black, 'Menu'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => offerPage()));
                },
                child: _buildContent(
                    Icons.card_giftcard_outlined, Colors.black, 'Daily Offers'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => specialMealPage()));
                },
                child: _buildContent(
                    Icons.food_bank, Colors.black, 'Special Meals'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profilePage()));
                },
                child: _buildContent(Icons.person, Colors.black, 'Profile'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => settingsPage()));
                },
                child: _buildContent(
                    Icons.settings_outlined, Colors.black, 'Settings'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContent(icn, icnclr, txt) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              icn,
              color: icnclr,
            ),
          ),
          Text(
            '$txt',
            style: TextStyle(
                fontSize: 15, color: Colors.black, fontFamily: 'bold'),
          ),
        ],
      ),
    );
  }
}
