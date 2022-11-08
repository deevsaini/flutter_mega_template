/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/notificationPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/refinePage.dart';
import 'package:shop1_flutter_marketplace_hardik/utilities/constancePage.dart'
    as style;

class settingPage extends StatefulWidget {
  settingPage({Key? key}) : super(key: key);

  static const String pageId = 'settingPage';

  @override
  State<settingPage> createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
        appBar: _buildAppBar(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.chevron_left,
          color: Colors.black,
        ),
      ),
      title: Text(
        'Settings',
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                _buildSecondContentItem(
                    Icon(Icons.shop), 'Shop in', 'UNITED STATE'),
                _buildSecondContentItem(Icon(Icons.money), 'Currency', 'USD'),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => refinePage()));
                    },
                    child: _buildSecondContentItem(
                        Icon(Icons.zoom_out), 'Sizes', 'US')),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => notificationPage()));
                  },
                  child: _buildSecondContentItem(
                      Icon(Icons.notifications), 'Notifications', ''),
                ),
                _buildSecondContentItem(Icon(Icons.face), 'Face id', ''),
                _buildSecondContentItem(Icon(Icons.man), 'Shop', 'MEN'),
                _buildSecondContentItem(
                    Icon(Icons.screenshot_rounded), 'Screensort', ''),
                _buildSecondContentItem(
                    Icon(Icons.rule), 'Term & Conditions', ''),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSecondContentItem(icn, txt1, txt2) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: icn,
                    ),
                    SizedBox(
                      width: 130,
                      child: Text(
                        '$txt1',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: Text(
                        '$txt2',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
