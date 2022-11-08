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
import 'package:music/helper/style.dart';

class setting extends StatefulWidget {
  setting({Key? key}) : super(key: key);

  static const String page_id = "Setting";

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_circle_left_outlined)),
      title: Text(
        'Setting',
        style: headText(),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          heading('General Settings'),
          simpleContainer('Language', 'Auto(english)'),
          simpleContainer(
              'Exclude Folder', 'Select folder to exclude from media screen'),
          heading('Artwork Settings'),
          rowContainer('Show artwork', 'Lady Gaga'),
          rowContainer('Download artwork', 'Lady Gaga'),
          rowContainer('Artwork on lock screen', 'Lady Gaga'),
          heading('Playback Settings'),
          rowContainer('Gapless playback', 'Play sequential tracks seamlessly'),
          rowContainer('Crossfade', 'Crossfade between song : 500ms'),
          heading('About'),
          simpleContainer('Version', 'Music Cioa 0.9 beta'),
          simpleContainer('Developer', '2018-2022 initappz technologiest'),
          simpleContainer('Send feedback', 'Report issue at initappz mail'),
        ],
      ),
    );
  }

  Widget heading(head) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Text(
        head,
        style: TextStyle(color: appColor, fontFamily: 'medium', fontSize: 16),
      ),
    );
  }

  Widget simpleContainer(upr, lwr) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            upr,
            style: TextStyle(fontFamily: 'medium', fontSize: 16),
          ),
          Text(
            lwr,
            style: TextStyle(fontSize: 12, color: Colors.white60),
          ),
        ],
      ),
    );
  }

  Widget rowContainer(dark, light) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dark,
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              Text(
                light,
                style: TextStyle(fontSize: 12, color: Colors.white60),
              ),
            ],
          ),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: appColor,
              value: _switchValue,
              onChanged: (bool value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
