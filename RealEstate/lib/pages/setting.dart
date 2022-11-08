/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate/helper/drawer.dart';
import 'package:realestate/helper/style.dart';

class setting extends StatefulWidget {
  setting({Key? key}) : super(key: key);

  static const String page_id = "Setting";

  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: IconButton(
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        icon: Icon(Icons.dehaze_outlined),
      ),
      title: Text(
        'Setting',
        style: headText(),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_on),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 20)
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: appColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
                    child: Text(
                      'Account',
                      style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Column(
                      children: [
                        simpleContainer(Icons.lock, 'Change Password'),
                        simpleContainer(Icons.notifications_on, 'Notification'),
                        simpleContainer(Icons.settings, 'Privacy Setting'),
                        simpleContainer(Icons.credit_card, 'Payment'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.logout,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  'Sign Out',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 20)
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: appColor.withOpacity(0.1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
                    child: Text(
                      'More Options',
                      style: TextStyle(
                          fontFamily: 'medium', fontSize: 16, color: appColor),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Column(
                      children: [
                        switchContainer(Icons.newspaper, 'Newsletter'),
                        switchContainer(Icons.mail, 'Text Message'),
                        switchContainer(Icons.call, 'Phone Call'),
                        textContainer(
                            Icons.currency_rupee, 'Currency', '\$USD'),
                        textContainer(Icons.language, 'language', 'English'),
                        textContainer(Icons.link, 'Currency', 'Facebook,Go'),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget simpleContainer(icon, text) {
    return Row(
      children: [
        Icon(
          icon,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.keyboard_arrow_right,
          ),
        ),
      ],
    );
  }

  Widget switchContainer(icon, text) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Icon(
            icon,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                text,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: appColor,
              value: _switchValue,
              onChanged: (bool? value) {
                setState(() {
                  _switchValue = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget textContainer(icon, text, text2) {
    return Row(
      children: [
        Icon(
          icon,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        Row(
          children: [
            Text(
              text2,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(
              width: 5,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_right,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
