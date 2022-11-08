/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness_app/pages/editProfilePage.dart';
import 'package:fitness_app/pages/settingsPage.dart';
import 'package:fitness_app/pages/termAndConditionsPage.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Color(0xFF1D1F2B),
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFF2D2D39),
      elevation: 0,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Scaffold.of(context).openEndDrawer();
            },
            child: Icon(Icons.close),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.white),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(40),
                  child: FittedBox(
                    child: Image.asset('assets/images/6.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Rahul Jograna',
                style: TextStyle(
                    fontFamily: 'bold', fontSize: 20, color: Colors.white),
              ),
            ),
            Text(
              '@rahuljograna',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => editProfilePage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'My Profile',
                  style: TextStyle(
                      fontSize: 15, color: Colors.grey, fontFamily: 'bold'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => termsAndConditions()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Articles',
                  style: TextStyle(
                      fontSize: 15, color: Colors.grey, fontFamily: 'bold'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => trainerPage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Trainers',
                  style: TextStyle(
                      fontSize: 15, color: Colors.grey, fontFamily: 'bold'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => settingsPage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Settings',
                  style: TextStyle(
                      fontSize: 15, color: Colors.grey, fontFamily: 'bold'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
