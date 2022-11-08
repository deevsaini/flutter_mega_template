/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor/pages/reportCallPage.dart';
import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';
import 'package:doctor/utilities/constancePage.dart' as style;

class outgoingCallPage extends StatefulWidget {
  outgoingCallPage({Key? key}) : super(key: key);

  static const String pageId = 'outgoingCallPage';

  @override
  State<outgoingCallPage> createState() => _outgoingCallPageState();
}

class _outgoingCallPageState extends State<outgoingCallPage> {
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Incoming call..',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          softWrap: false,
          style: TextStyle(fontSize: 12.0, color: Colors.grey),
        ),
        RippleAnimation(
          repeat: true,
          color: style.itemColor,
          minRadius: 90,
          ripplesCount: 6,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/3.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                )
              ],
            ),
          ),
        ),
        Text(
          'Rahul Saheb Jograna',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          maxLines: 1,
          softWrap: false,
          style: TextStyle(
              fontSize: 18.0, fontFamily: 'bold', color: Colors.black),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => reportCallPage()));
                  },
                  child: _buildIcons(
                      Icons.volume_mute, Colors.grey, Colors.white, 'Mute')),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: _buildIcons(
                      Icons.call_end, Colors.red, Colors.white, 'Cancle')),
              _buildIcons(
                  Icons.whatsapp, Colors.green, Colors.white, 'Text Chat'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildIcons(icn, bgclr, icnclr, txt) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: bgclr,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Icon(
                icn,
                size: 30,
                color: icnclr,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                '$txt',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ],
    );
  }
}
