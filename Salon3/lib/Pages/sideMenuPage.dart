/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:slon3/Pages/artistProfilePage.dart';
import 'package:slon3/Pages/bookingPage.dart';
import 'package:slon3/Pages/homePage.dart';
import 'package:slon3/Pages/loginPage.dart';
import 'package:slon3/Utilities/constancePage.dart' as style;

class sideMenuPage extends StatefulWidget {
  sideMenuPage({Key? key}) : super(key: key);

  static const String pageId = 'sideMenuPage';

  @override
  State<sideMenuPage> createState() => _sideMenuPageState();
}

class _sideMenuPageState extends State<sideMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          body: _buildBody(),
          bottomNavigationBar: _buildBottomNavigationBar(),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFE4B79),
                  Color(0xFFFD6959),
                ],
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/1.png'),
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.dstATop),
                    fit: BoxFit.cover),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(40),
                        child: FittedBox(
                          child: Image.asset('assets/images/4.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      child: Text(
                        'Shayra Alam',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homePage()));
                    },
                    child: _buildContent(Icons.home, 'Home'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => bookinPage()));
                    },
                    child: _buildContent(Icons.pages, 'My Booking'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                      //
                    },
                    child: _buildContent(Icons.favorite, 'My Favorite'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => artistProfilePage()));
                    },
                    child: _buildContent(Icons.person, 'My Profile'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: _buildContent(Icons.chat, 'Chats'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: _buildContent(Icons.money, 'Payments'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: _buildContent(Icons.notifications, 'Notifications'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: _buildContent(Icons.settings, 'Settings'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: _buildContent(Icons.help, 'Aboust As'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).openEndDrawer();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => loginPage()));
        },
        child: _buildContent(Icons.logout, 'Logout'),
      ),
    );
  }

  Widget _buildContent(icn, txt) {
    return Row(
      children: [
        Icon(
          icn,
          color: style.appColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          '$txt',
          style: TextStyle(color: Colors.black, fontFamily: 'bold'),
        ),
      ],
    );
  }
}
