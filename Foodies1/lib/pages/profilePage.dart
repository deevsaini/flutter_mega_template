/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food1_flutter_marketplace/pages/editProfilePage.dart';
import 'package:food1_flutter_marketplace/pages/loginPage.dart';
import 'package:food1_flutter_marketplace/pages/orderPage.dart';
import 'package:food1_flutter_marketplace/pages/paymentDetailPage.dart';
import 'package:food1_flutter_marketplace/pages/sideMenuPage.dart';
import 'package:food1_flutter_marketplace/utilities/constancePage.dart'
    as style;

class profilePage extends StatefulWidget {
  profilePage({Key? key}) : super(key: key);

  static const String pageId = 'profilePage';

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: myDrawer(),
        key: _scaffoldKey,
        drawerEnableOpenDragGesture: false,
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: sidemenuPage(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
              icon: Icon(Icons.menu),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildProfileContent(),
            _buildContent('Payments Details', Icons.card_giftcard, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => paymentDetailPage()));
            }),
            _buildContent('My Orders', Icons.shopping_bag, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => orderPage()));
            }),
            _buildContent('Notifications', Icons.notifications, () {
              //
            }),
            _buildContent('Inbox', Icons.inbox, () {
              //
            }),
            _buildContent('About us', Icons.help, () {
              //
            }),
            _buildLogoutButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(60),
                  child: FittedBox(
                    child: Image.asset('assets/images/p2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: -10,
                right: -10,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => editProfilePage()));
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                        border: Border.all(color: Colors.white, width: 4),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFFFF9E25),
                            Color(0xFFFF7F30),
                          ],
                        )),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Hi there Amy !',
              style: TextStyle(fontFamily: 'bold', fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              'It is a long established fact that a reader will be distracted',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'bold', fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(txt, icn, onPress) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: style.roundedButtonWithOpacityStyle(),
                    child: Icon(
                      icn,
                      color: style.appColor,
                      size: 17,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '$txt',
                      style: TextStyle(fontFamily: 'bold', fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.arrow_right),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoutButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loginPage()));
            },
            child: Container(
              width: 150,
              padding: EdgeInsets.symmetric(vertical: 13.0),
              decoration: style.contentButtonStyle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(
                        color: Colors.white, fontSize: 16, fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
