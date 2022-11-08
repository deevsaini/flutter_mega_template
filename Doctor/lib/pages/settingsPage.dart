/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:doctor_marketplace_app/utilities/constance.dart' as style;

class settingsPage extends StatefulWidget {
  settingsPage({Key? key}) : super(key: key);

  static const String pageId = 'settingsPage';

  @override
  State<settingsPage> createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE7EFFA),
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text(
        'Settings',
        style: TextStyle(fontSize: 20, fontFamily: 'bold', color: Colors.black),
      ),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xFFE7EFFA), Colors.white]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                _buildContent(Colors.pinkAccent.withOpacity(0.5),
                    Icons.notifications, 'Notifications', Icons.book_online),
                _buildContent(Colors.greenAccent.withOpacity(0.5), Icons.chat,
                    'Message Option', Icons.person),
                _buildContent(Colors.blueAccent.withOpacity(0.5), Icons.call,
                    'Call Option', Icons.settings),
                _buildContent(Colors.orangeAccent.withOpacity(0.5),
                    Icons.video_call, 'Video Call Option', Icons.logout),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(bgclr, btnicn, txt, icn) {
    return InkWell(
      child: Container(
        width: double.infinity,
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white12)),
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: bgclr, borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Icon(
                      btnicn,
                      color: Colors.white,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '$txt',
                      style: TextStyle(
                          fontFamily: 'bold',
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: FlutterSwitch(
                width: 50.0,
                height: 30.0,
                value: status,
                activeColor: style.appColor,
                borderRadius: 30.0,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
