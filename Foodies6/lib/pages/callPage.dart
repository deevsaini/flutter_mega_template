/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';
import 'package:foodies_fluttermarketplace_hardik/utilities/constance.dart'
    as style;

class callPage extends StatefulWidget {
  callPage({Key? key}) : super(key: key);

  static const String pageId = 'callPage';

  @override
  State<callPage> createState() => _callPageState();
}

class _callPageState extends State<callPage> {
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
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Incoming call..',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                  Text(
                    'Rahul Saheb Jograna',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'bold',
                        color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
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
                        image: AssetImage('assets/images/p1.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildIcons(Icons.call_end, Colors.red, Colors.white),
              _buildIcons(Icons.call, Colors.green, Colors.white),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildIcons(icn, bgclr, icnclr) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: bgclr,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: Icon(
              icn,
              size: 30,
              color: icnclr,
            ),
          ),
        ],
      ),
    );
  }
}
